This is a demonstrated image from tutorials:

* https://augustin-riedinger.fr/en/resources/using-docker-as-a-development-environment-part-1/
* https://augustin-riedinger.fr/en/resources/using-docker-as-a-development-environment-part-2/

## Usage

### Pre-requisition
* Git installed
* Docker installed
* docker-compose installed

### Build and Run
1. `git clone git@github.com:fbukevin/docker-nodejs-mongo-demo.git`
2. `docker-compose build`
3. `docker-compose run --rm --service-ports app|db /bin/bash`
