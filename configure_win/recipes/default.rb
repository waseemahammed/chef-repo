#
# Cookbook Name:: configure_win
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Add SMTP Feature with powershell provider

#windows_feature "smtp-server" do
#  action :install
#  all true
#  provider :windows_feature_powershell
#end

#Installing IIS and w3svc services
powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  guard_interpreter :powershell_script
  not_if "(Get-WindowsFeature -Name Web-Server).Installed"
end

#service 'w3svc' do
#  action [:enable, :start]
#end

