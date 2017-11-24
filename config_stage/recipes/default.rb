#
# Cookbook Name:: config_stage
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"

file 'home/user1/stage.txt' do
	content 'This is a staging environment'
end

#Creating a directory on a node

directory '/home/user1/stage' do
	owner 'user1'
	group 'user1'
	mode '0744'
	action :create
end
