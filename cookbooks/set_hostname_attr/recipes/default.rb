#
# Cookbook:: set_hostname_attr
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#hostname = 'TS01-50LIX026'

file '/etc/hostname' do
  content "#{node['new_hostname']}\n"
  mode '0644'
end

execute "hostname #{node['new_hostname']}"
