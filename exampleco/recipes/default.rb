#
# Cookbook:: exampleco
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

site 'set home page' do
  #homepage '<h1>Welcome to the Example Co. website!</h1>'
  action :create
end

execute 'not-if-example' do
  command '/usr/bin/echo "10.0.2.1 webserver01" >> /etc/hosts'
  not_if { has_host_entry? }
end
