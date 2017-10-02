#
# Cookbook Name:: phpmd
# Recipe:: composer
#
# Copyright (c) 2016, David Joos
#

include_recipe 'composer'

install_dir = node['phpmd']['install_dir']

# figure out what version to install
version = if node['phpmd']['version'] != 'latest'
            node['phpmd']['version']
          else
            '*.*.*'
          end

composer_install_global 'phpmd/phpmd' do
  install_dir install_dir
  version version
  bin_dir node['phpmd']['prefix']
end
