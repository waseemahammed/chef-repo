#
# Cookbook:: tomcat
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#node.default['Tomcat8']['url'] = "http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz"
#node.default['Tomcat8']['install_dir'] = '/opt/tomcat'
#node.default['tomcat8']['tomcat_user'] = "root"
#node.default['tomcat8']['tomcat-port'] = [] 

####ATTRIBUTE LIST####
node.default['url'] = "http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.0.47/bin/apache-tomcat-8.0.47.tar.gz"
node.default['install_dir'] = '/opt/tomcat'


#include java cookbook to install jdk 7
include_recipe 'java'

#2. Create tomcat user and group
user 'tomcat' do
  comment 'Our tomcat user'
  username 'tomcat'
  password '12345'
  home '/opt/tomcat'
  shell '/bin/nologin'
  action :create
end

group 'tomcat' do
  action :modify
  members 'tomcat'
  append true
end

#tmp_path = Chef::Config[:file_cache_path]

#Download tomcat8 mirror
remote_file '/home/centos/apache-tomcat-8.0.46.tar.gz' do
  source node.default['url']
  #owner 'tomcat'
  mode '0644'
  action :create
end

#Create install dir and untar the tomcat file

directory node.default['install_dir'] do
  owner 'tomcat'
  mode '0755'
  action :create
end

bash 'Extracting tomcat8 to install dir' do
  #user 'tomcat'
  cwd node.default['install_dir']
  code <<-EOH
          tar -zxvf /home/centos/apache-tomcat-8.0.46.tar.gz --strip 1
  EOH
  action :run
end

#Update the Permissions
bash 'update the dir permissions' do
  #user 'tomcat'
  cwd '/opt/tomcat'
  code <<-EOH
       sudo chgrp -R tomcat /opt/tomcat/conf
       sudo chmod g+rwx /opt/tomcat/conf
       sudo chmod g+r /opt/tomcat/conf/*
       sudo chown -R tomcat:tomcat /opt/tomcat/*
  EOH
  action :run
end

#Install the Systemd Unit File
template '/etc/systemd/system/tomcat.service' do
  source 'tomcat.service.erb'
  owner 'tomcat'
  mode '0644'
  notifies :restart, 'service[tomcat]', :immediately 
end

#Reload Systemd to load the Tomcat Unit file
bash 'Reload Systemd to load the Tomcat Unit file' do
  code <<-EOH
      sudo systemctl daemon-reload
      #sudo systemctl start tomcat
      #sudo systemctl enable tomcat
  EOH
  action :run
end

service 'tomcat' do
   action [:enable, :start] 
end


#Install server.xml from template
template "/opt/tomcat/conf/server.xml" do
  source 'server.xml.erb'
  #owner 'tomcat'
  mode '0644'
end
