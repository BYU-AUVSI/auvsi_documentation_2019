#!/bin/bash

pdflatex -output-directory output main.tex

mv "output/main.pdf" "Status Report TEMPLATE.pdf"
