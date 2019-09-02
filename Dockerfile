# Build
FROM centos:7.5.1804 as builder

RUN yum install -y epel-release \
 && yum install -y python-pip \
 && pip install --upgrade pip \
 && pip download -d /packages yq

# Main
FROM pypiserver/pypiserver:v1.3.0
COPY --from=builder /packages /data/packages
