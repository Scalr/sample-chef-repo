#
# Cookbook Name:: success
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "/tmp/success.txt" do
  action  :create
  content  "Test run was successful"
end
