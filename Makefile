VERSION := $(shell cat VERSION)
DOCKER_IMAGE := 'dolomate/osmosis'

.PHONY: build

build:
	@echo "Build: $(VERSION)"	
	docker build -f Dockerfile -t $(DOCKER_IMAGE):$(VERSION) .
	docker images | grep $(DOCKER_IMAGE) | grep $(VERSION)

release:
	@echo "Release: $(VERSION)"
	docker pull openjdk:jdk-alpine
	docker build -f Dockerfile -t $(DOCKER_IMAGE):$(VERSION) .
	docker images | grep $(DOCKER_IMAGE) | grep $(VERSION)

run:
	@echo "Run: $(VERSION)"
	docker run -it -e BBOX=11.9,46.3,12.2,46.7 -v ${PWD}/data:/data $(DOCKER_IMAGE):$(VERSION)
  @echo "region.pbf ready"