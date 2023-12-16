GO_VERSION := 1.21.5
BUILD_TARGET := alpine3.19
HUGO_VERS := 0.119.0
HTMLTEST_VERS := 0.17.0
TRIVY_VERS := 0.48.0

bindir := ${HOME}/.local/bin

all: check hugo trivy htmltest

check:
	hash podman

configure:
	podman pull docker.io/library/golang:${GO_VERSION}-${BUILD_TARGET}

trivy: configure
	podman build -t trivy/v${TRIVY_VERS} ./docker/trivy/
	podman create --replace --name temp trivy/v${TRIVY_VERS}:latest
	podman cp temp:/trivy ${bindir}/trivy && podman rm -fv temp
	@echo
	@echo Installed
	@echo "  ${bindir}/trivy"
	@echo

htmltest: configure
	podman build -t htmltest/v${HTMLTEST_VERS} ./docker/htmltest/
	podman create --replace --name temp htmltest/v${HTMLTEST_VERS}:latest
	podman cp temp:/htmltest ${bindir}/htmltest && podman rm -fv temp
	@echo
	@echo Installed
	@echo "  ${bindir}/htmltest"
	@echo

hugo: configure
	podman build -t hugo/v${HUGO_VERS} ./docker/hugo/
	podman create --replace --name temp hugo/v${HUGO_VERS}:latest
	podman cp temp:/hugo ${bindir}/hugo && podman rm -fv temp
	@echo
	@echo Installed
	@echo "  ${bindir}/hugo"
	@echo
