# pb-mathjax-docker
A docker recipe to run [pb-mathjax](https://github.com/pressbooks/pb-mathjax).

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

<img width="583" alt="Capture 2023-09-26 14 44 54@2x" src="https://github.com/TaylorJadin/pb-mathjax-docker/assets/4328899/df3a38de-1429-4464-aa2e-0ea74c3df927">

Add a line to your `wp-config.php` file for your Pressbooks install to point it to where you are hosting `pb-mathjax-docker`
```php
define( 'PB_MATHJAX_URL', 'https://domain.com' );
```

## What else do I need to know?
The `Dockerfile` is set up to use the latest LTS version of node. As I am writing this, this works well with `pb-mathjax` but in the future this might change. You can run any version of node by editing the first line in the `Dockerfile` and putting in a [suported tag from Docker Hub](https://hub.docker.com/_/node/).

When you want to rebuild the image using a different version of node, or just update to the latest LTS of node, run this command:
```bash
docker-compose up --build --force-recreate
```
