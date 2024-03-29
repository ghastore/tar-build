FROM alpine

LABEL "name"="TAR Builder"
LABEL "description"="GitHub Action for build TAR."
LABEL "maintainer"="Kai Kimera <mail@kai.kim>"
LABEL "repository"="https://github.com/ghastore/tar-build.git"
LABEL "homepage"="https://github.com/ghastore"

COPY *.sh /
RUN apk add --no-cache bash curl git git-lfs rhash xz

ENTRYPOINT ["/entrypoint.sh"]
