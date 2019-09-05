FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y open-cobol wget

RUN mkdir app

RUN cd app && \
  wget https://github.com/phonkee/goexpose/releases/download/1.0.0/goexpose-linux-amd64-1.0.0 && \
  chmod +x goexpose-linux-amd64-1.0.0

COPY src /app/
RUN cd app && cobc -free -x products.cbl

WORKDIR /app

EXPOSE 8080

CMD [ "./goexpose-linux-amd64-1.0.0" ]
