#!/bin/sh

ROOTDIR=`pwd`
TEMPLATES=$ROOTDIR/templates

cd en-GB && find . -name "*.md" -exec $ROOTDIR/rendermd.sh "{}" $TEMPLATES ";"

