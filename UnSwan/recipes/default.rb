#
# Cookbook Name:: UnSwan
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


#Recipe to Unisntall Openswan in Ubuntu

#Uninstall Openswan
execute "Unswan" do
  command "sudo apt-get remove openswan -y"
end

#Flush iptables
execute "flush" do
  command "sudo iptables -F"
end

#Restore sysctl.conf
execute "dpkg" do
  command "sudo dpkg -S /etc/sysctl.conf"
end

execute "bad" do
  command "sudo mv /etc/sysctl.conf /etc/sysctl.conf.bad"
end

execute 'reinstall' do
  command 'sudo apt-get -o Dpkg::Options::="--force-confmiss" install --reinstall procps'
end

