# nginx-container
A micro repo of nginx configuration template on the development process.

## Usage

### Requirement

* Makefile (recommended)

### Steps-by-steps use make scripts

#### Clean and build

* Clear this image useless: `make clear`

* Clear all images useless: `make prune`

* Remove current container: `make remove`

* Build image: `make build`

#### Start service

* Move or copy `dist` directory

* Start image with mount volume: `make start`

### Manual

* See `./Makefile`

## Credit and License

* Author: [ngthuc](https://ngthuc.com/)

* License: [MIT](https://github.com/ngthucdotcom/nginx-container/blob/master/LICENSE)
