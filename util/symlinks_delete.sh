#!/bin/bash
# ONLY EDIT WITH NOTEPAD++ AND REMOVE ALL LE RETURNS (\r)
#
# Delete Symlinks
#

# Static
rm interface/apache/static
rm cache/static/vendor

# App Static
rm cache/static/core
rm cache/static/legal
rm cache/static/article

# Data
rm cache/static/data
