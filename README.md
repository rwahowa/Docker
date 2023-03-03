# Wordpress and Static HTML Dev Environment with Docker

Go into each directory to find the docker compose files for getting started.

Set up WordPress on Docker with Nginx and PHP 8.2 RC1 . Mostly uses Alpine images.
This is for use in your local computer to set up a WordPress local dev environment using Docker / Nginx/ PHP 8.2/ MariaDB.

## To make it work

Ensure you have added a folder labelled *wp* . This is the folder with your wordpress files. You can call it whatever you want , but ensure to change the name in the docker compose file appropriately. Change it in the nginx volumes block:
`- ./wp:/var/www/html:delegated`

1. Download wordpress and add it to the directory wp. The directory should be in the root.
2. In the root directory where your compose file is, run:
`docker compose up -d --build`
3. Add a local domain for accessing your site. Open */etc/hosts* . Next to 127.0.0.1 , add the domain(s). In the following example I have added 3 domains.

```bash
127.0.0.1       localhost sample.site django.test wordpress.site 
```

The domains will be accessible on your local computer.
4. Make data persistent by creating a directory on your computer and linking it to docker mysql. The following line under mysql block in the docker compose file will link a directory named data:

```docker
volumes:
      - ./data:/var/lib/mysql
```

## Set up SSL on Localhost

Install [mkcert](https://github.com/FiloSottile/mkcert#installation). or use the `install-mkcert.sh` file to install it on Debian or Ubuntu.

Then follow the steps outlined in the ssl section of this repo (The directory for SSL).
