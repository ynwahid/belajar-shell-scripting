#!/bin/bash

set -e

function unit_tests() {
	echo "running unit tests"
	return 1
}

function integration_tests() {
	echo "running integration tests"
	return 0
}

function e2e_tests() {
	echo "running e2e tests"
	return 1
}

unit_tests 
integration_tests 
e2e_tests
