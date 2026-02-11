





class MenuTopbar extends AttoyaMenuTopbar {




  /**
   * Constructor
   */
  constructor(options) {

    // Set Options
    // options = default_empty_object(options, {
    //   wrapper : $('.menu-topbar .ref'),
    //   origin  : $('.menu-topbar'),
    //   prefix  : 'ref_',
    // });

    super(options);

  }




}






/**
 * Create Object with wrapper
 */
$(document).ready(function() {

  // Delayed fallback to init ref menu if no view class defined
  componentAttoyaMenuTopbar = new MenuTopbar();

});



