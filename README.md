# AUVSI Documentation 2019

Latex source code for the reports and documentation for the BYU AUVSI Capstone Team for the year 2019.

## How to Use

### Installation

In order to compile pdf documents, you need Latex on your machine. The following link will provide guidance for installing latex according to your operating system:

<https://www.latex-project.org/get/>

Depending on the packages that you invoke in your documents, you may need to install additional libraries.

### Project Resources

The *\_resources\_* directory contains some common files that can be useful for each individual document project. The most important of these files is *auvsi\_doc.cls*, a class definition file that defines several shorthand Latex commands for standardized document formatting.

In your project folder, make sure *auvsi\_doc* is in the same directory as your .tex files if you want to use the shorthand commands.

### Suggested File Contents

Format your root .tex file according to the following:

```
\documentclass[]{auvsi_doc}
\setkeys{auvsi_doc.cls}{
	AUVSITitle={[TITLE OF YOUR DOCUMENT]},
	AUVSIRevision=[REVISION NO.],
	AUVSIDescription={[BRIEF DOCUMENT DESCRIPTION]},
	AUVSIAuthor={[DOCUMENT AUTHOR]},
	AUVSIChecker={[DOCUMENT CHECKER]},
	AUVSILogoPath={[RELATIVE PATH TO LOGO FILE, I.E. ./../figs/logo.pdf]}
}

% include extra packages, if needed

\begin{document}

% document contents

\end{document}
```
This will provide access to the shorthand commands outlined in the following section. It will also integrate the document metadata into the automated formatting so that the user doesn't have to worry about it.

### Shorthand Commands

**\\CapstoneTitlePage**

If this command is inserted at the beginning of the document section, it will generate a title page at the beginning of your generated pdf, with the following features:
- BYU AUVSI logo and team name
- Document title
- Artifact table (with revision, date, description, author, and checked by)

**\\AUVSITableOfContents**

If this command is inserted before your section headings in your document section, it will generate a formatted table of contents.

## Documentation Style Notes
**Revision Numbers**

All documents start at revision 0.1. The revision numbering scheme is primary.secondary. When the document is published, the primary  revision number is rolled up to the next integer and the secondary number is reset to 0. (i.e 0.4 -> 1.0). Note that 0.9 < 0.10.
