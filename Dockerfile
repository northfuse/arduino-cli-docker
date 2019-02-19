FROM golang:1.11-stretch
RUN apt update
RUN apt install git make
RUN useradd -m arduino
USER arduino
RUN go get -u github.com/arduino/arduino-cli
RUN arduino-cli core update-index
RUN arduino-cli core install arduino:samd
ENTRYPOINT ["arduino-cli"]
CMD []
