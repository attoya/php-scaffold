#!/bin/bash
trap "kill 0" EXIT

# Get Params
mode=$1
app=$2


# Default Mode
if [ -z "$mode" ]; then
  mode="touch"
fi


# Clear terminal and log
clear
if [ $mode = 'apache' ]; then

  cat /dev/null > ./log/apache-error.log

else

  cat /dev/null > ./log/apache-common.log
  cat /dev/null > ./log/apache-error.log
  cat /dev/null > ./log/console.log
  cat /dev/null > ./log/exception.log
  cat /dev/null > ./log/cron.log
  cat /dev/null > ./log/sql.log

fi


# Restart
if [ $mode = 'restart' ]; then

  echo 'System Debug: Restart'
  echo ' '

  echo 'Clearing Memcache...'
  service memcached restart
  echo 'Done'
  echo ' '

  echo 'Clearing Template Cache...'
  rm ./cache/template/*.php
  echo 'Done'
  echo ' '

  echo 'Restart Apache...'
  /etc/init.d/apache2 restart
  echo 'Done'
  echo ' '

fi


# Reload
if [ $mode = 'reload' ]; then

  echo 'System Debug: Reload'
  echo ' '

  echo 'Clearing Memcache...'
  service memcached restart
  echo 'Done'
  echo ' '

  echo 'Clearing Template Cache...'
  rm ./cache/template/*.php
  echo 'Done'
  echo ' '

  echo 'Restart Apache...'
  /etc/init.d/apache2 restart
  echo 'Done'
  echo ' '

fi


# Flush
if [ $mode = 'flush' ]; then

  echo 'System Debug: Flush'
  echo ' '

  echo 'Clearing Memcache...'
  service memcached restart
  echo 'Done'
  echo ' '

fi


# Display Log
if [ $mode = 'apache' ]; then

  echo 'Apache Debug: Ready'
  tail -f ./log/apache-error.log

else


  echo 'System Debug: Ready'
  tail -f ./log/console.log

fi


