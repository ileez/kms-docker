# kms for Dockerfile
FROM alpine:latest
MAINTAINER ilee

ENV kms_DIR=/usr/local/KMS-Server \
    vlmcsd_version=1111
RUN set -ex && \
    kms_latest=https://github.com/Wind4/vlmcsd/releases/download/svn${vlmcsd_version}/binaries.tar.gz && \
    kms_latest_filename=binaries.tar.gz && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache bash wget tar && \
    [ ! -d ${kms_DIR} ] && mkdir -p ${kms_DIR} && cd ${kms_DIR} && \
    wget --no-check-certificate -q ${kms_latest} && \
    tar -xzf ${kms_latest_filename} && \
    cd ${kms_DIR}/binaries/Linux/intel/static && \
    mv vlmcsdmulti-x64-musl-static ${kms_DIR}/kmsrv && \
    chmod 755 ${kms_DIR}/kmsrv && \
    rm -rf /var/cache/apk/* ~/.cache ${kms_DIR}/${kms_latest_filename} ${kms_DIR}/binaries

EXPOSE 1688
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
