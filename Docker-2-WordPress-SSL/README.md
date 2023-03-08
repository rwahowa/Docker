# Wordpress Dev Environment with Docker on SSL

Set up WordPress on Docker with Nginx, mkcert(ssl) and PHP 8.2 RC1 . Mostly uses Alpine images.
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

In your nginx folder create a new folder where you'll store the generated keys. In my case it is called `nginx/certificates`.

cd into the directory and generate  certificates for your domain. replace *wordpress.site* with your local domain.

```bash
cd nginx/certificates
mkcert wordpress.site
```

You can just map the created key pair to docker as a volume. This is added in the docker-compose file under the nginx block.

```docker
- ./nginx/certificates:/etc/nginx/ssl
```

Then add the Nginx configs in the Nginx conf file as attached in the `mysite.conf` file.

Then expose port 443 .

## Known Issue

After introducing SSL, there is a **permission issue**. WordPress is unable to write to the folder, hence you cannot install plugins and themes via the dashboard.
This is a known problem whenever working with PHP-FPM and Nginx in different containers. I have not taken the time to sit down and look into it yet.
If you have a solution for this issue please make a request and fix it. I will merge it if it works.
