#
# Cookbook Name:: phpmd
# Recipe:: default
#
# Copyright 2013-2014, Escape Studios
#

case node['phpmd']['install_method']
when 'pear'
  include_recipe 'phpmd::pear'
when 'composer'
  include_recipe 'phpmd::composer'
when 'phar'
  include_recipe 'phpmd::phar'
end
