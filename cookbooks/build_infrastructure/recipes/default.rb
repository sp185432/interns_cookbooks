#
# Cookbook:: build_infrastructure
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'build_infrastructure::build_infra'

include_recipe 'build_infrastructure::deployment'
