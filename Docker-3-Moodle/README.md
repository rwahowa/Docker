# Moodle Docker

Moodle LMS set up based on the Bitnami Moodle image on docker. This Moodle runs on Apache.

## To make it work

Just download the compose file (`docker-compose.yml`) and run it. On your local PC, create a directory. Put the compose file in it. Then run it (compose up).

1. In the root directory where your compose file is, run:

      ``` bash
      docker compose up -d

      # depending on your docker, you may need to run docker-compose or docker compose
      ```

1. Wait for the full set up to complete. It may take a while if it is the first time. Visit the localhost or the domain you have set up:

      ```bash
      localhost:8080
      ```

Give it time to finish setting up everything, including installing moodle.

The username and password for `localhost:8080/admin` **is indicated on the docker-compose file**.

## Password and environment variables

You can set up environment variables in your docker-compose to set a password, user and so much more. Just add the new variable under the environment section. The following are some that relate to your Moodle software. More can be found in the [Bitanami Moodle Docker page](https://hub.docker.com/r/bitnami/moodle/).

### User and Site configuration

```docker

    MOODLE_USERNAME: Moodle application username. **Default: user**
    MOODLE_PASSWORD: Moodle application password. **Default: bitnami**
    MOODLE_EMAIL: Moodle application email. Default: user@example.com
    MOODLE_SITE_NAME: Moodle site name. Default: New Site
    MOODLE_SKIP_BOOTSTRAP: Do not initialize the Moodle database for a new deployment. This is necessary in case you use a database that already has Moodle data. Default: no
    MOODLE_HOST: Allows you to configure Moodle's wwwroot feature. Ex: example.com. By default it is a PHP superglobal variable. Default: $_SERVER['HTTP_HOST']
    MOODLE_REVERSEPROXY: Allows you to activate the reverseproxy feature of Moodle. Default: no
    MOODLE_SSLPROXY: Allows you to activate the sslproxy feature of Moodle. Default: no
    MOODLE_LANG: Allows you to set the default site language. Default: en

```

## Set up SSL on Localhost

To be done soon.
