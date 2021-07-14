FROM debian

ARG PROTOBUF_VERSION

WORKDIR /opt

RUN apt update && apt install -y curl unzip
ADD setup.sh .
RUN sh setup.sh

ENV PATH="/opt/protobuf/bin:$PATH"

ENTRYPOINT [ "protoc" ]