#!/bin/bash

pdflatex -output-directory output main.tex

mv "output/main.pdf" "Capstone Team 45 Project Contract.pdf"
