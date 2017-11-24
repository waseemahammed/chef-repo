include_recipe "apt"

file '/home/user/dev.txt'do
        content 'This is a development environment'
end

#Creating a directory on a node

directory '/home/user/dev' do
        owner 'user'
        group 'user'
        mode '0744'
        action :create
end

user "dev" do
  comment "dev user"
  home "/home/dev"
  shell "/bin/bash"
  password "123"
end
