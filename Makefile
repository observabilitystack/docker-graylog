NAME=observabilitystack/graylog
VERSION=3.1.3
GRAYLOG_VERSION=3.1.3-2

.PHONY: all build release

build:
	docker build --build-arg GRAYLOG_VERSION=$(GRAYLOG_VERSION) --tag $(NAME):$(VERSION) --tag $(NAME):$(GRAYLOG_VERSION) .

release:
	docker push $(NAME):$(GRAYLOG_VERSION) $(NAME):$(VERSION)
