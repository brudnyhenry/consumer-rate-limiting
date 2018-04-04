#!/bin/bash
set -e

(cd  $KONG_DOWNLOAD; bin/busted --verbose --coverage $TRAVIS_BUILD_DIR/spec)
(cd $KONG_DOWNLOAD; pwd; ls -la)
(pwd; ls -la)
(cd $TRAVIS_BUILD_DIR; ls -la)
(cd $TRAVIS_BUILD_DIR/spec; ls -la)
(cd $KONG_DOWNLOAD; luacov-coveralls)
