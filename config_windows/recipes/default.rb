#
# Cookbook Name:: config_windows
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file 'C:\Users\Administrator\chef-repo\settings.ini' do
  content 'greeting=hello world'
end

powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  guard_interpreter :powershell_script
  not_if "(Get-WindowsFeature -Name Web-Server).Installed"
end

service 'w3svc' do
  action [:enable, :start]
end

directory 'C:\Users\Administrator\chef-repo\windows' do
  rights :full_control, 'Administrator'
end


# Install SQL Server.
include_recipe 'sql_server::server'
include_recipe 'config_windows::database'