[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
[![Build Status](https://travis-ci.org/orleika/docker-lamp.svg?branch=master)](https://travis-ci.org/orleika/docker-lamp)

# Docker-LAMP
Implementation LAMP with docker-compose v2.

## Get Started
1. [Install Docker](https://docs.docker.com/engine/installation/)
2. [Install Docker Compose](https://docs.docker.com/compose/install/)
3. cd this repository directory
4. place `.env` file
5. `docker-compose up -d`

## Environment
Rename `.env.sample` to `.env` and configure `MYSQL_ROOT_PASSWORD`, `MYSQL_USER`, `MYSQL_PASSWORD`, `MYSQL_DATABASE`

## Directory structure
```
docker-lamp
|-- mysql
|   |-- conf.d
|   |   `-- my.conf
|   |-- initdb.d
|   `-- log
|       `-- error.log
|-- php
|   |-- conf
|   |   |-- conf.d
|   |   |   |-- docker-php-ext-pdo_mysql.ini
|   |   |   `-- security.ini
|   |   `-- php.ini
|   |-- Dockerfile
|   |-- log
|   |   |-- access.log
|   |   `-- error.log
`-- www
    `-- mysql.php
```

### mysql - configuration directory
- `conf.d`: place mysql conf files.
- `initdb.d`: if you want to create database tables with some migration files, place sql files.
- `log`: auto place mysql `error.log`.

### php - configuration directory
- `conf`: place php conf files. already secure configurations is available.
- `log`: auto place apache with php `access.log`, `error.log`.

### www - public directory
place php files.  
`mysql.php` is a sample file, which connect the mysql database (defined by `MYSQL_DATABASE`).

## Feture Works
- Support secure Apache configuration.
- Support secure connection under https with letsencrypt.
