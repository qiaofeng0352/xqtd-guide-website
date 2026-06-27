/**
 * 百度联盟广告 — 审核通过后填入 cpro_id 并设 enabled: true
 * 申请：https://union.baidu.com
 */
(function () {
  'use strict';

  window.BAIDU_UNION_CONFIG = {
    enabled: false,
    slots: {
      sidebar: '',
      article: '',
      home: ''
    }
  };

  function injectBaiduAd(container, cproId) {
    if (!cproId || !container) return;
    var placeholder = container.querySelector('.baidu-ad-placeholder');
    if (placeholder) placeholder.style.display = 'none';
    window.cpro_id = cproId;
    var s = document.createElement('script');
    s.type = 'text/javascript';
    s.src = 'https://cpro.baidustatic.com/cpro/ui/c.js';
    s.async = true;
    container.appendChild(s);
  }

  document.addEventListener('DOMContentLoaded', function () {
    var cfg = window.BAIDU_UNION_CONFIG;
    if (!cfg || !cfg.enabled) return;

    document.querySelectorAll('[data-baidu-ad]').forEach(function (el) {
      var key = el.getAttribute('data-baidu-ad');
      if (cfg.slots[key]) injectBaiduAd(el, cfg.slots[key]);
    });
  });
})();
