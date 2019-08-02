ARG GRAYLOG_VERSION
FROM graylog/graylog:${GRAYLOG_VERSION}
LABEL maintainer "Torsten Bøgh Köster <tbk@thiswayup.de>"

USER root

# add precompiled graylog monitoring plugins
COPY rootfs/ /
RUN chown graylog:graylog /usr/share/graylog/plugin/*.jar && \
    ls -la /usr/share/graylog/plugin

USER ${GRAYLOG_USER}
