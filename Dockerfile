FROM golang
MAINTAINER Drew Miller <drew@joyent.com>

ENV GOPATH=/go

RUN go get -u github.com/asib/spaceinvaders && \
    cd $GOPATH/src/github.com/asib/spaceinvaders && \
    go build

CMD /go/bin/spaceinvaders

