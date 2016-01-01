# Debian: PHP5-FPM
#
# VERSION 0.0.1

#
# Pull the base image.
#
FROM debian:jessie

#
# Set author.
#
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

#
# Update apt and install:
#
# 	- php5-common
# 	- php5-cli
# 	- php5-fpm
# 	- php5-mcrypt
# 	- php5-mysql
# 	- php5-apcu
# 	- php5-imagick
# 	- php5-curl
# 	- php5-intl
#
RUN apt-get update && \
    apt-get install -y php5-common php5-cli php5-fpm php5-mcrypt php5-mysql php5-apcu php5-gd php5-imagick php5-curl php5-intl

# Add managed php ini files.
ADD files/etc/php5/fpm/conf.d/php5-app.ini /etc/php5/fpm/conf.d/
ADD files/etc/php5/fpm/conf.d/php5-app.ini /etc/php5/cli/conf.d/

# Add pool configuration file.
ADD files/etc/php5/fpm/pool.d/php5-app.pool.conf /etc/php5/fpm/pool.d/
