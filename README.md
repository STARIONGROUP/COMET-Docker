# Introduction

This is the Git repository of the official `CDP4 Community Edition` docker images. 

## CDP4 Database - Community Edition

The `CDP4 Database Community Edition` image is based on the official PostgreSQL 9.6.6 image and contains the CDP4 SQL schema required to run the CDP4 Webservices Community Edition.

The docker image is available on [docker hub](https://hub.docker.com/r/rheagroup/cdp4-database-community-edition/)

## CDP4 Database Bare - Community Edition
The `CDP4 Database Bare - Community Edition` image is based on the official PostgreSQL 9.6.6 image. It does not contain the CDP4 SQL Schema, only the mininmal setup that is required to execute the [ECSS-E-TM-10-25 Annex C.2 Integration Test suite](https://github.com/RHEAGROUP/ecss-10-25-annexc-integration-tests). 

## CDP4 Services Community Edition

The **Dockerfile** of the [CDP4 Services Community Edition](https://github.com/RHEAGROUP/CDP4-WebServices-Community-Edition) is maintained [here](https://github.com/RHEAGROUP/CDP4-WebServices-Community-Edition/blob/master/Dockerfile).

# License

The CDP4 Web Services Community Edition is licensed under the [AGPL license](LICENSE). Each docker container grants additional permission under GNU GPL version 3 section 7. See the license files in the image specific folders.