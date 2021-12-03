apt update
apt -y install apache2 php libapache2-mod-php unzip wget git systemctl
apt -y install php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath
git clone https://github.com/fishman01/jiotv
chmod -R 777 /var/www/html
rm /var/www/html/*
cp -r jiotv/. /var/www/html/
rm -rf jiotv/
systemctl restart apache2.service
ip route get 1.2.3.4 | awk '{print $7}' > ipaddr.txt
clear
tr --delete '\n' < ipaddr.txt
