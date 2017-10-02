#
# Cookbook Name:: phpmd
# Attributes:: composer
#
# Copyright (c) 2016, David Joos
#

default['phpmd']['install_dir'] = default['composer']['global_install']['install_dir']
if default['phpmd']['install_method'] == 'composer'
  default['phpmd']['bin_dir'] = default['composer']['global_install']['bin_dir']
end
