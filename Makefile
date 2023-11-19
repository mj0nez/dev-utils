
PYTHON_VERSION?=3.12
BASE_IMAGE_VERSION?=slim-bookworm
BASE_IMAGE?=debian

OWNER?=mj0nez

build:
	docker build \
		-f ./Docker/Dockerfile.$(BASE_IMAGE) \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \
		--build-arg BASE_IMAGE_VERSION=$(BASE_IMAGE_VERSION) \
		-t $(OWNER)/python-dev:$(PYTHON_VERSION)-$(BASE_IMAGE_VERSION) \
		.
