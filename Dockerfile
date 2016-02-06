# Debian: PHP5-FPM
#
# VERSION 0.0.1

# Pull the base image.
FROM ericmdev/php5

# Set the author.
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

# Set environment variables.
ENV FILES config/

# Install packages.
RUN apt-get update && apt-get install -y \
    php5-fpm

# Add managed configuration files.
ADD ${FILES}php-app.ini /etc/php5/fpm/conf.d/
ADD ${FILES}php-app.ini /etc/php5/cli/conf.d/
ADD ${FILES}php-app.pool.conf /etc/php5/fpm/pool.d/

# Configure executable to start php5-fpm.
ENTRYPOINT ["php5-fpm"]

# Define default command.
CMD ["-F"]

# Expose ports.
EXPOSE 9000