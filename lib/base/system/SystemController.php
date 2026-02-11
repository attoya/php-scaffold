<?php


# Config Include
include_once __DIR__ . '/../../../config/init.php' ;

# Attoya Include
include_once __DIR__ . '/../../../lib/vendor/attoya/system/AttoyaSystemController.php';




#
# System Controller Class
#
class SystemController extends AttoyaSystemController {




  #
  # Init
  #
  public static function init() {

    $url_pattern = [];

    # URL Pattern
    include_once SYSTEM_ROOT . '/config/url_pattern.php';
    parent::setUrlPattern($url_pattern);

    parent::init();

  }




}



