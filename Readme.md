# Docker Compose setup for laravel using nginx
A Docker Compose workflow that sets up a LEMP(Linux Nginx Mysql Php ) stack of containers for local Laravel development.
# Dependencies
    1. make utility
    2. Docker Desktop
# How to run
## 1. set env variables for mysql (env/mysql.env) :
```bash
    MYSQL_DATABASE=homestead
    MYSQL_USER=homestead
    MYSQL_PASSWORD=secret
    MYSQL_ROOT_PASSWORD=secret
```
## 2. create laravel app files :
```bash
    make create_project
```

## 3. start containers :
```bash
    make launch # you can now visit http://localhost:8000
```

## 4. change .env values in src folder :
    After containers get started modify .env in your src folder, host name should be mysql, not localhost. The username and database and password should have same values as the ones you set in mysql.env

## 5. stop containers :
```bash
    make stop
```


# More commands :
## 1. php artisan commands :
```bash
    make artisan ARGS="migrate" # php artisan migrate
    make artisan ARGS=" make:<whatToMake> <nameOfWhatToMake>" # php artisan make:<whatToMake> <nameOfWhatToMake>
```

## 2. composer commands :
```bash
    make composer ARGS="update" # composer update
```

## 3. npm commands
```bash
    make npm ARGS="install axios" # npm install axios
    make npm ARGS="run build" # npm run build
```
## 4. reload nginx :
```bash
    make nginx_reload
```
## 5. (Optional) Delete project ( if you want to clean src folder ):
```bash
    make delete_project
```
