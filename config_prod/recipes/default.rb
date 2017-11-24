#
# Cookbook Name:: config_prod
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"

file '/home/user/production.txt'do
	content 'This is a production environment'
end

#Creating a directory on a node

directory '/home/user/production' do
	owner 'user'
	group 'user'
	mode '0744'
	action :create
end