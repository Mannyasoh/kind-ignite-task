#!/bin/bash

kind create cluster --config=./kind-config.yaml --name kind --wait 10s
docker container ls --format "table {{.Image}}\t{{.State}}\t{{.Names}}"

