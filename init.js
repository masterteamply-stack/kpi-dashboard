/* dashboard-init v20260617051148 - CDN 캐시 우회용 별도 초기화 파일 */
(function() {
  var SUPA_URL = 'https://oehfptlkpqlpruaqogkk.supabase.co';
  var SUPA_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9laGZwdGxrcHFscHJ1YXFvZ2trIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzk4MjEyMzIsImV4cCI6MjA5NTM5NzIzMn0.8ssyrGtrrE0guYErEezDpsy7ckq6fPtke9ffxCj6FL0';
  var _retries = 0;

  function _tryInit() {
    // createClient, state, refreshDashboard 모두 준비될 때까지 대기
    if (typeof createClient === 'undefined' || typeof state === 'undefined' || typeof refreshDashboard === 'undefined') {
      if (_retries++ < 50) setTimeout(_tryInit, 200);
      else console.error('dashboard-init: 초기화 타임아웃');
      return;
    }

    // state.sb 초기화
    if (!state.sb) {
      try {
        state.sb = createClient(SUPA_URL, SUPA_KEY);
        console.log('✅ dashboard-init v20260617051148: state.sb 초기화');
      } catch(e) {
        console.error('dashboard-init createClient 오류:', e);
        return;
      }
    }

    // avgProg 패치 (status 기반)
    if (typeof computeSummary === 'function' && !window.__avgProgPatched) {
      var _orig = computeSummary;
      window.computeSummary = function(tasks, kpis) {
        var r = _orig(tasks, kpis);
        var t = (tasks || []).length;
        if (t > 0) {
          var dn = tasks.filter(function(x) { return x.status === 'done'; }).length;
          var ip = tasks.filter(function(x) { return x.status === 'in_progress'; }).length;
          var bl = tasks.filter(function(x) { return x.status === 'blocked'; }).length;
          r.avgProg = Math.min(100, Math.round((dn * 100 + ip * 50 + bl * 25) / t));
        }
        return r;
      };
      window.__avgProgPatched = true;
      console.log('✅ dashboard-init v20260617051148: avgProg 패치');
    }

    // 데이터 로드
    if (!state.tasks || state.tasks.length === 0) {
      refreshDashboard().catch(function(e) {
        console.error('dashboard-init refreshDashboard 오류:', e);
      });
    }
  }

  // DOM 로드 후 실행
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', function() { setTimeout(_tryInit, 300); });
  } else {
    setTimeout(_tryInit, 300);
  }
})();
