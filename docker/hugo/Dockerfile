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
