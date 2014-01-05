#!/bin/sh

BASE=`basename -s .md "$1"`
DIRNAME=out/`dirname "$1"`

mkdir -p "${DIRNAME}"

OUTPUT_PDF=${DIRNAME}/${BASE}.pdf
OUTPUT_HTML=${DIRNAME}/${BASE}.html

echo Creating $OUTPUT_PDF...
sed -e 's/{.*}//' "$1" | pandoc -f markdown_github -s -o "$OUTPUT_PDF"
sed -e 's/{.*}//' "$1" | pandoc -f markdown_github -s -o "$OUTPUT_HTML"
