# Wordpress-Dev-Env-with-Docker

Set up WordPress on Docker with Nginx and PHP 8.2 RC1 . Mostly Alpine images

## To make it work

Ensure you have added a folder labelled *wp* . This is the folder with your wordpress files. You can call it whatever you want , but ensure to change the name in the docker compose file appropriately. Change it in the nginx volumes block:
`- ./wp:/var/www/html:delegated`
