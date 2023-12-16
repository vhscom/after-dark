#
# Copyright (C) 2023  VHS <vhsdev@tutanota.com>
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

# Specify build image
ARG GO_VERSION=1.21.5
ARG BUILD_TARGET=alpine3.19

# Pull builder base image
FROM golang:${GO_VERSION}-${BUILD_TARGET} AS trivybuilder

# Set trivy environment variables
ARG TRIVY_VERSION=0.48.0
ENV CGO_ENABLED=0 \
    GOOS=linux \
    GO111MODULE=on

# Build trivy from source using specified version
RUN \
  apk add --update --no-cache git gcc g++ musl-dev binutils-gold && \
  git -c advice.detachedHead=false clone --depth 1 \
      --branch v${TRIVY_VERSION} https://github.com/aquasecurity/trivy.git \
          $GOPATH/src/github.com/aquasecurity/trivy && \
  cd ${GOPATH:-$HOME/go}/src/github.com/aquasecurity/trivy && \
  go install ./cmd/trivy/

# Move compiled binary into own container
FROM scratch
COPY --from=trivybuilder /go/bin/trivy /trivy
ENTRYPOINT ["/trivy"]
CMD ["--help"]
