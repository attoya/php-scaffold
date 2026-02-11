<?php


# Lib Include
include_once SYSTEM_ROOT . '/lib/base/view/BaseView.php';




#
# Core Error View Class
#
class CoreErrorView extends BaseView {




  #
  # Init
  #
  public function init() {

    parent::init();

    $this->template_name = 'core/template/error.tpl';

  }




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'page'    => 'Error',
      'section' => '',
    ];

    return $response;

  }




}


