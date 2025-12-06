<img src="https://github.com/STARIONGROUP/COMET-Docker/raw/development/CDP4-COMET-Community-Edition.jpg" width="250">

# Introduction

This is the Git repository of the official `CDP4-COMET Community Edition` database docker images. 

## CDP4-COMET Database - Community Edition

The `CDP4-COMET Database Community Edition` image is based on the official PostgreSQL **18-alpine** image and contains the CDP4-COMET SQL schema required to run the CDP4-COMET Webservices Community Edition.

The docker image is available on [docker hub](https://hub.docker.com/r/stariongroup/cdp4-database-community-edition/)

## CDP4-COMET Database Bare - Community Edition

The `CDP4-COMET Database Bare - Community Edition` image is based on the official PostgreSQL **18-** image. It containss a mimimal test CDP4-COMET SQL Schema that is required to execute the [ECSS-E-TM-10-25 Annex C.2 Integration Test suite](https://github.com/STARIONGROUP/ecss-10-25-annexc-integration-tests). 

To start this image run the following command:

```
docker run -e POSTGRES_PASSWORD=postgres -p 5432:5432 --tmpfs /var/lib/postgresql/18/docker:rw,size=1g,mode=700 -it -d --name comet-db --network cdp4-comet stariongroup/cdp4-test-database-community-edition:5.0.0 -c max_locks_per_transaction=2048 -c statement_timeout=3000
```

## CDP4-COMET Services Community Edition

The **Dockerfile** of the [CDP4-COMET Services Community Edition](https://github.com/STARIONGROUP/COMET-WebServices-Community-Edition) is maintained [here](https://github.com/STARIONGROUP/COMET-WebServices-Community-Edition/blob/master/Dockerfile).

## License

The CDP4-COMET Web Services Community Edition is licensed under the [AGPL license](LICENSE). Each docker container grants additional permission under GNU GPL version 3 section 7. See the license files in the image specific folders.

## Build and Deploy using Docker

The `CDP4-COMET Database` containers are built using docker and the result is a Docker container ready to be deployed (or pushed to Docker Hub).

Two scripts are provided to create a docker image:
  - `release.bat`: creates images that can be run locally (run this script from a windows command line)
  - `docker-build-attested.sh`: creates images that is attested and include an SBOM. These are immediately pushed to docker hub (run this from a linux command line like the console in GitExtensions)