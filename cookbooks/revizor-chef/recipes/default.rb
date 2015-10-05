file "/root/#{node['chef-solo']['result']}" do
    owner "root"
    group "root"
    mode "0755"
    action :create
end
