## Dockerfile: Debian - PHP5-FPM

[![Build Status](https://travis-ci.org/ericmdev/php5-fpm.dockerfile.svg?branch=master)](https://travis-ci.org/ericmdev/php5-fpm.dockerfile)

**Dockerfile** of [Debian](https://www.debian.org/) [PHP5-FPM](http://php.net/manual/en/book.fpm.php).

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [ericmdev/essentials](https://hub.docker.com/r/ericmdev/essentials/)

*Docker Pull Command*
- `docker pull ericmdev/php5-fpm`

### Usage

Build the image.

    $ make

Run the container.

    $ make run

Dig into the container.

    $ make exec

*See the `Makefile` for more options.