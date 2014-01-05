#!/bin/sh

# $1 is the markdown file
# $2 is the template directory

BASE=`basename -s .md "$1"`
DIRNAME=`dirname "$1"`
MARKDOWN="markdown_github+header_attributes+yaml_metadata_block+inline_code_attributes"

PANDOC=$HOME/.cabal/bin/pandoc
HTML_TEMPLATE=$2/template.html
OUTPUT_PDF=${DIRNAME}/${BASE}.pdf
OUTPUT_HTML=${DIRNAME}/${BASE}.html

echo Creating $OUTPUT_PDF...
$PANDOC -f $MARKDOWN -t html5 -s --highlight-style pygments --section-divs --template=$HTML_TEMPLATE -o "$OUTPUT_HTML" "$1"
wkhtmltopdf "$OUTPUT_HTML" "$OUTPUT_PDF"
