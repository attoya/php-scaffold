<?php


# Lib Include
include_once SYSTEM_ROOT . '/lib/base/view/BaseView.php';




#
# Core Contact View Class
#
class CoreContactView extends BaseView {




  #
  # Init
  #
  public function init() {

    parent::init();

    $this->template_name = 'core/template/contact.tpl';

  }




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'page'    => 'Contact',
      'section' => '',
    ];

    $response['form'] = [
      'name'     => 'asdf_name',
      'email'    => 'asdf_email',
      'phone'    => 'asdf_phone',
      'comments' => 'asdf_comments',
    ];


    return $response;

  }




}


