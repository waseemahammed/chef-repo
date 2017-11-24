#
# Cookbook Name:: host_file_update
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
hosts = search(:node, "*:*")
template "/etc/hostname" do
source "hosts.erb"
owner "root"
group "root"
mode 0644
variables(
    :hosts => hosts,
    :hostname => node[:hostname],
    :fqdn => node[:fqdn]
)
end
