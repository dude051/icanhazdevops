#
# Cookbook Name:: icanhazdevops
# Recipe:: default
#
# Copyright (C) 2014 Justin Seubert
#
# All rights reserved - Do Not Redistribute
#
%w(
  apt
  nginx
  vim
  icanhazdevops::nginx
).each do |cookbook|
  include_recipe cookbook
end
