cd /var/www/example.com/public_html
cp web.config /root/web.config
rm -r -d *
rm *
wget https://www.dropbox.com/s/h34x1wu2kq5yeoi/SERVDB.sql
wget https://www.dropbox.com/s/l5us91s9m752fw7/SERVWeb.zip
unzip SERVWeb.zip
mv SERVWeb/* ./
rm *.cs
rm *.csproj
echo "" > SERVLog.txt
chmod 777 SERVLog.txt
service mysql start
service apache2 start
if [ -f /root/.firstrun ];
then
	rm web.config
	wget https://www.dropbox.com/s/u457b54itei6l81/web.config.dockerdeploy
	mv web.config.dockerdeploy web.config
	mysql -p --password=Admin2015 < SERVDB.sql
	rm /root/.firstrun
fi
