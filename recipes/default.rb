#
# Cookbook Name:: icanhazdevops
# Recipe:: default
#
# Copyright (C) 2014 Justin Seubert
#
# All rights reserved - Do Not Redistribute
#
%w(
  nginx
  vim
  icanhazdevops::nginx
).each do |cookbook|
  include_recipe cookbook
end

# Devel packages needed for fog install
case node['platform']
when 'redhat', 'centos'
  lib_pkg = %w(
    libxslt-devel
    libxml2-devel
  )
when 'debian', 'ubuntu'
  lib_pkg = %w(
    libxslt-dev
    libxml2-dev
  )
end

lib_pkg.each do |pkg|
  package pkg
end
