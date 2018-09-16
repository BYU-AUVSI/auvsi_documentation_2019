#!/bin/bash

pdflatex -output-directory output main.tex

mv "output/main.pdf" "Fall Camp Documents.pdf"
