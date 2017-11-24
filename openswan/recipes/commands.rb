#This recipe is to run the commands


#Command to verify IPSec connection
execute "verify" do
  command "sudo ipsec verify > /tmp/verify.txt"
end

#if STDOUT.tty? && !Chef::Config[:daemon] && Chef::Log.info? && !@new_resource.sensitive
#	opts[:live_stream] = STDOUT
#end

#execute "verify_output" do
#  command "cat /tmp/verify.txt"
#end

#Restart IPSec service
execute "restart" do
  command "service ipsec restart > /tmp/restart.txt"
end

#execute "restart_output" do
#  command "cat /tmp/restart.txt"
#end


#Add IPSec connection
execute "add" do
  command "ipsec auto --add L2TP-PSK-noNAT > /tmp/add.txt"
end

#execute "add_output" do
#  command "cat /tmp/add.txt"
#end

#Bring Up IPSec connection
execute "up" do
  command "ipsec auto --up L2TP-PSK-noNAT > /tmp/up.txt"
end

#execute "up_output" do
#  command "cat /tmp/up.txt"
#end

#Check status of IPSec connection
execute "status" do
  command "service ipsec status > /tmp/status.txt"
end

execute "output" do
  command "cat /tmp/verify.txt /tmp/restart.txt /tmp/add.txt /tmp/up.txt /tmp/status.txt > /tmp/output.txt"
end

#File::read("somepathyouwantthefilebe/myfile.txt")

