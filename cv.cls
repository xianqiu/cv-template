\ProvidesClass{cv}[2013/08/28 CV class]
\NeedsTeXFormat{LaTeX2e}

%----------------------------------------------------------------------------------------
% proccessing options
%----------------------------------------------------------------------------------------

\DeclareOption{showupdate}{\newcommand\@showupdate{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\PassOptionsToClass{12pt}{article}%
\ProcessOptions\relax
\LoadClass{article}

%----------------------------------------------------------------------------------------
% loading packages
%----------------------------------------------------------------------------------------
\RequirePackage[UTF8]{ctex}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{ifthen}
\RequirePackage{parskip}
\RequirePackage{enumitem}
\RequirePackage{marvosym,eurosym,pifont} % symbols
% layout
\RequirePackage[left=1.5cm,top=1cm,right=1.5cm,bottom=2.5cm,nohead,nofoot]{geometry}                                          
\RequirePackage{tikz}

%----------------------------------------------------------------------------------------
% colors
%----------------------------------------------------------------------------------------

\definecolor{title}{RGB}{0,80,80}
\definecolor{subtitle}{RGB}{50,50,50}
\definecolor{section}{RGB}{0,100,100}
\definecolor{subsection}{RGB}{152,138,145}

%----------------------------------------------------------------------------------------
% header
%----------------------------------------------------------------------------------------

\newcommand{\name}[1]{\newcommand\@name{#1}}
\newcommand{\job}[1]{\newcommand\@job{#1}}
\newcommand{\company}[1]{\newcommand\@company{#1}}
\newcommand{\phone}[1]{\newcommand\@phone{#1}}
\newcommand{\email}[1]{\newcommand\@email{#1}}
                                                         
\renewcommand{\maketitle}{%
  {\huge\bfseries\color{title}\@name}\\[12pt]
  \ifdefined\@job
  {\large\bfseries\color{subtitle}\@job}
  \fi
  \ifdefined\@company
  {\large\bfseries\color{subtitle}@\@company}\\[6pt]
  \fi
  \ifdefined\@phone
  {\bfseries\color{subtitle} 电话: \@phone}
  \hspace{0.5cm}
  \fi
  \ifdefined\@email
  {\bfseries\color{subtitle} 邮箱: \@email}
  \vspace{0.5cm}
}


%----------------------------------------------------------------------------------------
% sections
%----------------------------------------------------------------------------------------

\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {\color{section}
  \Large\bfseries #1
  \vspace{\parskip}
  \hrule
  \vspace{\parskip}
  }  
}

\pagestyle{empty}

% itemize
\renewcommand{\labelitemi}{\ding{47}}
\renewcommand{\labelitemii}{\ding{49}}
