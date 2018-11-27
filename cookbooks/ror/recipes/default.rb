#
# Cookbook:: ror
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Updating System First
execute 'update_info' do
  command 'yum update -y'
end

#Remove a file (this is a bug)
execute 'remove_file' do
  command 'sudo rm -rf ~/.rbenv'
end

#Apache HTTPD setup
include_recipe "ror::httpd"

#Installing Ruby
include_recipe "ror::ruby"

#Installing Rail
include_recipe "ror::rail"

#Install Mongrel (A small fast HTTP library and server that runs Rails, Camping, and Nitro apps.)
include_recipe "ror::mongrel"

#Install Javascript Runtime
include_recipe "ror::jsruntime"

#Install MYSQL
include_recipe "ror::database"
