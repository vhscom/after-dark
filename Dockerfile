#
# Copyright (C) 2019, 2020  VHS <vhsdev@tutanota.com>
#
# This file is part of After Dark.
#
# After Dark is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# After Dark is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

# DOCKER-VERSION 24.0.7, build afdd53b (podman version 4.8.1)

# Specify builder base image
ARG GO_VERSION=1.21.5
ARG BUILD_TARGET=alpine3.19

# Pull builder base image
FROM golang:${GO_VERSION}-${BUILD_TARGET} AS hugobuilder

# Set environment variables
ENV HUGO_VERSION=0.111.3 \
    CGO_ENABLED=1 \
    GOOS=linux \
    GO111MODULE=on \
    BUILD_TAGS="extended"

# Build from source using specified version
RUN \
  apk add --update --no-cache git gcc g++ musl-dev && \
  git -c advice.detachedHead=false clone --depth 1 \
      --branch v${HUGO_VERSION} https://github.com/gohugoio/hugo.git \
          $GOPATH/src/github.com/gohugoio/hugo && \
  cd ${GOPATH:-$HOME/go}/src/github.com/gohugoio/hugo && \
  go install -ldflags '-s -w -extldflags "-static"' -tags ${BUILD_TAGS}

# Install After Dark via script
FROM node:alpine as sitebuilder
COPY --from=hugobuilder /go/bin/hugo /usr/local/bin/hugo
WORKDIR /tmp
RUN wget -qO- https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh

# Move compiled binary into scratch container
FROM busybox
EXPOSE 80
COPY --from=hugobuilder /go/bin/hugo /usr/local/bin/hugo
COPY --from=sitebuilder /tmp/flying-toasters/ /opt/after-dark/
ENTRYPOINT ["/usr/local/bin/hugo"]
CMD ["server","--buildDrafts","--bind","0.0.0.0","--port","80","--source","/opt/after-dark","--destination","/var/www"]
