#Install EPEL
execute 'install_epel' do
  command 'yum -y install epel-release'
end

#Install Node.JS Runtime
execute 'install_epel' do
  command 'yum -y install nodejs'
end
