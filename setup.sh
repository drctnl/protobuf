set -e

cd /tmp

NAME=protoc-${PROTOBUF_VERSION}-linux-x86_64
ARCHIVE=${NAME}.zip
URL=https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOBUF_VERSION}/${ARCHIVE}

echo Downloading $URL

curl -L $URL --output ${ARCHIVE}

unzip ${ARCHIVE}
rm *.zip
mkdir /opt/protobuf
mv * /opt/protobuf