#!/bin/bash

pdflatex -output-directory output main.tex

mv "output/main.pdf" "Status Report 11-14-2018.pdf"
