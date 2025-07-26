#!/usr/bin/env bash

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict base.bu >base.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict nas0.bu >nas0.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict serv0.bu >serv0.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict modules/image-base.bu >modules/image-base.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict modules/image-nas0.bu >modules/image-nas0.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict modules/image-serv0.bu >modules/image-serv0.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict modules/user-default-unpriv.bu >modules/user-default-unpriv.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict modules/user-default-autologin.bu >modules/user-default-autologin.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict modules/user-containers.bu >modules/user-containers.ign

podman run --interactive --rm --security-opt label=disable \
  --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
  --pretty --strict modules/filesystem-nas0.bu >modules/filesystem-nas0.ign

git add .
git commit && git push
