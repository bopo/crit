# Build Stage
FROM lacion/alpine-golang-buildimage:1.12.4 AS build-stage

LABEL app="build-crit"
LABEL REPO="https://github.com/bopo/crit"

ENV PROJPATH=/go/src/github.com/bopo/crit

# Because of https://github.com/docker/docker/issues/14914
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin

ADD . /go/src/github.com/bopo/crit
WORKDIR /go/src/github.com/bopo/crit

RUN make build-alpine

# Final Stage
FROM lacion/alpine-base-image:latest

ARG GIT_COMMIT
ARG VERSION
LABEL REPO="https://github.com/bopo/crit"
LABEL GIT_COMMIT=$GIT_COMMIT
LABEL VERSION=$VERSION

# Because of https://github.com/docker/docker/issues/14914
ENV PATH=$PATH:/opt/crit/bin

WORKDIR /opt/crit/bin

COPY --from=build-stage /go/src/github.com/bopo/crit/bin/crit /opt/crit/bin/
RUN chmod +x /opt/crit/bin/crit

# Create appuser
RUN adduser -D -g '' crit
USER crit

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/opt/crit/bin/crit"]
