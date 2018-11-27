#Install MYSQL Database
execute 'install_mysql' do
  command 'sudo gem install mysql'
end

#Updating MYSQL
execute 'update_mysql' do
  command 'sudo yum update -y'
end

#Installing MYSQL server
execute 'install_mysqlserver' do
  command 'sudo yum -y install mysql-server'
end

execute 'start_mysqlserver' do
  command 'sudo systemctl start mysqld'
end

#MySQL server has been harden @ mysql_secure_installation'
#Using MYSQL Root Login
#Use this to access = mysql -u root -p
