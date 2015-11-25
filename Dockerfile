FROM tphillips/dotnetcontainer

#RUN cd /var/www/example.com/public_html; rm *; wget https://www.dropbox.com/s/agjnn6fiwvyitrn/web.config; wget https://www.dropbox.com/s/h34x1wu2kq5yeoi/SERVDB.sql; wget https://www.dropbox.com/s/l5us91s9m752fw7/SERVWeb.zip; unzip SERVWeb.zip; mv SERVWeb/* ./; rm *.cs; rm *.csproj; echo "" > SERVLog.txt; chmod 777 SERVLog.txt
RUN touch /root/.firstrun
ADD ./docker-content-start.sh /root/start.sh

# CMD ["/root/start.sh"]

EXPOSE 80
