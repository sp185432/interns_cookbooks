#
# Cookbook:: build_infrastructure
# Recipe:: deployment
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#deployment_package_url = 'https://raw.githubusercontent.com/sp185432/go_string_game/master/go_string_game.exe'

directory 'c:\deployment_dir' do
  action :create
end

#remote_file 'c:\deployment_dir\go_string_game.exe' do
#  source deployment_package_url
#  action :create
#end
