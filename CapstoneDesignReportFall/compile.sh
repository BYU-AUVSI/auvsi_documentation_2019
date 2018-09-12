#!/bin/bash

MAINFILE=$1
TITLE=$2

cd tex
pdflatex -output-directory ./../output $MAINFILE.tex
cd ..

mv "output/$MAINFILE.pdf" "$TITLE.pdf"

