#!/bin/bash

pdflatex -output-directory output main.tex

mv "output/main.pdf" "Status Report 11-7-2018.pdf"
