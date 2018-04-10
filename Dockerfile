FROM nimmis/apache-php5

RUN wget -c http://dl.cnezsoft.com/zentao/9.8.3/ZenTaoPMS.9.8.3.zip
RUN rm -rf /var/www/html && unzip -o ZenTaoPMS.9.8.3.zip -d /var/www && mv /var/www/zentaopms /var/www/html
RUN echo '<?php header("Location:/www"); ?>' > /var/www/html/index.php
RUN rm -rf ZenTaoPMS.9.8.3.zip

EXPOSE 80