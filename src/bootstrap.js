// We only import the bits we need. This means our minified bootstrap.js is just 19kB

import 'bootstrap-sass/assets/javascripts/bootstrap/transition.js';
// import 'bootstrap-sass/assets/javascripts/bootstrap/alert.js';
import 'bootstrap-sass/assets/javascripts/bootstrap/button.js';
// import 'bootstrap-sass/assets/javascripts/bootstrap/carousel.js';
import 'bootstrap-sass/assets/javascripts/bootstrap/collapse.js';
import 'bootstrap-sass/assets/javascripts/bootstrap/dropdown.js';
import 'bootstrap-sass/assets/javascripts/bootstrap/modal.js';
// import 'bootstrap-sass/assets/javascripts/bootstrap/tooltip.js';
// import 'bootstrap-sass/assets/javascripts/bootstrap/popover.js';
import 'bootstrap-sass/assets/javascripts/bootstrap/scrollspy.js';
import 'bootstrap-sass/assets/javascripts/bootstrap/tab.js';
// import 'bootstrap-sass/assets/javascripts/bootstrap/affix.js';

(function($) {
  $.fn.button.noConflict();
})(jQuery);
