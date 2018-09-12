% This document class defines the BYU AUVSI Document Format
% 
% Author: Andrew Torgesen, 2018

\ProvidesClass{auvsi_doc}
\LoadClass[12pt]{article}

% Packages

\usepackage[english]{babel}
\usepackage{natbib}
\usepackage{url}
\usepackage[utf8x]{inputenc}
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage{parskip}
\usepackage{fancyhdr}
\usepackage{vmargin}
\usepackage{float}
\setmarginsrb{2.5 cm}{2.5 cm}{2.5 cm}{2.5 cm}{1 cm}{1.5 cm}{1 cm}{1.5 cm}

\usepackage{datetime}
\newdateformat{specialdate}{\twodigit{\THEMONTH}-\twodigit{\THEDAY}-\THEYEAR}

% Arguments (defaults and keys)
\RequirePackage{xkeyval}

\def\doctitle{Capstone Document}
\def\docversion{0.0}
\def\docdescription{A brief description}
\def\docauthor{TODO}
\def\docchecker{TODO}
\def\logopath{logo.pdf}

\define@key{auvsi_doc.cls}{AUVSITitle}[Capstone Document]{
	\def\doctitle{#1}
}

\define@key{auvsi_doc.cls}{AUVSIRevision}[0.0]{
	\def\docversion{#1}
}

\define@key{auvsi_doc.cls}{AUVSIDescription}[A brief description]{
	\def\docdescription{#1}
}

\define@key{auvsi_doc.cls}{AUVSIAuthor}[TODO]{
	\def\docauthor{#1}
}

\define@key{auvsi_doc.cls}{AUVSIChecker}[TODO]{
	\def\docchecker{#1}
}

\define@key{auvsi_doc.cls}{AUVSILogoPath}[logo.pdf]{
	\def\logopath{#1}
}

\ExecuteOptionsX{AUVSITitle,AUVSIRevision,AUVSIDescription,AUVSIAuthor,AUVSILogoPath,AUVSIChecker}
\ProcessOptionsX

% Page Styling

% \graphicspath{\logopath}

\title{\doctitle}  
\author{BYU AUVSI}                               
\date{\today}                                         

\makeatletter
\let\thetitle\@title
\let\theauthor\@author
\let\thedate\@date
\makeatother

\pagestyle{fancy}
\fancyhf{}
\rhead{\theauthor}
\lhead{\thetitle}
\cfoot{\thepage}

% Custom Command Definitions

\newcommand{\CapstoneTitlePage}{
	\begin{titlepage}
    \centering
    \vspace*{0.25 cm}
    \includegraphics[width=10cm]{\logopath}\\[0.5 cm]  % Team Logo
		\vspace*{1 cm}
		\begin{center}
    \textsc{\LARGE Brigham Young University}\\[0.5 cm]
		\textsc{\LARGE AUVSI Capstone Team}\\[1.25 cm]  % University Name
		\end{center}
    % \textsc{\Large \today}\\[0.75 cm]               % Course Code
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
    { \huge \bfseries \thetitle}\\
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]

		\begin{table}[H]
		\centering
		\begin{tabular}{|c|c|c|c|c|}
		\hline
		\textbf{Revision} & \textbf{Date} & \textbf{Description} & \textbf{Author} & \textbf{Checked By} \\ \hline
    \docversion	              & \specialdate\today & \docdescription  & \docauthor        & \docchecker      \\ \hline
		\end{tabular}
		\end{table}    
	\end{titlepage}
}

\newcommand{\AUVSITableOfContents}{
	\tableofcontents
	\pagebreak
}


