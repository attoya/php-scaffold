#!/bin/bash
# ONLY EDIT WITH NOTEPAD++ AND REMOVE ALL LE RETURNS (\r)
#
# Create Symlinks
#

# Static
ln -sn ../../cache/static/ interface/apache/
ln -sn ../../lib/vendor/static cache/static/vendor

# App Static
ln -sn ../../app/core/static cache/static/core
ln -sn ../../app/legal/static cache/static/legal
ln -sn ../../app/article/static cache/static/article

# Data
ln -sn ../../data cache/static/data

