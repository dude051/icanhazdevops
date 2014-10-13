#
# Cookbook Name:: icanhazdevops
# Recipe:: nginx
#
# Copyright (C) 2014 Justin Seubert
#
# All rights reserved - Do Not Redistribute
#
# Create web root
directory '/var/www/nginx-default' do
  recursive true
end

# Clone website project
git '/var/www/nginx-default/' do
  repository 'https://github.com/dude051/icanhazdevops-site.git'
  reference 'master'
  action :sync
end

# Create a dynamic index.html
template '/var/www/nginx-default/index.html' do
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
