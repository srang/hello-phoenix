#!/bin/env bash
buildah bud -t phoenixtest:latest .
podman run --rm -it -v $(pwd):/opt/app localhost/phoenixtest:latest