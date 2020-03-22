# Indicium Challenge

This program was built with the purpose of extracting the data from .tsv files using Python programming language and inserting them into a PostgreSQL database and later use this data to generate some outputs or insights, in another words, a little ETL. It is all done using docker-compose.

### - Requirements

#### Docker
Docker must be installed. It's possible to download it here: [link](https://www.docker.com/products/docker-desktop).

#### Git
Git also must be installed. It's possible to download it here: [link](https://git-scm.com/downloads).

### - Git Clone

Clone the application inside a folder:
```console
git clone https://github.com/mateusolvr/indicium.git
```

### - Files

The files wished to be inserted into the database must be .tsv and put inside the folder `./indicium/input_files/`

### - Execution

<!-- Use the file `config.json.example` to create a `config.json` file with the parameters to connect to your database. -->

Once inside the folder `indicium` execute the command:
```console
docker-compose up
```

After a few seconds, your data will inside your database.


### - Validation

To be able to validate, one can use the following commands.

Run the following to get the PostgreSQL container.
```console
docker-compose ps
```
Substitute the container name in the next code.
```console
docker exec -it $container psql -U postgres -d indicium
```

Now one is able to check the data. For example:
```console
SELECT * FROM indicium.deals;
```

### - Useful commands

Here are a few other useful commands if one judges necessary.

`docker-compose up -d`: Runs the docker-compose in the background.

`docker-compose images`: Check all docker images.

`docker-compose ps`: Check all docker containers.

`docker-compose stop`: Stop services.

`docker-compose rm`: Remove stopped containers.

`docker-compose down`: Remove all docker containers.
