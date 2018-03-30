#
# Cookbook Name:: medium-chef
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


if platform?('windows')
  tmp_dir = ENV['TMP']
else
  tmp_dir = '/tmp'
end

file "#{tmp_dir}/medium_chef.txt" do
  action  :create
  content  "Test run from branch was successful"
end
