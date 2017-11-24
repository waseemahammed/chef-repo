#
# Cookbook Name:: openswan
# Recipe:: default
#
# Copyright 2016, Waseem Ahammed
#
# All rights reserved - Do Not Redistribute
#

#This block is to install openswan on Ubuntu machines

include_recipe 'openswan::install'
include_recipe 'openswan::configure'
#include_recipe 'openswan::commands'
