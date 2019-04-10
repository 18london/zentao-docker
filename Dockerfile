FROM nimmis/apache-php5

RUN wget -c http://dl.cnezsoft.com/zentao/11.4/ZenTaoPMS.11.4.stable.zip
RUN rm -rf /var/www/html && unzip -o ZenTaoPMS.11.4.stable.zip -d /var && mv /var/zentaopms /var/www && mv /var/www/www /var/www/html
RUN echo '<?php header("Location:/www"); ?>' > /var/www/html/index.php
RUN rm -rf ZenTaoPMS.11.4.stable.zip

EXPOSE 80
