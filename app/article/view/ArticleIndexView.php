<?php


# Lib Include
include_once SYSTEM_ROOT . '/lib/base/view/BaseView.php';




#
# Article Index View Class
#
class ArticleIndexView extends BaseView {




  #
  # Init
  #
  public function init() {

    parent::init();

    $this->template_name = 'article/template/index.tpl';

  }




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'page'    => 'Article',
      'section' => '',
    ];

    return $response;

  }




}



