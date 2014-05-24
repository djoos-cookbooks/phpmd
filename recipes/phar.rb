#
# Cookbook Name:: phpmd
# Recipe:: phar
#
# Copyright 2013-2014, Escape Studios
#

include_recipe 'pdepend::phar'

remote_file "#{node['phpmd']['install_dir']}/phpmd" do
  source node['phpmd']['phar_url']
  mode 0755
end
