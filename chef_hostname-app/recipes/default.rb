#
# Cookbook Name:: chef_hostname-app
# Recipe:: default
#
# Copyright 2016, WASEEM AHAMMED
#
# All rights reserved - Do Not Redistribute
#

hostname "app.zenprod.com"

file "/tmp/Appserver" do
  content node["appserver"]
end

file "/tmp/Appserver" do
  content node["Appserver"]
end

file "/tmp/Appserver" do
  content node["Appserver"]
end

file "/tmp/app.zenprod.com" do
  content node["app.zenprod.com"]
end

