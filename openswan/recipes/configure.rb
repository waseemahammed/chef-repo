#This cookbook is to configure Ubuntu as a router.

cookbook_file "/tmp/sysctl.sh" do
  source "sysctl.sh"
  mode 0755
end

execute "install my lib" do
  command "sh /tmp/sysctl.sh"
end
