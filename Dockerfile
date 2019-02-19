FROM golang:1.11-alpine
RUN apk update
RUN apk add git
RUN go get -u github.com/arduino/arduino-cli
CMD ["arduino-cli"]
