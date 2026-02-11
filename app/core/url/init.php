<?php


# URL Include
include_once __DIR__ . '/core_root_url.php';
include_once __DIR__ . '/core_system_url.php';
include_once __DIR__ . '/core_redirect_url.php';


$core_url_pattern = array_merge(
  $core_root_url,
  $core_system_url,
  $core_redirect_url
);



