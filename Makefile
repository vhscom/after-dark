GO_VERSION := 1.21.5
BUILD_TARGET := alpine3.19

DOCKLE_VERSTAG := 0.4.13
HTMLTEST_VERSTAG := 0.17.0
HUGO_VERSTAG := 0.111.3
TRIVY_VERSTAG := 0.48.0

bindir := ${HOME}/.local/bin

all: check hugo trivy htmltest dockle

check:
	hash podman

configure: check
	podman pull docker.io/library/golang:${GO_VERSION}-${BUILD_TARGET}

trivy: configure
	podman build -t trivy:${TRIVY_VERSTAG} ./docker/trivy/ \
		--build-arg GO_VERSION --build-arg BUILD_TARGET
	podman create --replace --name temp trivy:${TRIVY_VERSTAG}
	podman cp temp:/trivy ${bindir}/trivy && podman rm -fv temp
	@echo
	@echo Installed
	@echo "  ${bindir}/trivy"
	@echo

htmltest: configure
	podman build -t htmltest:${HTMLTEST_VERSTAG} ./docker/htmltest/ \
		--build-arg GO_VERSION --build-arg BUILD_TARGET
	podman create --replace --name temp htmltest:${HTMLTEST_VERSTAG}
	podman cp temp:/htmltest ${bindir}/htmltest && podman rm -fv temp
	@echo
	@echo Installed
	@echo "  ${bindir}/htmltest"
	@echo

hugo: configure
	podman build -t hugo:${HUGO_VERSTAG} ./docker/hugo/ \
		--build-arg GO_VERSION --build-arg BUILD_TARGET
	podman create --replace --name temp hugo:${HUGO_VERSTAG}
	podman cp temp:/hugo ${bindir}/hugo && podman rm -fv temp
	@echo
	@echo Installed
	@echo "  ${bindir}/hugo"
	@echo

dockle: configure
	podman build -t dockle:${DOCKLE_VERSTAG} ./docker/dockle/ \
		--build-arg GO_VERSION \
		--build-arg BUILD_TARGET
	podman create --replace --name temp dockle:${DOCKLE_VERSTAG}
	podman cp temp:/dockle ${bindir}/dockle && podman rm -fv temp
	@echo
	@echo Installed
	@echo "  ${bindir}/dockle"
	@echo
