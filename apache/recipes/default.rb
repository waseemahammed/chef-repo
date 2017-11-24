#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


file '/home/ubuntu/sample.txt' do
  content 'welcomr to chef'
  owner 'ubuntu'
  group 'ubuntu'
  action :create
end

