apt-get update
apt upgrade -y
apt-get install -y apache2-utils apache2
sleep 3
service apache2 start
sleep 3
curl localhost
nano /etc/apache2/apache2.conf
sleep 3
service apache2 restart
apt-get install -y mysql-server
apt-get install -y php7.0 libapache2-mod-php7.0
sleep 3 
apt-get install -y phpmyadmin
curl localhost
sleep 3
echo >> /etc/apache2/apache2.conf
echo '#phpmyadmin include' >> /etc/apache2/apache2.conf
echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf
service apache2 restart
apt-get install -y php-mbstring php-gettext
phpenmod mcrypt
phpenmod mbstring
mkdir ~/Downloads
mkdir ~/Downloads/Multicraft
cd ~/Downloads/Multicraft
wget http://www.multicraft.org/download/linux64 -O multicraft.tar.gz
tar xvzf multicraft.tar.gz
sudo apt-get install -y default-jre zip unzip
cd multicraft/
./setup.sh
ip a | grep inet | sed '/inet6/d'
echo 'Press Enter when web setup is complete'
read
/home/minecraft/multicraft/bin/multicraft start
echo "Done, Return to web"
echo "Press Enter when finished web"
read
rm -Rf /var/www/html/multicraft/install.php
ufw enable
ufw allow 21
ufw allow 25565
echo y | ufw delete 3
echo y | ufw delete 3
ufw allow 80
echo y | ufw delete 4
wget http://www.multicraft.org/files/multicraft.service -O /etc/systemd/system/multicraft.service
chmod 644 /etc/systemd/system/multicraft.service
systemctl enable multicraft
#Credit to the video https://youtu.be/lR-NKpZRja4 for helping out