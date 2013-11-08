#
# Cookbook Name:: postgres
# Recipe:: server
#
# Copyright (c) 2013 Nick Charlton
# 
# MIT Licensed
#

include_recipe 'postgres::client'
include_recipe 'postgres::ruby'

# install all of the packages a server would want
%w{postgresql postgresql-contrib}.each do |pkg|
  package pkg
end

# add a password to the postgres user (database super user)


