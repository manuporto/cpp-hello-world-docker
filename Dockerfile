FROM ubuntu:16.04

RUN apt update
RUN apt install -y \
    build-essential \
    cmake \
    valgrind

RUN mkdir /src
RUN mkdir /build
COPY . /src
WORKDIR /build
RUN cmake ../src && make
CMD ["./concus"]

