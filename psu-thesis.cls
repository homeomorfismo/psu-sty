%% psu-thesis.cls
%% Portland State University Thesis/Dissertation Document Class
%% Copyright (c) 2025

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{psu-thesis}[2025/04/11 Portland State University Thesis/Dissertation Class]

%% Base class
\LoadClass[12pt,letterpaper,oneside]{memoir}

%% Required packages
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{caption}
\RequirePackage{etoolbox}
\RequirePackage{lipsum} % For sample text

%% Set up geometry (1-inch margins as required)
\geometry{
  letterpaper,
  margin=1in,
  includeheadfoot
}

%% Define thesis type (dissertation or thesis)
\newcommand{\thesistype}[1]{\def\@thesistype{#1}}
\thesistype{thesis}  % Default value

\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\graduationmonth}[1]{\def\@graduationmonth{#1}}
\newcommand{\graduationyear}[1]{\def\@graduationyear{#1}}

%% Committee members
\newcommand{\chair}[1]{\def\@chair{#1}}
\newcommand{\memberOne}[1]{\def\@memberOne{#1}}
\newcommand{\memberTwo}[1]{\def\@memberTwo{#1}}
\newcommand{\memberThree}[1]{\def\@memberThree{#1}}
\newcommand{\memberFour}[1]{\def\@memberFour{#1}}

%% Document format (monograph or multi-paper)
\newcommand{\documentformat}[1]{\def\@documentformat{#1}}
\documentformat{monograph} % Default is monograph

%% Load hyperref last to avoid conflicts
\RequirePackage{hyperref}
\hypersetup{
    breaklinks=true,
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    filecolor=black,
    urlcolor=blue,
    pdfproducer={LaTeX},
    pdfcreator={pdfLaTeX},
    pdfpagemode=UseNone,
    pdfstartview=FitH,
    pdfnewwindow=true
}

%% Update PDF metadata at begin document
\AtBeginDocument{
  \hypersetup{
    pdftitle={\@title},
    pdfauthor={\@author},
    pdfkeywords={Portland State University, \@thesistype}
  }
}

%% Double spacing by default - use memoir class commands
\OnehalfSpacing

%% Title Page 
\renewcommand{\maketitle}{
    \begin{titlingpage}
        \begin{center}
            \vspace*{1in}
            {\Large\bfseries \@title \par}
            \vspace{2cm}
            by\\
            \vspace{1cm}
            {\large \@author}
            \vfill
            A \@thesistype{} submitted in partial fulfillment of the\\
            requirements for the degree of
            \vspace{1cm}
            
            {\large\bfseries \@degree}
            
            in
            
            {\large\bfseries \@department}
            \vspace{2cm}
            
            \MakeUppercase{Dissertation Committee:}\\
            \@chair, Chair\\
            \@memberOne\\
            \@memberTwo\\
            \ifdefempty{\@memberThree}{}{{\@memberThree\\}}
            \ifdefempty{\@memberFour}{}{{\@memberFour\\}}
            
            \vfill
            
            Portland State University\\
            \@graduationmonth{} \@graduationyear{}
        \end{center}
    \end{titlingpage}
}

%% Copyright page
\newcommand{\makecopyright}{
    \thispagestyle{empty}
    \null
    \vfill
    \begin{center}
        © \@graduationyear{} \@author
    \end{center}
    \vfill
    \clearpage
}

%% Abstract environment (renamed to avoid conflict with memoir)
\newenvironment{psuabstract}{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{chapter}{Abstract}
    \begin{center}
        \Large \textbf{Abstract}
    \end{center}
    \setcounter{page}{1}
    \pagenumbering{roman}
}{\clearpage}

%% Table of contents setup
\renewcommand{\contentsname}{Table of Contents}
\setlength{\cftchapternumwidth}{2em}

%% Dedication environment
\newenvironment{psudedication}{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{chapter}{Dedication}
    \begin{center}
        \Large \textbf{Dedication}
    \end{center}
    \begin{center}
        \begin{itshape}
}{\end{itshape}\end{center}\clearpage}

%% Acknowledgments environment
\newenvironment{psuacknowledgments}{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{chapter}{Acknowledgments}
    \begin{center}
        \Large \textbf{Acknowledgments}
    \end{center}
}{\clearpage}

%% Glossary environment (renamed to avoid conflict with memoir)
\newenvironment{psuglossary}{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{chapter}{Glossary}
    \begin{center}
        \Large \textbf{Glossary}
    \end{center}
}{\clearpage}

%% Preface environment
\newenvironment{psupreface}{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{chapter}{Preface}
    \begin{center}
        \Large \textbf{Preface}
    \end{center}
}{\clearpage}

%% Chapter heading page for multi-paper format
\newcommand{\chapterheadingpage}[2]{
    \clearpage
    \phantomsection
    \chapter{#1}
    \begin{center}
        \textit{#2}
    \end{center}
}

%% Command to start the main body
\newcommand{\startbody}{
    \clearpage
    \pagenumbering{arabic}
    \setcounter{page}{1}
}

%% Figure and table caption setup
\captionsetup{
    font={small},
    labelfont={bf},
    labelsep=period,
    margin=0.5in,
    justification=justified
}

%% Reference section
\newcommand{\references}[1][References]{
    \chapter*{#1}
    \addcontentsline{toc}{chapter}{#1}
    \markboth{#1}{#1}
}

%% Set default font (professional and accessible)
\setmainfont{Times New Roman}

\endinput
