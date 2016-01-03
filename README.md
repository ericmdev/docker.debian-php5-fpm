## Dockerfile: Debian - PHP5-FPM

[![Build Status](https://travis-ci.org/ericmdev/dockerfile.php5-fpm.svg?branch=master)](https://travis-ci.org/ericmdev/dockerfile.php5-fpm)

**Dockerfile** of [Debian](https://www.debian.org/) [PHP5-FPM](http://php.net/manual/en/book.fpm.php).

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [debian:jessie](https://hub.docker.com/_/debian/)

*Process*
- php5-fpm (5.6.14)

*Docker Pull Command*
- `docker pull ericmdev/php5-fpm`

### Development

    $ docker build -t php/php5-fpm -f ./Dockerfile .

Creates an image with the tag `php/php5-fpm`.

### Usage

    $ docker run -d --name=php_php5_fpm -p 9090:9000 php/php5-fpm

Creates and starts a container with the name `php_php5_fpm` mapped to host port `9090`.

Access the Bash shell:

    $ docker exec -it php_php5_fpm bash
