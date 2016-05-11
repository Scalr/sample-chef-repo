if node['chef-solo']['result'].include? 'fail'
    raise "Special test exception"
end
file "/root/#{node['chef-solo']['result']}" do
    owner "root"
    group "root"
    mode "0755"
    action :create
end
