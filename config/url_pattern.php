<?php

#
# URL Patterns
# @note List by order in app directory
#

# APP URL Include
include_once __DIR__ . '/../app/core/url/init.php';
include_once __DIR__ . '/../app/legal/url/init.php';
include_once __DIR__ . '/../app/article/url/init.php';


$url_pattern = [

  'core'       => $core_url_pattern,
  'legal'      => $legal_url_pattern,
  'article'    => $article_url_pattern,

];

