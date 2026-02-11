<?php


#
# Deployment Date
# @future load from database
#
const DEPLOY_DATETIME = '2026-02-11 01:00:00 AM';

# Static Cachless uses deployment date or now depending on type.
# This is set in your config_environment.php file.
define('CACHELESS', '?d=' . strtotime(CACHELESS_TYPE == 'deploy' ? DEPLOY_DATETIME : 'now'));



