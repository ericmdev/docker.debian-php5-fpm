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

    $ docker build -t php5-fpm -f ./Dockerfile .

Creates the image `php5-fpm`.

### Usage

    $ docker run -d --name=php5_fpm -p 9090:9000 php/php5-fpm
