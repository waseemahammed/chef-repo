#
# Cookbook Name:: openswan
# Recipe:: default
#
# Copyright 2016, Waseem Ahammed
#
# All rights reserved - Do Not Redistribute

#This cookbook installs openswan and starts ipsec service.

execute "apt-get update" do
  command "apt-get update && touch /etc/apt/openswan_update_completed"
  not_if "ls /etc/apt/openswan_update_completed"
end

package "openswan" do
  action :install
end

["ppp", "xl2tpd"].each do |p|
  package p
end

service "xl2tpd" do
  supports :status => true, :restart => true, :start => true, :stop => true
end

service "ipsec" do
  supports :status => true, :restart => true, :start => true, :stop => true
end
