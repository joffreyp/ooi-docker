# Run a containerized OOI system stack

This repository contains an orchestrated collection of containers providing key OOI back-end services using podman and podman-compose. 

__Note:__ This project is under (re) development, and only supports a few services at present.

# Running OOI Databases
To run the Postgres and Cassandra databases for local testing, follow these steps:

1. Clone this repository onto the local/development environment
2. From the repository clone directory, build the Cassandra and Postgres images:
```shell
cd ~/repos/ooi-docker
podman-compose build cassandra
podman-compose build postgres
``` 
3. Bring up the databases:
```shell
cd ~/repos/ooi-docker
podman-compose up -d
```

The initial database namespaces and databases are created on container spin up, and the containers store database data in persistent named podman volumes. The databases are available on the host machine via standard ports at `localhost`.

There are additional steps to load the OOI-specific tables and metadata which is documented elsewhere.

# Qpid and other service

We will update Qpid to run using a BrokerJ container in the future, and will update this repository with that configuration.

