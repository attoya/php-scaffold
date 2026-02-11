<?php


# Lib Include
include_once SYSTEM_ROOT . '/lib/base/view/BaseView.php';




#
# Core Index View Class
#
class CoreIndexView extends BaseView {




  #
  # Init
  #
  public function init() {

    parent::init();

    $this->template_name = 'core/template/index.tpl';

  }




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'subtitle' => 'Scaffold Project',
      'section'  => '', # Don't show next to logo, just on head title
    ];

    return $response;

  }




}


