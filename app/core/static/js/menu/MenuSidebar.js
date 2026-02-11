





class MenuSidebar extends AttoyaMenuSidebar {




  /**
   * Constructor
   */
  constructor(options) {

    // Set Options
    // options = default_empty_object(options, {
    //   wrapper      : $('.menu-sidebar'),
    //   origin       : $('body'),
    //   init_lock    : false, // We don't want to trigger a lock on the body
    //   accordionize : true,
    //   speed        : 300,
    //   toggle_sign  : "<b class='fas fa-circle'></b>",
    // });

    super(options);

  }




  /**
   * Initializes App Menus
   */
  init_app_menus() {

    // Extended Sidebar Menus
    // this.IssueMenuSidebar = new IssueMenuSidebarComponent();

  }




}






/**
 * Page Load
 */
$(document).ready(function() {



  // Initial load fit page to sidebar
  setTimeout(function() {

    // Set skinny if saved as cookie
    if(get_cookie('menu-sidebar-skinny') != 'true') {
      $('#skin-select #toggle').addClass('active');
    }

    // Trigger click
    $("#skin-select #toggle").trigger('click');

  }, 10)


  /**
   * Create Object with wrapper
   */
  new MenuSidebar();


});



