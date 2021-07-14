FROM debian

ENV PROTOBUF_VERSION 3.17.3

WORKDIR /opt

RUN apt update && apt install -y curl unzip
ADD setup.sh .
RUN sh setup.sh

ENV PATH="/opt/protobuf/bin:$PATH"

ENTRYPOINT [ "protoc" ]