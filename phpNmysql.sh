read -p "Install php, php-mysq, dan mysql-server (y/n) " oke;

if [[ $oke = "y" || $oke = "Y" ]]
then
	echo "Install php dan php-mysql"
	sudo apt-get install -y php php-mysql
	echo "Install Mysql-server"
	sudo apt-get install -y mysql-server
	echo "Install selesai"
	exit 0

else
	echo "Install di batalkan"
	exit 1
fi
