FROM debian:bullseye-slim
WORKDIR /opt/wp
CMD ["./demo"]
RUN apt-get -y update
RUN apt-get -y install build-essential
COPY . .
RUN make
