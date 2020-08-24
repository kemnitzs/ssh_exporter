FROM golang:alpine

RUN apk add git
RUN go get github.com/kemnitzs/ssh_exporter

WORKDIR /go/src/github.com/kemnitzs/ssh_exporter 

RUN go build

CMD [ "./ssh_exporter" ]
