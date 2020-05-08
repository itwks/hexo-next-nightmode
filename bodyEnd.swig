<script>
  ((w, d) => {
    'use strict';

    {%- if config.next_nightmode.enable %}
      // d.documentElement.className = 'darkScheme';
      const btn = d.querySelector('.night-btn');

      var clickAction = function () {
        d.documentElement.classList.toggle('darkScheme');
        if ( d.documentElement.classList.contains('darkScheme') ) {
          localStorage.setItem('Scheme', 'Dark');
        } else {
          localStorage.removeItem('Scheme');
        }
      }

      const hasClickListener = localStorage.getItem('hasClickListener');
      if(!hasClickListener){
        btn.addEventListener('click', clickAction, false);
        localStorage.setItem('hasClickListener', true);
      }

    {%- endif %}
    {%- if config.next_nightmode.alpha or theme.next_nightmode.alpha %}
      const systemSchemeQuery = w.matchMedia('(prefers-color-scheme: dark)');
      systemSchemeQuery.addListener(e => {
        var enable = systemSchemeQuery.matches;
        if (enable) {
          d.documentElement.className += ' darkScheme';
        } else {
          d.documentElement.className -= ' darkScheme';
        }
        {%- if theme.next_nightmode.debugger %}
          return console.log(`NexT Night Alpha Mode is ${enable ? '🌒 On ' : '☀️ Off'} - triggered by device scheme change.`);
        {%- endif %}
      });
    {%- endif %}
  })(window, document);
</script>
