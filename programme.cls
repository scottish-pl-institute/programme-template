\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{programme}[2019/10/03 programme]

\PassOptionsToClass{pdftex, 12pt, letterpaper, british}{article}

\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[utf8]{inputenc}       % Enable UTF-8.
\RequirePackage{titlesec}             % Title formatting.
\RequirePackage[british]{babel}       % Enforce British English language settings.
\RequirePackage{mathpazo}             % Palantino family of fonts.
\RequirePackage[T1]{fontenc}          % Enable 8-bit output encoding.
\RequirePackage{enumitem}             % Compact enumerate environments.

\setitemize{%
  noitemsep,
  topsep=0pt,
  parsep=10pt,
  partopsep=0pt,
  leftmargin=0pt,
  label={}
}

\RequirePackage{graphicx}             % Include figures.
\RequirePackage[scale=0.75]{geometry} % Document geometry configuration

\geometry{%
  total={210mm,297mm},
  left=5mm,right=5mm,
  bindingoffset=5mm, top=0mm,bottom=0mm
}


%% Redefines the spacing before and after section headings.
\titlespacing*{\section}
  {0pt}{1.5ex}{1.5ex}

%% Removes section numbering from the section headings.
\titleformat{\section}%
            {\bf\large}%
            {}{0em}             %
            {}                  %
            []

%% The session environment is provides the "two column"
%% look, where the first column contains time information,
%% and the second contains the description of the
%% session. The environment takes three arguments: start
%% time, end time, and session title. For example
%% \begin{session}{12:00}{13:00}{Lunch}
%%   Lunch will be served.
%% \end{session}
%% renders as

%% 12:00 -- 13:00      Lunch
%%                       Lunch will be served.

% The widths of the first and second columns.
\newcommand{\fstwidth}{0.2\textwidth}
\newcommand{\sndwidth}{0.7\textwidth}

\newenvironment{session}[3]
{%
  \section[#1 -- #2: #3]{
    \begin{minipage}{\fstwidth}
      #1 -- #2
    \end{minipage}
    ~
    \begin{minipage}[t]{\sndwidth}
      #3
    \end{minipage}
  }%
  \begin{minipage}{\fstwidth}
    ~
  \end{minipage}
  \hspace{1cm}
  \begin{minipage}[t]{\sndwidth}}
  {\end{minipage}}


%% Change maketitle formatting
\newcommand{\theseminar}{Seminar Series}
\newcommand{\seminar}[1]{\renewcommand{\theseminar}{#1}}

\def\@maketitle{%
  \newpage
  \null
  \begin{center}%
  \let \footnote \thanks
    {}%
    \vskip 1.0em%
    {\lineskip .5em%
      \huge\bfseries\MakeUppercase{\@title}
    }%
    \vskip 1em%
    \hrule
    {\vskip 1em%
     \huge\bfseries\theseminar{} }
  \end{center}%
  \par
  \vskip 1.5em}

%% Other useful macros.
\newcommand{\talk}[1]{{\large{\textit{#1}}}}

\endinput
