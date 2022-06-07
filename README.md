<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>


> ### Laravel-ecommerce-template codebase containing a full stack (CRUD, auth and admin middleware) API.

----------

# Getting started

## Installation

Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/8.x/installation)

Alternative installation is possible without local dependencies relying on [Docker](#docker). 

Clone the repository
    
    git clone https://github.com/pete04h3/laravel-ecommerce-template.git
    
    # or with ssh connection:
    
    git clone git@github.com:pete04h3/laravel-ecommerce-template.git

Switch to the repo folder

    cd laravel-ecommerce-template

Install all the dependencies using composer

    composer install

Copy the example env file and make the required configuration changes in the .env file

    cp .env.example .env

Generate a new application key

    php artisan key:generate

Run the database migrations (**Set the database connection in .env before migrating**)

    php artisan migrate

Start the local development server

    php artisan serve

You can now access the server at http://localhost:8000

**Command list HTTPS**

    git clone https://github.com/pete04h3/laravel-ecommerce-template.git
    cd laravel-ecommerce-template
    composer install
    cp .env.example .env
    php artisan key:generate 

**Command list SSH**

    git clone git@github.com:pete04h3/laravel-ecommerce-template.git
    cd laravel-ecommerce-template
    composer install
    cp .env.example .env
    php artisan key:generate 
    
**Make sure you set the correct database connection information before running the migrations** [Environment variables](#environment-variables)

    php artisan migrate
    php artisan serve

## Database seeding

**Populate the database with dummy data. This can help you to quickly start testing the api or frontend and start using it with out-of-the-box content.**

Open the DatabaseSeeder and set the property values as per your requirement

    database/seeds/DatabaseSeeder.php

Run the database seeder and you're done

    php artisan db:seed

***Note*** : It's recommended to have a clean database before seeding. You can refresh your migrations at any point to clean the database by running the following command

    php artisan migrate:refresh
    
## Docker

# Advanced users

To install with [Docker](https://www.docker.com), run following commands:

```
---------------------------------------------------------------------
git clone https://github.com/pete04h3/laravel-ecommerce-template.git
or with SSH:
git clone git@github.com:pete04h3/laravel-ecommerce-template.git
---------------------------------------------------------------------
cd Docker
docker run -v $(pwd):/app composer install
sudo chown -R $USER:$USER ~/path-to/foldername
---------------------------------------------------------------------
docker-compose up -d --build
docker-compose ps
---------------------------------------------------------------------
cp .env.example .env
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan config:cache
docker-compose exec app php artisan migrate
---------------------------------------------------------------------
<-- if you want to change database configuration -->
run this cmd: docker-compose exec app vim .env
<-- if you want to seed database -->
docker-compose exec app php artisan db:seed
---------------------------------------------------------------------
```

## Full setup guide can be found here:
[Docker, nginx, mysql, laravel setup](https://www.howtoforge.com/dockerizing-laravel-with-nginx-mysql-and-docker-compose/amp/?fbclid=IwAR3Wwim2FvEjGqMp6m3xd63Z1wXJQwRTPocflFuZR7ieK7E-n2PjRp1BUkA)
----------

# Code overview

## Folders

- `app` - Contains all the Eloquent models
- `app/Http/Controllers/Api` - Contains all the api controllers
- `app/Http/Middleware` - Contains the auth middleware
- `app/Http/Requests/Api` - Contains all the api form requests
- `config` - Contains all the application configuration files
- `database/factories` - Contains the model factory for all the models
- `database/migrations` - Contains all the database migrations
- `database/seeds` - Contains the database seeder
- `routes` - Contains all the routes defined in web.php file
- `tests` - Contains all the application tests

## Routes

- `app` - Contains all the Eloquent models
- `app/Http/Controllers/Api` - Contains all the api controllers
- `app/Http/Middleware` - Contains the auth middleware
- `app/Http/Requests/Api` - Contains all the api form requests
- `config` - Contains all the application configuration files
- `database/factories` - Contains the model factory for all the models
- `database/migrations` - Contains all the database migrations
- `database/seeds` - Contains the database seeder
- `routes` - Contains all the routes defined in web.php file
- `tests` - Contains all the application tests

## Environment variables

- `.env` - Environment variables can be set in this file

***Note*** : You can quickly set the database information and other variables in this file and have the application fully working.

----------

# Run the project

Run the laravel development server

    php artisan serve

The app can now be accessed at

    http://localhost:8000

----------
Thank you!
----------

# Deploy now with heroku
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
 

