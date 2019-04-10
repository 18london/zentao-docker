FROM nimmis/apache-php5

RUN wget -c http://dl.cnezsoft.com/zentao/11.4.1/ZenTaoPMS.11.4.1.zip
RUN rm -rf /var/www && unzip -o ZenTaoPMS.11.4.1.zip -d /var && mv /var/zentaopms /var/www && mv /var/www/www /var/www/html
RUN rm -rf ZenTaoPMS.11.4.1.zip

EXPOSE 80
