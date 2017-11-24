
#This cookbook is to edit and configure IPSec files.
template "/etc/ipsec.secrets" do
  source "ipsec.secretsR.erb"
  notifies :restart, "service[ipsec]"
end
template "/etc/ipsec.conf" do
  source "ipsec.confR.erb"
  notifies :restart, "service[ipsec]"
end
