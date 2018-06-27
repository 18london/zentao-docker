FROM nimmis/apache-php5

RUN wget -c http://dl.cnezsoft.com/zentao/10.0/ZenTaoPMS.10.0.stable.zip
RUN rm -rf /var/www/html && unzip -o ZenTaoPMS.10.0.stable.zip -d /var/www && mv /var/www/zentaopms /var/www/html
RUN echo '<?php header("Location:/www"); ?>' > /var/www/html/index.php
RUN rm -rf ZenTaoPMS.10.0.stable.zip

EXPOSE 80