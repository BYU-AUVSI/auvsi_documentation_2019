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
% \usepackage{hyperref}
\usepackage[table,xcdraw]{xcolor}
\usepackage{float}
\setmarginsrb{2.5 cm}{2.5 cm}{2.5 cm}{2.5 cm}{1 cm}{1.5 cm}{1 cm}{1.5 cm}
\usepackage{etextools}
\usepackage[font={small,it}]{caption}
\usepackage{tabularx}
\usepackage{tabu} % for different font sizes in each row

\usepackage{datetime}
\newdateformat{specialdate}{\twodigit{\THEMONTH}-\twodigit{\THEDAY}-\THEYEAR}

\usepackage{listings}
\usepackage{color}

\usepackage{array}
\usepackage{ragged2e}
\newcolumntype{P}[1]{>{\RaggedRight\hspace{0pt}}p{#1}}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{frame=tb,
  language=Java,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3
}

% Arguments (defaults and keys)
\RequirePackage{xkeyval}

\def\doctitle{Capstone Document}
\def\docversion{0.0}
\def\docdescription{A brief description}
\def\docauthor{TODO}
\def\docchecker{TODO}
\def\logopath{logo.pdf}
\def\docid{ID-ID}

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

\define@key{auvsi_doc.cls}{AUVSIDocID}[ID-ID]{
	\def\docid{#1}
}

\define@key{auvsi_doc.cls}{AUVSILogoPath}[logo.pdf]{
	\def\logopath{#1}
}

\ExecuteOptionsX{AUVSITitle,AUVSIRevision,AUVSIDescription,AUVSIAuthor,AUVSILogoPath,AUVSIChecker,AUVSIDocID}
\ProcessOptionsX

% Page Styling

% \graphicspath{\logopath}

\usepackage{etoolbox}
\makeatletter
\patchcmd\l@section{%
  \nobreak\hfil\nobreak
}{%
  \nobreak
  \leaders\hbox{%
    $\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$%
  }%
  \hfill
  \nobreak
}{}{\errmessage{\noexpand\l@section could not be patched}}
\makeatother

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
% \theauthor
% \rhead{\begin{picture}(0,0) \put(0,0){\includegraphics[width=1cm]{\logopath}} \end{picture}}
\rhead{\begin{picture}(65,0) \includegraphics[width=2.25cm]{\logopath} \end{picture}}
% \rhead{\begin{picture}(0,0) \put(0,0){\includegraphics[width=1cm]{example-image-a}} \end{picture}}
\lhead{\thetitle}
\cfoot{\thepage}

% Custom Command Definitions

\newenvironment{largequote}
{
	\hfill\begin{minipage}{\dimexpr\textwidth-1cm}
	\begingroup
	\fontsize{10pt}{12pt}\selectfont
}{
	\endgroup
	\end{minipage}
}

% - column num (integer)
% - column width (cm)
% - caption
% - label
\newenvironment{AUVSITable}[4]
{
	\begin{table}[H]
	\centering
	\caption{#3}
	\label{#4}
	\begin{tabular}{ |c@{} *{#1}{p{#2}|} } \hline
}{
	\end{tabular}
	\end{table}
}

\newenvironment{artifacttable}
{
	\begin{table}[H]
	\centering
	\begin{tabular}{|c@{} P{1.5cm}|P{1cm}|P{1.6cm}|P{2.75cm}|P{3.3cm}|P{3.3cm}|}
	\hline
	\rowcolor[HTML]{C0C0C0}
	& \textbf{ID} & \textbf{Rev.} & \textbf{Date} & \textbf{Description} & \textbf{Author} & \textbf{Checked By} \\ \hline
}{
	\end{tabular}
	\end{table}
}

\newcommand{\rowentryformat}[1]{& #1}

\newcommand{\entry}[1]{
	\edef\result{\csvloop[\rowentryformat]{#1}}
	\result \\ \hline
}

% 1. filepath
% 2. width
% 3. caption
% 4. label
\newcommand{\AUVSIFigure}[4]{
	\begin{center}
	\includegraphics[width=#2]{#1}
	\captionof{figure}{#3}
	\label{#4}
	\end{center}
}

\newcommand{\AUVSISection}[2]{
	% \newpage
	\section{#1}
	\input{#2}
}

% args:
% 	- ID
% 	- Revision No.
% 	- Date
% 	- Description
% 	- Author
% 	- Checked By
\newcommand{\ArtifactTableArgs}[6]{
	\begin{table}[H]
		\centering
		\begin{tabular}{|p{1.5cm}|p{1.7cm}|p{1.6cm}|p{2.75cm}|p{3.0cm}|p{3.0cm}|}
		\hline
		\rowcolor[HTML]{C0C0C0}
		\textbf{ID} & \textbf{Revision} & \textbf{Date} & \textbf{Description} & \textbf{Author} & \textbf{Checked By} \\ \hline
  #1 &  #2 & #3 & #4 & #5 & #6      \\ \hline
		\end{tabular}
	\end{table}
}

\newcommand{\ArtifactTable}{
\ArtifactTableArgs{\docid}{\docversion}{\specialdate\today}{\docdescription}{\docauthor}{\docchecker}
}

% Title page WITH artifact table
\newcommand{\CapstoneTitlePage}{
	\begin{titlepage}
    \centering
    \vspace*{0.25 cm}
    \includegraphics[width=10cm]{\logopath}\\[0.5 cm]  % Team Logo
		\vspace*{1 cm}
		\begin{center}
    \textsc{\LARGE Brigham Young University}\\[0.5 cm]
		\textsc{\LARGE AUVSI Capstone Team (Team 45)}\\[1.25 cm]  % University Name
		\end{center}
    % \textsc{\Large \today}\\[0.75 cm]               % Course Code
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
    { \huge \bfseries \thetitle}\\
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
		\ArtifactTable
	\end{titlepage}
}


\newenvironment{AUVSITitlePage}
{
	\begin{titlepage}
    \centering
    \vspace*{0.25 cm}
    \includegraphics[width=10cm]{\logopath}\\[0.5 cm]  % Team Logo
		\vspace*{1 cm}
		\begin{center}
    \textsc{\LARGE Brigham Young University}\\[0.5 cm]
		\textsc{\LARGE AUVSI Capstone Team (Team 45)}\\[1.25 cm]  % University Name
		\end{center}
    % \textsc{\Large \today}\\[0.75 cm]               % Course Code
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
    { \huge \bfseries \thetitle}\\
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
}{
	\end{titlepage}
}

\newcommand{\AUVSITableOfContents}{
	\tableofcontents
	\pagebreak
}
