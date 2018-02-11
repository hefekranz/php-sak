# PHP Swiss Army Knife

Docker image with a lot of dependencies/tools for php.
Not really intended for production usage, be smart.

### PHP Extensions
- mbstring
- bsmath
- json
- sockets
- zip
- curl
- intl
- soap
- calendar
- dom
- ftp
- mysqli
- pcntl
- pdo
- pdo_mysql
- phar
- simplexml
- xml
- mongodb

### Tools
- composer

### Examples
Just to give you an idea how to use it...

```bash
docker run -it -v "$PWD":/data -w /data --rm hefekranz/php-sak bash -c "composer install && php app.php"
```

It probably makes sense to add an alias/function for this where you hand the parameters to the -c flag.

You could also think of adding a composer volume for caching...
