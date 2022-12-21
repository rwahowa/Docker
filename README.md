# Wordpress-Dev-Env-with-Docker

Set up WordPress on Docker with Nginx and PHP 8.2 RC1 . Mostly Alpine images

## To make it work

Ensure you have added a folder labelled *wp* . This is the folder with your wordpress files. You can call it whatever you want , but ensure to change the name in the docker compose file appropriately. Change it in the nginx volumes block:
`- ./wp:/var/www/html:delegated`

1. Download wordpress and add it to the directory wp. The directory should be in the root.
2. In the root directory where your compose file is, run:
`docker compose up`
3. Add a local domain for accessing your site. Open */etc/hosts* . Next to 127.0.0.1 , add the domain(s). In the following example I have added 3 domains.

```
127.0.0.1       localhost sample.site django.test wordpress.site 
```

The domains will be accessible on your local computer. 
