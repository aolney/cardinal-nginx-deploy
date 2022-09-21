# cardinal-nginx-deploy

This repo deploys [DISTRHO/Cardinal](https://github.com/DISTRHO/Cardinal) using Dockerized nginx.

It largely combines scripts/guides to:

- Enable brotli compression of the Cardinal files (necessary for complete Firefox caching; Chrome will only cache some files)
- Enable PHP support for loading patches from PatchStorage

## Building/Running

- `docker-compose up`

## File structure

- The nginx server for static files uses `nginx.conf` and `cardinal-data`
- The php server uses `cardinal-php`

To update to the latest Cardinal release, you can simply replace the files in `cardinal-data` and run the `brotli.sh` script to compress them.

## References

- [For brotli](https://martinheinz.dev/blog/48); see script in `cardinal-data` for pre-compressing files
- [Nginx php 1](https://github.com/mikechernev/dockerised-php)
- [Nginx php 2](https://luiscoutinh.medium.com/reverse-proxy-with-docker-traefik-nginx-php-mysql-mosquitto-phpmyadmin-basic-c9b588bda63a)