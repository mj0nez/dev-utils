
PYTHON_VERSION?=3.12

BASE_IMAGE_VERSION?=slim-bookworm

build:
	docker build \
		-f ./Docker/Dockerfile.debian \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \
		--build-arg BASE_IMAGE_VERSION=$(BASE_IMAGE_VERSION) \
		-t python-dev:$(PYTHON_VERSION)-$(BASE_IMAGE_VERSION) \
		.
