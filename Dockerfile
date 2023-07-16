FROM alpine

LABEL "name"="TAR Builder"
LABEL "description"="GitHub Action for build TAR."
LABEL "maintainer"="iHub TO <mail@ihub.to>"
LABEL "repository"="https://github.com/ghastore/build-tar.git"
LABEL "homepage"="https://github.com/ghastore"

COPY *.sh /
RUN apk add --no-cache bash curl git git-lfs rhash xz

ENTRYPOINT ["/entrypoint.sh"]
