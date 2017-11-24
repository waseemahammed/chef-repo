#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#add a user called chef with password chef

user 'chef' do
  comment 'Chef challenge user'
  password 'chef'
  home '/home/chef'
  username 'chef'
end

service 'sshd' do
  action :nothing
end

template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  notifies :restart, 'service[sshd]', :immediately
end


