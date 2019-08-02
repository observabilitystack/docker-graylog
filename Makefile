NAME=observabilitystack/graylog
VERSION=3.0.2-1
GRAYLOG_VERSION=3.0.2

.PHONY: all build release

build:
	docker build --build-arg GRAYLOG_VERSION=$(GRAYLOG_VERSION) --tag $(NAME):$(VERSION) --tag $(NAME):$(GRAYLOG_VERSION) .

release:
	docker push $(NAME):$(VERSION)