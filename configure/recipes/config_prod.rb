include_recipe "apt"

file '/home/user/production.txt'do
	content 'This is a production environment'
end

#Creating a directory on a node

directory '/home/user/production' do
	owner 'user'
	group 'user'
	mode '0744'
	action :create
end

user "prod" do
  comment "prod user"
  home "/home/production"
  shell "/bin/bash"
  password "123"
end

