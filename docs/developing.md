# Developing

## Clone GitHub repo

```
mkdir -p $GOPATH/src/github.com/serverless
cd $GOPATH/src/github.com/serverless
git clone git@github.com:serverless/event-gateway.git
cd event-gateway
```

## Install [`dep`](https://github.com/golang/dep) package manager

On macOS you can install or upgrade to the latest released version with Homebrew:

```sh
$ brew install dep
$ brew upgrade dep
```

Or you can install via `go get`:

```sh
go get -u github.com/golang/dep/cmd/dep
```

## Install dependencies

```sh
go get -u github.com/hashicorp/go-plugin
go get -u github.com/hashicorp/go-hclog
go get -u golang.org/x/net/{context,http2,trace}
dep ensure
```

## Run locally

```sh
go run cmd/event-gateway/main.go -dev
```

## Buliding the container
Make sure `ca-certificates.crt` file is present in the project directory.
```sh
CGO_ENABLED=0 GOOS=linux go build cmd/event-gateway/main.go -a -installsuffix cgo -o main .
```
Now run `docker build` with the arguments you want.
