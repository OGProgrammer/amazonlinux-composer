# Select Source Docker/OS
FROM amazonlinux:latest

# Author
MAINTAINER OGProgrammer <JoshuaRCopeland@gmail.com>

# Update Package Sources
RUN yum update -y

# NPM
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -

# Install System Packages
RUN amazon-linux-extras install -y php7.2 memcached1.5 vim nginx1.12

# Build & PHP Packages
RUN yum -y install nodejs \
        libpng12-devel \
        php-devel \
        gcc \
        make \
        git \
        unzip \
        php-pear \
        php-mbstring \
        php-zip \
        php-xml \
        php-gd \
        php-pear

# Clean up YUM when completed
RUN yum clean all

# Add Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer

# Composer Version
RUN composer --version
