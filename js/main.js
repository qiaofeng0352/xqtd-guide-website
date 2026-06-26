(function () {
  'use strict';

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
      img.addEventListener('load', function () {
        var placeholder = this.parentElement.querySelector('.placeholder-text');
        if (placeholder) placeholder.style.display = 'none';
        var wrap = this.closest('.img-placeholder');
        if (wrap) wrap.classList.add('has-image');
      });
      img.addEventListener('error', function () {
        this.style.display = 'none';
      });
    });
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
