#!/bin/bash

pdflatex -output-directory output main.tex

mv "output/main.pdf" "Status Report 09-19-18.pdf"
