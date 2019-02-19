FROM golang:1.11-alpine
RUN apk update
RUN apk add git
RUN adduser -D arduino
USER arduino
RUN go get -u github.com/arduino/arduino-cli
RUN arduino-cli core update-index
RUN arduino-cli core install arduino:samd
CMD ["arduino-cli"]
