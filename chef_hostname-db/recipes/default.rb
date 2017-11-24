#
# Cookbook Name:: chef_hostname-db
# Recipe:: default
#
# Copyright 2016, WASEEM AHAMMED
#
# All rights reserved - Do Not Redistribute
#

hostname "db.zenprod.com"

file "/tmp/DBserver" do
  content node["dbserver"]
end

#file "/tmp/bin-user-VirtualBox" do
#  content `/bin/user-VirtualBox`
#end

file "/tmp/DBserver" do
  content node["DBserver"]
end

file "/tmp/DBserver" do
  content node["DBserver"]
end

file "/tmp/db.zenprod.com" do
  content node["db.zenprod.com"]
end

