include_recipe "apt"

file '/home/user1/stage.txt'do
	content 'This is a staging environment'
end

#Creating a directory on a node

directory '/home/user/stage' do
	owner 'user1'
	group 'user1'
	mode '0744'
	action :create
end

user "kevin" do
  comment "default user"
  home "/home/kevin"
  shell "/bin/bash"
  password "123"
end
