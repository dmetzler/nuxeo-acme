FROM docker.packages.nuxeo.com/nuxeo/nuxeo:11.4

ARG NUXEO_CLID

COPY nuxeo-acme-package/target/nuxeo-acme-package-1.0-SNAPSHOT.zip /package.zip
RUN /install-packages.sh --clid ${NUXEO_CLID} /package.zip nuxeo-web-ui

