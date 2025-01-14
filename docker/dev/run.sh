#!/bin/sh

env $(cat ".env" | grep -Ev '^#' | xargs) go test -count=1 -p=8 -parallel=8 ./... && go run ./cmd/ostraka/main.go