#
# Cookbook:: attribute_example
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#Defining the attributes.
platform = node['platform']
hostname = node['hostname']
ip = node['ipaddress']


package 'httpd' do
	action :install
end

service 'httpd' do
	action [:enable, :start]
end

#file '/var/www/html/index.html' do
#	content "Following are my machine details..
#		IP Address : #{ip}
#		Hostname   : #{hostname}
#		Platform   : #{platform}"
#end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end
	
