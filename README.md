# Mysql docker commands and utlilities

Using MySQL with Docker and docker-compose makes it very easy and fast to test out any changes in any application using MySQL as the database. In this tutorial, we will detail how to use MySQL with Docker and docker-compose step-by-step keeping things easy to comprehend. Let’s get started!

You can see mysql `dump` and `backup` commands from docker container here.
[https://github.com/bkglobal/mysql_docker_utilities/blob/main/mysql-commands.sh](https://github.com/bkglobal/mysql_docker_utilities/blob/main/mysql-commands.sh)

## Installation

Install my-project with npm

Checkout repository.

```bash
git clone git@github.com:bkglobal/mysql_docker_utilities.git
```

Go to the directory.

```bash
cd mysql_docker_utilities
```

Rename env file (from env to .env)..

```bash
mv env .env
```

Now open `.env` file and edit the following environment variables.

```bash
MYSQL_DATABASE: 'db'

# So you don't have to use root, but you can if you like
MYSQL_USER: 'user'

# You can use whatever password you like
MYSQL_PASSWORD: 'password'

# Password for root access
MYSQL_ROOT_PASSWORD: 'password'
```

Open `docker-compose.yml` file and reset it according to your need.

You can find `mysql` latest images in [official mysql docker image link](https://hub.docker.com/_/mysql)..

### Everything is set now.

Commands

Run docker container on foreground.

```bash
docker-compose -f docker-compose-mysql.yml up
```

Run docker container on background.

```bash
docker-compose -f docker-compose-mysql.yml up -d
```

Stop container.

```bash
docker-compose down
```
