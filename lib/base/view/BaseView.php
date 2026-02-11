<?php


# Attoya Include
include_once VENDOR_ROOT . '/attoya/view/AttoyaView.php';




#
# Base View Class
#
class BaseView extends AttoyaView {




  #
  # Render Data
  #
  function render_data($response = []) {

    $response = parent::render_data($response);

    $response['title'] = [
      'site' => BRAND_NAME,
    ];

    $response['footer'] = [
      'brand'    => BRAND_NAME,
      'corp'     => BRAND_CORP,
      'corp_url' => BRAND_CORP_URL,
    ];

    return $response;

}




}



