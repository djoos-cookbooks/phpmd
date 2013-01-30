#
# Cookbook Name:: phpmd
# Recipe:: pear
#
# Copyright 2013, Escape Studios
#

include_recipe "php"

#PHP Extension and Application Repository PEAR channel
php_pear_channel "pear.php.net" do
  action :update
end

#upgrade PEAR
php_pear "PEAR" do
	action :upgrade
end

#phpmd PEAR channel
pearhub_chan = php_pear_channel "pear.phpmd.org" do
	action :discover
end

#pdepend PEAR channel
php_pear_channel "pear.pdepend.org" do
	action :discover
end

#upgrade phpmd
php_pear "PHP_PMD" do
	channel pearhub_chan.channel_name
	if node[:phpmd][:version] != "latest"
		version "#{node[:phpmd][:version]}"
	end
	action :upgrade
end