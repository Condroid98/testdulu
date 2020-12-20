read -p "Install Apache2 (y/n) = " pilih;

if [[ $pilih = "y" || $pilih = "Y" ]]
then
	echo "Menginstall paket apache2"
	sudo apt-get install -y apache2
	echo "Apache Selesai Diinstal"
	exit 0

else
	echo "Penginstallan di Batalkan"
	exit 1
fi

	echo"coba akses IP kalian di Browser"
