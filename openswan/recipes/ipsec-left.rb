#This cookbook is to edit and configure IPSec files.

template "/etc/ipsec.secrets" do
  source "ipsec.secretsL.erb"
  notifies :restart, "service[ipsec]"
end

template "/etc/ipsec.conf" do
  source "ipsec.confL.erb"
  notifies :restart, "service[ipsec]"
end
