# Select Source Docker/OS
FROM amazonlinux:latest

# Author
MAINTAINER OGProgrammer <JoshuaRCopeland@gmail.com>

# Update Package Sources
RUN yum update -y

# Install System Packages
RUN amazon-linux-extras install -y php7.2 memcached1.5 vim nginx1.12

# Clean up YUM when completed
RUN yum clean all

# Add Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer

# Composer Version
RUN composer --version