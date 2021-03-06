a collection of random scripts for openstax developers

## installation
to install this repo for the first time run:
```
curl https://raw.githubusercontent.com/openstax/ox-bin/main/remote-install.bash | bash
```
which will checkout this repo to ~/.ox-bin and add a symlink on your path to the `ox` command

## udpate
to get updates to this repo after installing it run:
```
ox update
```

## scripts

### build-swagger-client
builds and publishes npm modules for swagger api clients
```
# re-build the search client based on configs stored in the npm package
# the resulting package is re-published with an automatically incremented
# version based on the swagger api version
ox build-swagger-client @openstax/open-search-client

# build the search client for the first time or with a new swagger endpoint 
# the resulting package is published with an automatically generated verison
# based on the swagger api version
ox build-swagger-client @openstax/open-search-client --api_host openstax.org --swagger_path /open-search/api/v0/swagger

# run without arguments for help and additional options
ox build-swagger-client
```

## environments
these scripts export stuff to your shell, and need to be sourced with either `.` or `source`

### set_aws_creds
sets environemnt variables for aws cli authentication
```
# load aws credentials using an internally versioned clone of openstax/aws-access
. ox set_aws_creds -r sandbox:unified-deployment -i assume-role
```

## To make a new script

add a file in `/lib` and call it with `ox my-file-name`

add a section to this README, the first line after the `### my-file-name` heading is used
in the usage block in `ox help` eg:
```
### my-file-name
my useful but short description

other useful information
```
