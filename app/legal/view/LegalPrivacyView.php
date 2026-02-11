<?php


# Lib Include
include_once SYSTEM_ROOT . '/lib/base/view/BaseView.php';




class LegalPrivacyView extends BaseView {




  #
  # Init
  #
  public function init() {

    parent::init();

    $this->template_name = 'legal/template/privacy.tpl';

  }




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'page'    => 'Legal',
      'href'    => '/legal',
    ];

    return $response;

  }




}


