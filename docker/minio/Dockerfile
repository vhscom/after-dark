#
# Copyright (C) 2019  VHS <vhsdev@tutanota.com>
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

# DOCKER-VERSION 19.03.1-ce, build 74b1e89e8a

# Specify build image
ARG GO_VERSION=1.11.4
ARG BUILD_TARGET=alpine3.8

# Pull mc builder base image
FROM golang:${GO_VERSION}-${BUILD_TARGET} AS mcbuilder

# Set environment variables for mc build
ENV MC_RELEASE_TAG=RELEASE.2019-07-31T19-17-35Z \
    CGO_ENABLED=0 \
    GO111MODULE=on

# Build mc from source using specified version
RUN \
  apk add --update --no-cache git musl-dev && \
  git clone https://github.com/minio/mc.git $GOPATH/src/github.com/minio/mc && \
  cd ${GOPATH:-$HOME/go}/src/github.com/minio/mc && \
  git checkout $MC_RELEASE_TAG && \
  go install -v -ldflags "$(go run buildscripts/gen-ldflags.go)"

# Move compiled binary into own container
FROM scratch
COPY --from=mcbuilder /go/bin/mc /mc
ENTRYPOINT ["/mc"]
