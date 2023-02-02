FROM debian:bullseye-slim
CMD ["./demo"]
EXPOSE 5000
WORKDIR /opt/wpp
COPY . .
RUN apt-get -y update \
	&& apt-get -y install build-essential \
	&& make \
	&& apt-get purge -y build-essential \
	&& apt-get autoremove -y
