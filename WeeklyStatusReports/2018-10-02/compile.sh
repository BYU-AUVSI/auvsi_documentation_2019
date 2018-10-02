#!/bin/bash

pdflatex -output-directory output main.tex

mv "output/main.pdf" "Status Report 10-02-2018.pdf"
