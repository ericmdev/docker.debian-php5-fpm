# Debian: PHP5-FPM
#
# VERSION 0.0.1

# Pull the base image.
FROM ericmdev/essentials

# Set the author.
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

# Install packages.
RUN apt-get update && apt-get install -y \
    php5-dev \
    php5-common \
    php5-cli \
    php5-fpm \
    php5-mcrypt \
    php5-mysql \
    php5-gd \
    php5-imagick \
    php5-curl \
    php5-intl

# Configure executable to start php5-fpm.
ENTRYPOINT ["php5-fpm"]

# Define default command.
CMD ["-F"]

# Listen on port 9000.
EXPOSE 9000