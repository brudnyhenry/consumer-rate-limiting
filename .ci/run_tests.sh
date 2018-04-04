#!/bin/bash
set -e

(cd $KONG_DOWNLOAD; bin/busted -c $TRAVIS_BUILD_DIR/spec)
luacov-coveralls
