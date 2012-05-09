%%%%%%%%%%%%%%%%%%%%%%%%%
% gtthesis v0.91
% Karthik Periagaram
% karthikp@gatech.edu
%
% Last Updated 2012/05/09
%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%
% Preamble
%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gtthesis}[2012/05/09 v0.91 Georgia Tech Thesis]
\LoadClass[12pt,oneside]{book}

%%%%%%%%%%%%%%
% Font Options
%%%%%%%%%%%%%%
%\RequirePackage{mathptmx} % Use Times font
\RequirePackage[utf8]{inputenc} % Encoding on input fonts set to UTF-8
\RequirePackage[T1]{fontenc} % Font encoding set to T1 fonts

%%%%%%%%%%%%%%%%%%%%%%
% Title Format Options
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[calcwidth]{titlesec} % Customized headings for chapter, section, subsection and subsubsection
  \titleformat{\chapter}[display]{\centering\large\bfseries}{\MakeUppercase{\chaptertitlename}\ \thechapter}{0in}{\MakeUppercase}
  \titlespacing*{\chapter}{0in}{-0.25in}{0.5in}

  \titleformat{\section}{\normalsize\bfseries}{\thesection\ }{0in}{}
%  \titlespacing*{\section}{0.5in}{\baselineskip}{0in} % Indent section titles by 0.5 in

  \titleformat{\subsection}{\normalsize\itshape}{\thesubsection\ }{0in}{}
  \titleformat{\subsubsection}{\normalsize}{\thesubsubsection\ }{0in}{}[\vspace{-1.6em}\rule{\titlewidth}{1pt}]


%%%%%%%%%%%%%%%%%%%%%
% Figure Options
%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[font=small,textfont=it]{caption}

%%%%%%%%%%%%%%%%%%%%%
% Page Format Options
%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry} % Set margins
  \geometry{top=1in,bottom=1in,left=1.5in,right=1in}
\raggedbottom % Don't add extra vertical space if the page ends early.
\pagestyle{plain} % Page number in the middle of footer, no header
\RequirePackage{setspace} % Double-spaced text
  \doublespacing

%%%%%%%%%%%%%%%%%%%
% Footnotes Options
%%%%%%%%%%%%%%%%%%%
\RequirePackage[hang,flushmargin]{footmisc} % Prevent indenting footnotes
%\interfootnotelinepenalty=10000 % Use to prevent multi-page footnotes

%%%%%%%%%%%%%%%%%%
% Document Options
%%%%%%%%%%%%%%%%%%
\RequirePackage{fixltx2e} % Patches for LaTeX2e
\RequirePackage[right]{lineno} % Draft mode option to number lines
\RequirePackage[colorlinks,linkcolor=black,citecolor=black]{hyperref} % Links within document
\AtBeginDocument{
  \hypersetup{
    pdftitle={\@title},
    pdfauthor={\@author}
  }
}
\renewcommand{\contentsname}{Table of Contents} % default: "Contents"
\setcounter{tocdepth}{3} % Show subsubsections in table of contents
\renewcommand{\bibname}{References} % default: "Bibliography"
\setcounter{secnumdepth}{3} % Number Chapters, Sections, Subsections and Subsubsections

