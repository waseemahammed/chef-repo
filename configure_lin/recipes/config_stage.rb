include_recipe "apt"

file '/home/user/stage.txt'do
        content 'This is a staging environment'
end

#Creating a directory on a node

directory '/home/user/stage' do
        owner 'user'
        group 'user'
        mode '0744'
        action :create
end

user "stage" do
  comment "stage user"
  home "/home/staging"
  shell "/bin/bash"
  password "123"
end


