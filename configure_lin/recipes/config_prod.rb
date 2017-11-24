#include_recipe "apt"

file '/root/prod.txt'do
        content 'This is a production environment'
end

#Creating a directory on a node

#directory '/root/production' do
#        owner 'user'
#        group 'user'
#        mode '0744'
#        action :create
#end

execute "apt-get update" do
  command "apt-get update"
end

package 'apache2'

service 'apache2' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end



