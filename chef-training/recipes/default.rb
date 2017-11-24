#
# Cookbook:: chef-training
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

hostname node.name do
  ipaddress "10.160.5.78"
  aliases [ "vztester.netgear.com", "vztester" ]
end
