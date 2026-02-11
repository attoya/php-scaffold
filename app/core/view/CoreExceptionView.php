<?php


# Lib Include
include_once SYSTEM_ROOT . '/lib/base/view/BaseView.php';




#
# Core Exception View Class
#
class CoreExceptionView extends BaseView {




  #
  # Init
  #
  public function init() {

    parent::init();

    $this->template_name = 'core/template/exception.tpl';

  }




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'page'    => 'Exception',
      'section' => '',
    ];

    return $response;

  }




}


