a collection of random scripts for openstax developers

## installation
to install this repo for the first time run:
```
curl https://raw.githubusercontent.com/openstax/ox-bin/main/remote-install.bash | bash
```

## udpate
to get updates to this repo after installing it run:
```
ox update
```

## scripts

### build-swagger-client
```
# re-build the search client based on configs stored in the npm package
# the resulting package is re-published with an automatically incremented
# version based on the swagger api version
build-swagger-client @openstax/open-search-client

# build the search client for the first time or with a new swagger endpoint 
# the resulting package is published with an automatically generated verison
# based on the swagger api version
build-swagger-client @openstax/open-search-client --api_host openstax.org --swagger_path /open-search/api/v0/swagger

# run without arguments for help and additional options
build-swagger-client
```

### set_aws_creds
```
# load aws credentials using an internally versioned clone of openstax/aws-access
. set_aws_creds -r sandbox:unified-deployment -i assume-role
```
