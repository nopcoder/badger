#!/bin/bash

# Run this script from its directory, so that badgerpb4.proto is where it's expected to
# be.

go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
protoc --proto_path=. --go_out=. --go_opt=paths=source_relative -I=. badgerpb4.proto
