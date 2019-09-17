ARG GRAYLOG_VERSION
FROM graylog/graylog:${GRAYLOG_VERSION}
LABEL maintainer "Torsten Bøgh Köster <tbk@thiswayup.de>"

ENV GRAYLOG_METRICS_PLUGIN_VERSION 3.0.0

# download graylog monitoring plugins
RUN curl -sLfo /usr/share/graylog/plugin/metrics-reporter-graphite-${GRAYLOG_METRICS_PLUGIN_VERSION}.jar "https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/${GRAYLOG_METRICS_PLUGIN_VERSION}/metrics-reporter-graphite-${GRAYLOG_METRICS_PLUGIN_VERSION}.jar" && \
    curl -sLfo /usr/share/graylog/plugin/metrics-reporter-jmx-${GRAYLOG_METRICS_PLUGIN_VERSION}.jar "https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/${GRAYLOG_METRICS_PLUGIN_VERSION}/metrics-reporter-jmx-${GRAYLOG_METRICS_PLUGIN_VERSION}.jar" && \
    curl -sLfo /usr/share/graylog/plugin/metrics-reporter-prometheus-${GRAYLOG_METRICS_PLUGIN_VERSION}.jar "https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/${GRAYLOG_METRICS_PLUGIN_VERSION}/metrics-reporter-prometheus-${GRAYLOG_METRICS_PLUGIN_VERSION}.jar"
