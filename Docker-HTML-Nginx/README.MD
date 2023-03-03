# Simple docker setup for hosting static websites using Nginx

To run a static HTML & CSS website, put your website files inside of the `site` directory. If you put the files (especially the index file) in a different location, ensure you change the root of your website in the Nginx conf file (`/nginx/my.conf`) section below.

```nginx
 #/nginx/my.conf
root /site/static;
```

In your dockerfile, you could add your static website from a repository, you dont have to put them in the `site` folder.

Bring the container up by:

```bash
docker compose up -d --build
```

or

```bash
docker-compose up -d --build
```

## Note

 If you change the docker port (in the compose file `docker-compose.yaml` ). You must also change the Nginx listening port on this line:

```nginx
  #/nginx/my.conf
  listen 5000;
```

If you make any changes, bring the container down then up again:

```bash
docker compose down
docker-compose up -d --build
```

If you have any questions  [contact me here](https://bizanosa.com/contact/).
