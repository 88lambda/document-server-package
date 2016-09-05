#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice

cd $BUILD_DIR/sdkjs && make clean && make
cd $BUILD_DIR/server && make clean && make all build-date htmlfileinternal
cd $BUILD_DIR/document-server-integration/web/documentserver-example/nodejs && npm install
cd $BUILD_DIR/package && make -e clean && make -e deb
