#!/usr/bin/env bash

set -e

docker build ${1} --tag asciich/tox-docker .