#
# Cookbook Name:: print-gv-solo
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

contents = ''
tolog = ''

ENV.keys.sort.each do |key|
  contents = contents + "#{key}=#{ENV[key]}\n"
  tolog = tolog + "SCALRENV:#{key}=#{ENV[key]}\n"
end

file "#{tmp_dir}/test-chef-env-solo.txt" do
  action  :create
  content  contents
end

log 'message' do
  message tolog
  level :warn
end
