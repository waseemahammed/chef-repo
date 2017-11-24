remote_file '/var/tomcat7/webapps/CloudBuilder.war' do
  source 'https://github.com/sourabhjain-zensar/cloudbuilder/blob/master/CloudBuilder.war'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

