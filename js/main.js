(function () {
  'use strict';

  window._hmt = window._hmt || [];
  (function () {
    var hm = document.createElement('script');
    hm.src = 'https://hm.baidu.com/hm.js?f1ab4249377966629a8883050444d09c';
    hm.async = true;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(hm, s);
  })();

  window.trackClick = function (label) {
    if (typeof gtag === 'function') {
      gtag('event', 'click', { event_category: 'promo', event_label: label });
    }
    if (typeof _hmt !== 'undefined' && _hmt.push) {
      _hmt.push(['_trackEvent', 'promo', 'click', label]);
    }
  };

  function initImages() {
    document.querySelectorAll('.card-cover, .article-img').forEach(function (img) {
      if (img.complete && img.naturalWidth > 0) {
        markImageLoaded(img);
      }
      img.addEventListener('load', function () {
        markImageLoaded(this);
      });
    });
  }

  function markImageLoaded(img) {
    var placeholder = img.parentElement.querySelector('.placeholder-text');
    if (placeholder) placeholder.style.display = 'none';
    var wrap = img.closest('.img-placeholder');
    if (wrap) wrap.classList.add('has-image');
    var cardImg = img.closest('.card-img');
    if (cardImg) cardImg.classList.add('has-image');
  }

  document.addEventListener('DOMContentLoaded', function () {
    initImages();

    var toggle = document.querySelector('.nav-mobile-toggle');
    var navLinks = document.getElementById('navLinks');

    if (toggle && navLinks) {
      document.addEventListener('click', function (e) {
        if (!toggle.contains(e.target) && !navLinks.contains(e.target)) {
          navLinks.classList.remove('active');
        }
      });
    }

    var currentPath = window.location.pathname.replace(/\/$/, '') || '/';
    document.querySelectorAll('.nav-links a').forEach(function (link) {
      var href = link.getAttribute('href').replace(/\/$/, '') || '/';
      if (href === currentPath || (href !== '/' && currentPath.endsWith(href))) {
        link.classList.add('active');
      } else {
        link.classList.remove('active');
      }
    });
  });
})();
