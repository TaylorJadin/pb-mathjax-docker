# pb-mathjax-docker
A docker recipe to run pb-mathjax.

## Requirements
A docker host with a public IP addresss and domain name. This docker-compose setup is designed to automatically setup a Let's Encrypt certificate and will not work properly in situations where one cannot be issued.

## Install
Clone this git repository
```bash
git clone https://github.com/TaylorJadin/pb-mathjax-docker
```

cd into the pb-mathjax-docker folder
```bash
cd pb-mathjax-docker/
```

Copy the example env file
```bash
cp env.example .env
```

Edit the file to include the domain name and your email addrdess
```bash
nano .env
```

Bring up the docker-compose stack
```bash
docker-compose up -d
```

## Use it
After a few minutes, visit your URL, and you should see "Welcome to PB MathJax" on the page. 

Add a line to your the `wp-config.php` file for your Pressbooks install to point it to pb-mathjax-docker.
```php
define( 'PB_MATHJAX_URL', 'https://domain.com' );
```
