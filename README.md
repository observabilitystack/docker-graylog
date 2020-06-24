# Observable Graylog Docker image

![TravisCI](https://travis-ci.org/observabilitystack/docker-graylog.svg?branch=master)
![docker-pulls](https://img.shields.io/docker/pulls/observabilitystack/graylog)
![apache license](https://img.shields.io/github/license/observabilitystack/docker-graylog)

A Graylog Docker image with monitoring extensions (JMX, 
[Prometheus](https://prometheus.io/), [Graphite](https://graphiteapp.org/))
preinstalled. Use this image as drop-in replacement for the original image. 
Try this image:

```
docker pull observabilitystack/graylog:3.3.2
```

## Kubernetes: Monitoring Graylog with Prometheus

To start monitoring your Graylog instance with Prometheus, add the following annotations to your
[Kubernetes](https://kubernetes.io/) deployment. When using Graylog in production, I recommend
keeping an eye on the internal graylog queues and threading.

```yaml
apiVersion: apps/v1
kind: Deployment
spec:
  template:
    metadata:
      annotations:
        "prometheus.io/scrape": "true"
        "prometheus.io/path": "/api/plugins/org.graylog.plugins.metrics.prometheus/metrics"
        "prometheus.io/port": "9000"
```

## License

This repo is distributed under [MIT license](LICENSE).
