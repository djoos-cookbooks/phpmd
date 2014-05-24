#
# Cookbook Name:: phpmd
# Recipe:: pear
#
# Copyright 2013-2014, Escape Studios
#

include_recipe 'php'
include_recipe 'pdepend::pear'

# PHP Extension and Application Repository PEAR channel
pearhub_chan = php_pear_channel 'pear.php.net' do
  action :update
end

# upgrade PEAR
php_pear 'PEAR' do
  channel pearhub_chan.channel_name
  action :upgrade
end

# phpmd PEAR channel
pearhub_chan = php_pear_channel 'pear.phpmd.org' do
  action :discover
end

# install/upgrade phpmd
package = 'PHP_PMD'

# upgrade when package is installed and latest version is required
if !(`pear list | grep #{package}`.empty?) && node['phpmd']['version'] == 'latest'
  action = :upgrade
else
  action = :install
end

php_pear package do
  channel pearhub_chan.channel_name
  version node['phpmd']['version'] if node['phpmd']['version'] != 'latest'
  action action
end
