#!/bin/bash

asciidoctor -r asciidoctor-diagram \
    -r asciidoctor-pdf \
    -a pdf-themesdir=resources/themes \
    -a pdf-theme=example \
    -b pdf \
    ./example-doc/index.adoc
