# Laravel Rest API 
Laravel Oauth 2 Rest API using packages "Passport" and "Resource".

# Build the docker project by using following commands
 - docker-compose build
 - docker-compose up

if Docker build is successfull, then following two containers will be created.
 - "laravel_api_app" - Web Application container
 - "laravel_api_database_mysql" - MySQL container

# Laravel initial installation instructions for docker
Docker container name is "laravel_api_app"
 - docker exec -it app_laravel_api composer install 
 - docker exec -it app_laravel_api php artisan migrate
 - docker exec -it app_laravel_api php artisan passport:install
  
# Create a public "access_token" by registering a Guest user.
 - Use postman to create an "Guest" user by this URL  "http://localhost:8002/api/register".
 - Post fields are "name", "email", "password" and "c_password". 
 - If user creation is successful then get the "token" from database of that User.
 
 
# Other usefull Docker commands for this project 
## Docker connect to database shell
 - docker exec -it laravel_api_database_mysql mysql -u root -p la_database
 
