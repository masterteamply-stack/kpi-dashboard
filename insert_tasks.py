
import urllib.request, json, os, sys

URL = os.environ["SUPABASE_URL"]
KEY = os.environ["SUPABASE_ANON_KEY"]

headers = {
    "apikey": KEY,
    "Authorization": f"Bearer {KEY}",
    "Content-Type": "application/json",
    "Accept": "application/json"
}

def sb_get(path, params=""):
    req = urllib.request.Request(f"{URL}/rest/v1/{path}{params}", headers=headers)
    with urllib.request.urlopen(req) as r:
        return json.load(r)

# owners
owners = {o["name"]: o["id"] for o in sb_get("owners", "?select=id,name")}
print("Owners:", list(owners.keys()))

# kpis
kpis = {k["kpi_key"]: k["id"] for k in sb_get("kpis", "?select=id,kpi_key")}
print("KPIs:", list(kpis.keys()))

# 기존 tasks (중복 방지용)
existing_raw = sb_get("tasks", "?select=title,kpi_id,started_at&limit=1000")
existing = set()
for t in existing_raw:
    key = (str(t.get("kpi_id",""))[:8], (t.get("started_at") or "")[:7], (t.get("title") or "")[:50])
    existing.add(key)
print(f"Existing tasks: {len(existing_raw)}")

# tasks_to_insert.json 읽기
with open("tasks_to_insert.json", encoding="utf-8") as f:
    tasks_data = json.load(f)

# 변환 및 중복 제거
to_insert = []
skip = 0
for t in tasks_data:
    kpi_id   = kpis.get(t["kpi_key"])
    owner_id = owners.get(t["owner_name"])
    if not kpi_id:
        print(f"  SKIP (no kpi): {t['kpi_key']} | {t['title'][:30]}")
        skip += 1
        continue
    
    # 중복 체크
    dup_key = (str(kpi_id)[:8], (t.get("started_at") or "")[:7], t["title"][:50])
    if dup_key in existing:
        skip += 1
        continue
    
    row = {
        "title":            t["title"],
        "kpi_id":           kpi_id,
        "owner_id":         owner_id,
        "quarter":          t.get("quarter"),
        "region":           t.get("region", "KR"),
        "status":           t.get("status", "todo"),
        "priority":         t.get("priority", "medium"),
        "progress":         t.get("progress", 0),
        "allocated_budget": 0,
        "spend":            0,
        "revenue":          0,
        "leads":            0,
        "started_at":       t.get("started_at"),
        "due_date":         t.get("due_date"),
        "notes":            t.get("notes"),
        "task_type":        t.get("task_type"),
    }
    # None 값 제거
    row = {k: v for k, v in row.items() if v is not None}
    to_insert.append(row)

print(f"To insert: {len(to_insert)} | Skipped: {skip}")

if not to_insert:
    print("Nothing to insert!")
    sys.exit(0)

# Batch insert (50개씩)
batch_size = 50
total_inserted = 0
for i in range(0, len(to_insert), batch_size):
    batch = to_insert[i:i+batch_size]
    payload = json.dumps(batch).encode("utf-8")
    req = urllib.request.Request(
        f"{URL}/rest/v1/tasks",
        data=payload,
        method="POST",
        headers={**headers, "Prefer": "return=minimal"}
    )
    try:
        with urllib.request.urlopen(req) as r:
            total_inserted += len(batch)
            print(f"  Inserted batch {i//batch_size+1}: {len(batch)} tasks")
    except Exception as e:
        body = e.read().decode() if hasattr(e, "read") else str(e)
        print(f"  ERROR batch {i//batch_size+1}: {body[:200]}")

print(f"Done! Total inserted: {total_inserted}")
