LaTex source code for the reports and documentation for the BYU AUVSI Capstone Team for the year 2019.

# Table of Contents

- [Setting up a project](#setup)
  - [Installation](#installation)
  - [Project resources](#project-resources)
  - [Creating artifacts](#create-artifacts)
- [Useful commands](#useful-commands)
  - [AUVSITitlePage](#auvsi-title-page)
  - [AUVSITableOfContents](#auvsi-table-of-contents)
  - [artifacttable](#artifacttable)
  - [AUVSIFigure](#auvsi-figure)
  - [AUVSISection](#auvsi-section)
- [Revision control](#revision-control)

# Setting up a project

## Installation

In order to compile pdf documents, you need LaTex on your machine. The following link will provide guidance for installing LaTex according to your operating system:

<https://www.latex-project.org/get/>

Depending on the packages that you invoke in your documents, you may need to install additional libraries.

## Project resources

The *\_resources\_* directory contains some common files that are needed for each individual document project. The most important of these files is *auvsi\_doc.cls*, a class definition file that defines several shorthand LaTex commands for standardized document formatting.

In your project folder, **make sure** *auvsi\_doc* is in the same directory as your .tex files and that you have the relative path to *logo.pdf* (see examples below). *Make sure you’ve copied over the version of auvsi\_doc.cls found in the \_resources\_ directory, as this is the version of the file kept up-to-date with this documentation*.

## Creating artifacts

Create a new folder, and place a copy of *auvsi\_doc.cls* and *logo.pdf* in there with your .tex file.

Format your .tex file according to the following:

```
\documentclass[]{auvsi_doc}
\setkeys{auvsi_doc.cls}{
	AUVSITitle={[TITLE OF YOUR DOCUMENT]},
	AUVSILogoPath={[RELATIVE PATH TO LOGO FILE, I.E. ./../figs/logo.pdf]}
}

% include extra packages, if needed

\begin{document}

\begin{AUVSITitlePage}
\begin{artifacttable}
\entry{[ARTIFACT ID], [REVISION NUMBER], [DATE], [DESCRIPTION], [AUTHOR], [CHECKED BY]}
% additional \entry{} commands for extra rows in the revision table, if needed
\end{artifacttable}
\end{AUVSITitlePage}

% document contents (see below for LaTex commands that make your life easier)

\end{document}
```

# Useful Commands

Use the following commands in your .tex file to handle common formatting content.

## AUVSITitlePage

This environment, when placed directly after ```\begin{document}```, generates a formatted title page as the first page of your document. Anything placed in between the ```\begin{AUVSITitlePage}``` and ```\end{AUVSITitlePage}``` commands will be inserted in the title page, as well.

Example:

```
\begin{AUVSITitlePage}
I am a sentence on the title page!
\end{AUVSITitlePage}
```

## AUVSITableOfContents

If this command is inserted before your section headings in your document section, it will generate a formatted table of contents.

Example:

```
\AUVSITableOfContents
```

## artifacttable

This environment makes it easy to make an artifact revision table in LaTex. Within the environment, each ```\entry{}``` inserts a new row into your table.

Example:

```
\begin{artifacttable}
\entry{[ARTIFACT ID], [REVISION NUMBER], [DATE], [DESCRIPTION], [AUTHOR], [CHECKED BY]}
% additional \entry{} commands for extra rows in the revision table, if needed
\end{artifacttable}
```

## AUVSIFigure

This command renders a figure exactly where the command is placed (because it uses ```\begin{center}``` rather than ```\begin{figure}```, which generates a float).

Example:

```
\AUVSIFigure
{[RELATIVE PATH TO FIGURE, i.e. figs/figure.pdf]}
{[FIGURE WIDTH, i.e. \textwidth]}
{[FIGURE CAPTION]}
{[FIGURE LABEL, i.e. fig:myFig]}
```

## AUVSISection

This command is for pulling in an external .tex file and making it its own section within a larger compilation, which is useful for larger LaTex projects (like the Project Contract).

Example (root .tex file):

```
\AUVSISection{[SECTION TITLE]}{[NAME OF EXTERNAL .TEX FILE WITHOUT THE .tex EXTENSION]}
```

In your external .tex file, you should have the following line at the top:

```
% !TEX root=main.tex
```

It is not necessary to make a section heading in the external .tex file; the ```\AUVSISection{}{}``` command makes the section heading for you.

# Revision control

All documents start at revision 0.1. The revision numbering scheme is primary.secondary. When the document is published, the primary revision number is rolled up to the next integer and the secondary number is reset to 0. (i.e 0.4 -> 1.0). Note that 0.9 < 0.10.
