#
# Hugo Dockerfile for After Dark.
# View the theme at <https://vhs.codeberg.page/after-dark/>.
#
# Copyright (C) 2018 VHS <vhsdev@tutanota.com>
#
# This work is free. You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar. See the COPYING file for more details.
#

# DOCKER-VERSION 17.12.0-ce, build c97c6d6

# Pull hugo builder base image
FROM golang:1.10.3-alpine3.7 AS hugobuilder

# Set environment variables for hugo build
ENV HUGO_VERSION=0.44 \
    CGO_ENABLED=0 \
    GOOS=linux

# Build hugo from source using specified version
RUN \
  apk add --update --no-cache git musl-dev && \
  git clone https://github.com/gohugoio/hugo.git $GOPATH/src/github.com/gohugoio/hugo && \
  cd ${GOPATH:-$HOME/go}/src/github.com/gohugoio/hugo && \
  git checkout v$HUGO_VERSION && \
  go get github.com/golang/dep/cmd/dep && \
  dep ensure -vendor-only && \
  go install -ldflags '-s -w'

# Move compiled binary into own container
FROM scratch
COPY --from=hugobuilder /go/bin/hugo /hugo
ENTRYPOINT ["/hugo"]
CMD ["--help"]
