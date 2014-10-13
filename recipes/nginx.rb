#
# Cookbook Name:: icanhazdevops
# Recipe:: nginx
#
# Copyright (C) 2014 Justin Seubert
#
# All rights reserved - Do Not Redistribute
#
#
case node['platform']
when 'redhat', 'centos'
  node.default['nginx']['default_root'] = '/usr/share/nginx/html'
end

# Create web root
directory node['nginx']['default_root'] do
  recursive true
end

# Clone website project
git node['nginx']['default_root'] do
  repository 'https://github.com/dude051/icanhazdevops-site.git'
  reference 'master'
  action :sync
end

# Create a dynamic index.html
template "#{node['nginx']['default_root']}/index.html" do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode 0644
  variables({
    company: 'I Can Haz DevOps',
    name: 'Justin Seubert',
    hostname: node['hostname']
  })
end
