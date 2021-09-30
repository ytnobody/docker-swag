FROM golang:1.17-stretch

ARG SWAGGO_VERSION
RUN go get github.com/swaggo/swag@${SWAGGO_VERSION}

WORKDIR /go/pkg/mod/github.com/swaggo/swag@${SWAGGO_VERSION}
RUN make build && make install

RUN mkdir /app
WORKDIR /app
RUN swag 

ENTRYPOINT [ "swag" ]
CMD [ "" ]