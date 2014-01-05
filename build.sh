#!/bin/sh

find . -name "*.md" -exec ./rendermd.sh "{}" ";"

