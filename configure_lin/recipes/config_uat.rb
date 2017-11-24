include_recipe "apt"

file '/home/user/uat.txt'do
        content 'This is a UAT environment'
end

#Creating a directory on a node

directory '/home/user/uat' do
        owner 'user'
        group 'user'
        mode '0744'
        action :create
end

user "uat" do
  comment "uat user"
  home "/home/uat"
  shell "/bin/bash"
  password "123"
end

