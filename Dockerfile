# Debian: PHP5-FPM
#
# VERSION 0.0.1

# Pull the base image.
FROM ericmdev/php5

# Set the author.
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

# Install packages.
RUN apt-get update && apt-get install -y \
    php5-fpm

# Configure executable to start php5-fpm.
ENTRYPOINT ["php5-fpm"]

# Define default command.
CMD ["-F"]

# Expose ports.
EXPOSE 9000