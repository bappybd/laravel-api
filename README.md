# Laravel Rest API 
Laravel Rest API with Passport and Resource.

# Installation for docker
 - docker exec -it laravel_api_app composer require laravel/passport
 - docker exec -it laravel_api_app php artisan migrate
 - docker exec -it laravel_api_app php artisan passport:install
 - docker exec -it laravel_api_app php artisan make:auth
 
