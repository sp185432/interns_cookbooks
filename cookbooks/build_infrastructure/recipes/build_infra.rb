#
# Cookbook:: build_infrastructure
# Recipe:: build_infra
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'chocolatey::default'

chocolatey_packages = {
  'vscode' => '1.35.1',
  'jenkins' => '2.176.1',
  'git' => '2.20.1',
  'golang' => '1.12.6',
  '7zip' => '18.6',
  'openjdk' => '12.0.1'
}

chocolatey_packages.each do |package, package_version|
  chocolatey_package package do
    version package_version
    options '--ignore-checksums'
    ignore_failure true
    action :install
  end
end

directory 'c:\users\vagrant\.ssh' do
  action :create
end

cookbook_file 'c:\users\vagrant\.ssh\id_rsa' do
  source 'id_rsa'
  action :create
end
