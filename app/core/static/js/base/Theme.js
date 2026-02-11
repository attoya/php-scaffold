





/**
 * Init Zurb Foundation
 */
$(document).foundation();




(function ($) {

  'use strict';

  $('menu').localScroll({
    hash:true, onAfterFirst: function() {
      $('html, body').scrollTo( {top:'-=25px'}, 'fast' );
    }
  });

  /* Move elements down to give environment header room */
  if(is_empty_jquery($('environment')) == false) {
    if($('environment').attr('value') != 'prod') {
      $('body').attr('style', 'top:34px;');
      $('menu').attr('style', 'top:34px;');
      $('loader').attr('style', 'top:34px;');
    }
  }


})(jQuery);




/**
 * Close Preloader
 * @notice Needs to be the last thing done
 */
setTimeout(function() {

  $('preloader').fadeOut({
    'complete' : function() {
      this.remove();
    }
  });

}, 100);





