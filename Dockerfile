FROM golang:1.17-stretch AS builder

ARG SWAGGO_VERSION
RUN go get github.com/swaggo/swag@${SWAGGO_VERSION}

WORKDIR /go/pkg/mod/github.com/swaggo/swag@${SWAGGO_VERSION}
RUN make build && make install && make clean


FROM debian:stretch-20210927-slim
COPY --from=builder /go/bin/swag /
RUN mkdir /app
WORKDIR /app

ENTRYPOINT [ "/swag" ]
CMD [ "" ]