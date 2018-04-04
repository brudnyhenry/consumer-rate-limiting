#!/bin/bash
set -e

(cd  $KONG_DOWNLOAD; bin/busted --verbose --coverage $TRAVIS_BUILD_DIR/spec)
(cd $KONG_DOWNLOAD/bin; pwd; ls -la)
(cd $KONG_DOWNLOAD; pwd; ls -la)
(pwd; ls -la)
(cd $TRAVIS_BUILD_DIR;pwd; ls -la)
(cd $TRAVIS_BUILD_DIR/spec/consumer-rate-limiting;pwd; ls -la)
luacov-coveralls
