ARG GRAYLOG_VERSION
FROM graylog/graylog:${GRAYLOG_VERSION}
LABEL maintainer "Torsten Bøgh Köster <tbk@thiswayup.de>"

ENV MONITORING_PLUGIN_VERSION=1.5.0

# add plugin / extension pack jars
RUN curl -fsSL -o /usr/share/graylog/plugin/metrics-reporter-prometheus-${MONITORING_PLUGIN_VERSION}.jar \
    https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/${MONITORING_PLUGIN_VERSION}/metrics-reporter-prometheus-${MONITORING_PLUGIN_VERSION}.jar && \
    curl -fsSL -o /usr/share/graylog/plugin/metrics-reporter-jmx-${MONITORING_PLUGIN_VERSION}.jar \
    https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/${MONITORING_PLUGIN_VERSION}/metrics-reporter-jmx-${MONITORING_PLUGIN_VERSION}.jar && \
    curl -fsSL -o /usr/share/graylog/plugin/metrics-reporter-graphite-${MONITORING_PLUGIN_VERSION}.jar \
    https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/1.5.0/metrics-reporter-graphite-${MONITORING_PLUGIN_VERSION}.jar
