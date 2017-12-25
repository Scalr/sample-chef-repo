if node['chef-solo']['result'].include? 'fail'
    raise "Special test exception"
end
case node['platform']
when 'windows'
    file "C:/#{node['chef-solo']['result']}" do
        action :create
    end
else
    file "/root/#{node['chef-solo']['result']}" do
        owner "root"
        group "root"
        mode "0755"
        action :create
    end
end

ruby_block "show env" do
    block do
	    p ENV
    end
    action :run
end
