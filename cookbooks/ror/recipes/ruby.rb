#Clone Repo RBENV
execute 'clone_ruby_repo' do
  command 'git clone https://github.com/rbenv/rbenv.git'
end

# Do this instead
#git 'clone_rbenvrepo' do
#  repository 'https://github.com/rbenv/rbenv.git'
#  reference 'master'
#  action :checkout
#end

#Move Repo to RBENV
execute 'moving_rubyrepo' do
  command 'sudo mv rbenv ~/.rbenv'
end

#Installation Dependance
execute 'install_dependance' do
  command 'yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel'
end

#Installing latest Ruby
execute 'install_ruby_dependance' do
  command 'sudo yum install -y ruby ruby-devel rubygems'
end

#Installing Ruby
execute 'installing_ruby' do
  command 'rbenv install 2.5.3'
end

#Installing Ruby Global
execute 'installing_rubyglobal' do
  command 'rbenv global 2.5.3'
end
