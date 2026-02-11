<?php


# Lib Include
include_once SYSTEM_ROOT . '/lib/base/view/BaseView.php';




#
# Core About View Class
#
class CoreAboutView extends BaseView {




  #
  # Init
  #
  public function init() {

    parent::init();

    $this->template_name = 'core/template/about.tpl';

  }




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'page'    => 'About',
    ];

    return $response;

  }




}


