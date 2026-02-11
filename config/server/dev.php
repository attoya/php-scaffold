<?php

#
# Development Server Settings
#

#
# Error Handling
#
error_reporting(E_ALL & ~E_NOTICE);



#
# Timezone
#
date_default_timezone_set('America/Phoenix');



#
# Server
#
const SERVER_CURRENT = 'dev'; # Server running this instance
const SERVER_MASTER  = 'dev'; # Dedicated Master in Group
const SERVER_GROUP   = [     # All servers in this group/datacenter
  'dev',
];



#
# Database
#
const DATABASE = [
  'NAME' => 'attoya_scaffold',
  'USER' => 'root',
  'PASS' => 'password',
  'HOST' => 'localhost',
  'PORT' => null,
  'TLS'  => [
    'ENABLED'     => false,
    'CLIENT_KEY'  => SYSTEM_ROOT . '/config/tls/mysql-client-key.pem',
    'CLIENT_CERT' => SYSTEM_ROOT . '/config/tls/mysql-client-cert.pem',
    'CA_CERT'     => SYSTEM_ROOT . '/config/tls/mysql-ca-cert.pem',
  ],
];



#
# Mail SMTP
#
const SMTP = [
  'USER' => '',
  'PASS' => '',
  'HOST' => '',
  'PORT' => '587',
];


