<?php

#
# Production Environment Settings
#

#
# Environment
#
const ENVIRONMENT    = 'prod';
const CACHELESS_TYPE = 'deploy';



#
# Development
#
const DEV_EMAIL = null;



#
# Public
#
const PUBLIC_PORT       = '';
const PUBLIC_URL        = 'https://scaffold.attoya.com/';
const PUBLIC_STATIC_URL = '/static';



#
# Private
#
const SYSTEM_ROOT = '/srv/site/attoya/scaffold';



#
# Vendor
#
const VENDOR_ROOT = SYSTEM_ROOT . '/lib/vendor';



#
# Debug Mode
#
const DEBUG            = true;
const DEBUG_DEV        = true;
const DEBUG_VIEW       = false;
const DEBUG_AJAX       = false;
const DEBUG_FORM       = false;
const DEBUG_MODEL      = false;
const DEBUG_TRIGGER    = false;
const DEBUG_REDIRECT   = false; # Disables PHP & JS redirects/reloads
const DEBUG_DATABASE   = false;
const DEBUG_EXCEPTION  = false; # Display exception on output
const DEBUG_PERMISSION = false;
const DEBUG_FRAMEWORK  = false;



