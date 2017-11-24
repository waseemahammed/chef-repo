#Cookbook name chef_hostname
#Author Waseem Ahammed

hostname "web.zenprod.com"

file "/tmp/Webserver" do
  content node["webserver"]
end

file "/tmp/Webserver" do
  content node["Webserver"]
end

file "/tmp/Webserver" do
  content node["Webserver"]
end

file "/tmp/web.zenprod.com" do
  content node["web.zenprod.com"]
end


