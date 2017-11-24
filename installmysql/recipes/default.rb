#
# Cookbook Name:: installmysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

#execute 'apt-get install mysql-server-5.5 --yes' do
#  command 'apt-get install mysql-server-5.5 --yes'
#end

apt_package 'mysql-server-5.6' do
  action :install
end
