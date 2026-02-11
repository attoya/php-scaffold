





class MarkdownTextareaFieldForm extends AttoyaMarkdownTextareaFieldForm {




  /**
   * Initializes Class
   */
  init() {

    super.init();

  }




}






/**
 * Create Object with wrapper
 */
$(document).ready(function() {

  // Load each field instance
  $('.markdown-textarea-field').each(function() {
    new MarkdownTextareaFieldForm({
      wrapper : $(this),
    });
  })

});





