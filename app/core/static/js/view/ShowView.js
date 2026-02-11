





class ShowView extends AttoyaShowView {




  /**
   * Constructor
   */
  constructor(options) {

    // Set Options
    // options = default_empty_object(options, {
    //   wrapper     : $('.page-view'),
    //   init_reload : true,
    // });

    super(options);

  }




  /**
   * Initializes Class
   */
  init() {

    super.init();

    // Initial load called as a reload. Use jQuery object to check length vs empty.
    // if(this.find('.tabs-content .list').length > 0 && this.options.init_reload == true) {
    //   this.find('.tabs-content .list').trigger('reload');
    // }

  }




}





