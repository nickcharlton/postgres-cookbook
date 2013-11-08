#
# Cookbook Name:: postgres
# Recipe:: ruby
#
# Copyright (c) 2013 Nick Charlton
# 
# MIT Licensed
#

# make sure the headers are available
package 'libpq-dev'

# install the gem
gem_package 'pg'

