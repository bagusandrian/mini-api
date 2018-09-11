FROM golang:1.11.0-stretch

  RUN  mkdir -p /go/src \
    && mkdir -p /go/bin \
    && mkdir -p /go/pkg
  ENV GOPATH=/go
  ENV PATH=$GOPATH/bin:$PATH   

  RUN mkdir -p $GOPATH/src/github.com/bagusandrian 
  ADD . $GOPATH/src/github.com/bagusandrian/mini-api

  WORKDIR $GOPATH/src/github.com/bagusandrian/mini-api 
  RUN go get -u github.com/golang/dep/cmd/dep
  RUN dep version
  RUN dep ensure -v
  run GOCACHE=off go test -cover -v -timeout 60s ./...
  RUN go build -v && ./mini-api