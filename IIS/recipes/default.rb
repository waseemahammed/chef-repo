#
# Cookbook Name:: IIS
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

powershell_script 'Install IIS' do
  code <<-EOH
  Import-Module ServerManager
  Add-WindowsFeature Web-Server
  EOH
  guard_interpreter :powershell_script
  not_if "Import-Module ServerManager; (Get-WindowsFeature -Name Web-Server).Installed"
end



