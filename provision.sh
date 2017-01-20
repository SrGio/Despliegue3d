sudo apt-get update

apt-get -y install apache2

apt-get install php5 libapache2-mod-php5 php5-cli php5-mysql -y

echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
apt-get install mysql-client mysql-server -y

service apache2 reload

