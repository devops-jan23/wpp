FROM debian
WORKDIR /opt/wpp
COPY . .
RUN apt-get -y update
RUN apt-get -y install build-essential
RUN make
CMD ["./demo"]
