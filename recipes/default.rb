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
  screen
  python
  ruby
  gem_installer
  curl
  git
).each do |cookbook|
  include_recipe cookbook
end
