{{flutter_js}}
{{flutter_build_config}}

(function () {
  const loading = document.getElementById('loading');
  const loadingText = loading?.querySelector('.loading-text');
  const progress = document.getElementById('progress');

  function setLoadingMessage(message) {
    if (loadingText) {
      loadingText.textContent = message;
    }
  }

  function setProgress(percent) {
    if (progress) {
      progress.style.width = percent + '%';
    }
  }

  function hideLoading() {
    if (loading) {
      loading.classList.add('hide');
    }
    document.body.style.overflow = '';
  }

  setProgress(10);

  _flutter.loader.load({
    onEntrypointLoaded: async function (engineInitializer) {
      try {
        setProgress(60);
        setLoadingMessage('Initializing engine...');
        const appRunner = await engineInitializer.initializeEngine();

        setProgress(85);
        setLoadingMessage('Starting app...');
        await appRunner.runApp();

        setProgress(100);
      } finally {
        hideLoading();
      }
    },
  });
})();
