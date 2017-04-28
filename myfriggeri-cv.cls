\ProvidesClass{myfriggeri-cv}[2012/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
% options
\DeclareOption{print}{\def\@cv@print{}}

\DeclareOption{lightheader}{\def\@cv@lightheader{}}

\DeclareOption{nocolors}{\def\@cv@nocolors{}}
% default documen class is article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
%----- option Add support for A4 paper
\newif\ifafourpaper
\afourpaperfalse
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}%
    \afourpapertrue%
   }
%----- end option for A4 paper

\ProcessOptions\relax
\LoadClass{article}

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{linkedinblue}{RGB}{0,122,180}
\definecolor{skypeblue}{RGB}{18,165,244}

%------option cv@print-----------------
\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{brown}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi
%------option @cv@nocolors-----------------
\ifdefined\@cv@nocolors
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{brown}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fblue}{gray}
  \colorlet{tblue}{gray}
  \colorlet{lblue}{gray}
  \colorlet{vkblue}{gray}
\fi

\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}
%------end option cv@print-----------------

%------option cv@lightheader---------------
\ifdefined\@cv@lightheader
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi
%------end cv@lightheader -----------------

%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}

\newfontfamily\bodyfont[]{Roboto-Regular}
\newfontfamily\thinfont[]{Roboto-Thin}
\newfontfamily\headingfont[]{Roboto-Medium}
\newfontfamily\positionfont[]{Roboto-LightItalic}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Mapping=tex-text, Color=textcolor]{Roboto-Light}

%\setmathfont{XITS Math}

%%%%%%%%%% LVR %%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[colorlinks = true,
            linkcolor = blue,
            urlcolor  = blue,
            citecolor = blue,
            anchorcolor = blue]{hyperref}

\newcommand{\MYhref}[3][blue]{\href{#2}{\color{#1}{#3}}}%
%%%%%%%%%% END %%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}
%----------------------------------------------------------------------------------------

%----------------------------------------------------------------------------------------
\newcommand{\linkedInLogoTikz}[1]{
\scalebox{#1}{
\begin{tikzpicture}[y=0.05pt, x=0.05pt,yscale=-1, inner sep=0pt, outer sep=0pt]

  %background square
    \fill[linkedinblue, nonzero rule,rounded corners=5] (19.0,69.4)
  rectangle (724.4,774.8);

    %Draw 'n'
  \path[fill=white] (399.9674,578.3622) ..
    controls (400.6,477.8) and (400.7,475.2) .. (405.9,458.4) ..
    controls (413.8,432.5) and (431.9,419.8) .. (461.0,419.8) ..
    controls (491.6,419.7) and (505.9,432.7) .. (512.5,466.4) ..
    controls (514.1,474.4) and (514.3,485.5) .. (514.8,573.9) --
    (515.4,672.4) -- (567.7,672.6) .. controls (606.7,672.8) and
    (620.5,672.6) .. (621.5,671.7) .. controls (622.8,670.7) and
    (622.9,654.4) .. (622.6,559.9) .. controls (622.2,439.6) and
    (622.2,440.6) .. (616.2,413.9) .. controls (603.1,355.2) and
    (567.5,326.8) .. (503.9,324.2) .. controls (474.9,323.0) and
    (451.8,328.6) .. (430.0,342.1) .. controls (420.6,347.9) and
    (404.1,363.5) .. (399.9,370.6) .. controls (398.5,372.9) and
    (397.0,374.8) .. (396.6,374.8) .. controls (396.2,374.9) and
    (395.9,365.7) .. (395.9,354.6) .. controls (395.9,340.1) and
    (395.5,333.9) .. (394.7,333.1) .. controls (393.8,332.2) and
    (381.2,331.9) .. (344.2,331.9) .. controls (300.8,331.9) and
    (294.8,332.0) .. (293.4,333.4) .. controls (292.0,334.8) and
    (291.6,351.5) .. (291.9,502.0) .. controls (291.9,615.7) and
    (292.2,669.6) .. (292.9,670.9) .. controls (293.9,672.8) and
    (295.3,672.9) .. (346.6,672.6) -- (399.4,672.4) -- cycle;

  % dot over i
        \fill[white] (175,227) circle (63);
  % i rectangle
        \fill[white] (121.5,332.8) rectangle (229.6,670.9);
\end{tikzpicture}
}
}
%----------------------------------------------------------------------------------------
\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \positionfont%
  \color{white}%
}

\newcommand{\header}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {%
      \fontsize{40pt}{72pt}\color{header}%
      {\thinfont #1 }~{\bodyfont #2}
    };
    \node [anchor=north] at (name.south) {%
      \fontsize{14pt}{24pt}\color{header}%
      \thinfont #3%
    };
  \end{tikzpicture}
  \vspace{2.5cm}
  \vspace{-2\parskip}
}


%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%
\RequirePackage{parskip}

\newcounter{colorCounter}
\def\@sectioncolor#1{%
  {%
    \color{%
      \ifcase\value{colorCounter}%
        blue\or%
        red\or%
        orange\or%
        green\or%
        purple\or%
        brown\else%
        headercolor\fi%
    } #1%
  }%
  \stepcounter{colorCounter}%
  %reset the counter once we exhaust all colours
  \ifthenelse{\equal{\value{colorCounter}}{6}}{
    \setcounter{colorCounter}{0}
  }{}
}

\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {%
    \LARGE\headingfont\color{headercolor}%
    \@sectioncolor{ #1}%
  }
  \par\vspace{\parskip}
}

\renewcommand{\subsection}[1]{
  \par\vspace{.5\parskip}%
  {\Large\headingfont\color{headercolor} \@sectioncolor{ #1}}
  \par\vspace{.25\parskip}%
}

\renewcommand{\subsubsection}[2]{
  \par\vspace{.5\parskip}%
  {\Large\headingfont\color{headercolor} #2}
  \par\vspace{.25\parskip}%
}

\pagestyle{empty}


%%%%%%%%%%%%%%%%%%%%
% List environment %
%%%%%%%%%%%%%%%%%%%%
% was 11.8 cm line 209 cfr tweaks
\RequirePackage{ifthen}

\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}p{2cm}l}%was ll
}{%
  \end{tabular*}
}
\renewcommand{\bfseries}{\headingfont\color{headercolor}}
\newcommand{\entry}[5]{%
  {#1}&\parbox[t]{11.8cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=lightgray} #3}\\%
    {\positionfont{#4}}
    \ifthenelse{\equal{#4}{}}{}{\\}
    {#5}\vspace{\parsep}%
  }\\}

\newcommand{\body}[1]{%
    &\parbox[t]{11.8cm}{%
    {#1}
    \vspace{\parsep}
    \vspace{\parsep}
}\\}

%%%%%%%%%%%%%%
% Side block %
%%%%%%%%%%%%%%

\RequirePackage{everypage}

\RequirePackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}

\xdef\asideHeight{5}
% was in line 229 \begin{textblock}{3.6}(1.5, \asideHeight) % {width}(xpos,ypos)
\newcommand\aside[2]{
    \AddEverypageHook{
        \begin{textblock}{3.9}(1.5, \asideHeight) % {width}(xpos,ypos)
            \begin{flushright}
            \linespread{1}\selectfont
            {\Large\headingfont\color{headercolor} {#1}} \\
            #2
            \end{flushright}
        \end{textblock}
        %
        %all pages aside from the first should have the side bit further up
        %Crude hack to just redefine the y position as we go
        \xdef\asideHeight{2.1}
    }
}


%%%%%%%%%%%%%%%%
% Bibliography %
%%%%%%%%%%%%%%%%

\RequirePackage[style=verbose, maxnames=99, sorting=ydnt]{biblatex}

\DeclareFieldFormat[article]{title}{#1\par}
\DeclareFieldFormat[book]{title}{#1\par}
\DeclareFieldFormat[inproceedings]{title}{#1\par}
\DeclareFieldFormat[misc]{title}{#1\par}
\DeclareFieldFormat[report]{title}{#1\par}

\DeclareBibliographyDriver{article}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}\itshape%
    \usebibmacro{journal+issuetitle}%
    \setunit{\space}%
    \printfield{pages}%
    \newunit%
    \printlist{publisher}%
    \setunit*{\addcomma\space}%
    \printfield{year}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

\DeclareBibliographyDriver{book}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}\itshape%
    \printlist{publisher}%
    \setunit*{\addcomma\space}%
    \printfield{note}%
    \setunit*{\addcomma\space}%
    \printfield{year}%
    \setunit{\addcomma\space}%
    \printlist{location}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}


\DeclareBibliographyDriver{inproceedings}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}%
    \printfield{booktitle}%
    \setunit{\addcomma\space}%
    \printfield{year}%
    \setunit{\addcomma\space}%
    \printlist{location}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

\DeclareBibliographyDriver{misc}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}\itshape%
    \printfield{booktitle}%
    \setunit*{\addcomma\space}%
    \printfield{note}%
    \setunit*{\addcomma\space}%
    \printfield{year}%
    \setunit{\addcomma\space}%
    \printlist{location}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

\DeclareBibliographyDriver{report}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}\itshape%
    \printfield{type}%
    \setunit{\space}%
    \printfield{number}%
    \setunit{\addcomma\space}%
    \printfield{year}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

% biblatex name formatting changed with version 3.3.
% After this change the line "\ifblank{#3}{}{#3\space}#1%" gives an error.
% see also: http://tex.stackexchange.com/questions/327316/updating-friggeris-cv-making-it-work-with-texlive-2015-and-up-too-many-erro

%\DeclareNameFormat{author}{%
%  \small\addfontfeature{Color=lightgray}%
%  \ifblank{#3}{}{#3\space}#1%
%  \ifthenelse{\value{listcount}<\value{liststop}}
%    {\addcomma\space}
%    {}%
%}

% Fix for biblatex 3.3
\DeclareNameFormat{author}{%
   \nameparts{#1}
   \small\addfontfeature{Color=lightgray}%
   \ifblank{\namepartgiven}{}{\namepartgiven\space}#1%
   \ifthenelse{\value{listcount}<\value{liststop}}
     {\addcomma\space}
     {}%
}

\defbibheading{bibheading}[\bibname]{%
   \subsubsection*{#1}
   \markboth{#1}{#1}
}

\newcommand{\printbibsection}[2]{
  \begin{refsection}
    \nocite{*}
    \printbibliography[sorting=chronological, type={#1}, title={#2}, heading=bibheading]
  \end{refsection}
}

\DeclareSortingScheme{chronological}{
  \sort[direction=descending]{\field{year}}
  \sort[direction=descending]{\field{month}}
}



%%%%%%%%%%%%%%%%
% Other tweaks %
%%%%%%%%%%%%%%%%

%was 6.1
\RequirePackage[left=6.1cm,top=2cm,right=1.5cm,bottom=1.5cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=false,
    citecolor=false,
    filecolor=false,
    urlcolor = true}

% A fix for \href{}{} colors not working with fontspec
\makeatletter
\def\HyColor@@@@UseColor#1\@nil{\addfontfeatures{Color=#1}}
\makeatother
