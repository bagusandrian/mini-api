
# Getting Started

##  Prerequisites

- Install golang if not already installed. Ref: [https://golang.org/dl/]
- Set $GOPATH and $GOROOT environment variables. Ref: [https://golang.org/doc/install]

## Build

```sh
$ git clone https://github.com/bagusandrian/mini-api.git
```
Advise: clone it under one of the gopaths' src directory e.g. `$GOPATH/src/github.com/bagusandrian/`. 
### run on your local
if u run on local, u must install postgresql, and export structure table and example data. I already reserve for u.

```sh
$ go get -v
$ go build && ./mini-api
```

> Logs are available on console. If service starts successfully (see logs) then it will start at port :9090

### Tips

```sh
$ export ENVSYS=production # to run in docker/production environment
$ export ENVSYS=development # to run in development environment. this is default (if ENVSYS is empty or unset)
```
### run with docker

# API DOCUMENTATION
for api u can see: [API DOCUMENTATION](https://github.com/bagusandrian/mini-api/blob/branch/api_documentation.md)
