\documentclass{article}

\def\binaryadd#1#2#3{
    $$\hfill#1\hskip1.2pt\relax\atop{
        \displaystyle
        \hfill\raise1pt\hbox{$+$}\, #2
        \over{
            \displaystyle
            \hfill{
                \lower3pt\hbox{#3}
            }
        }
    }$$
}

\setlength\parindent{0pt}
\textwidth=6in
\pagenumbering{gobble}
\marginparwidth=0pt
\usepackage{fullpage}
\usepackage{graphicx}
\usepackage{enumerate}
\usepackage{float}
\usepackage{eqnarray,amsmath}
\usepackage{tikz}
\usetikzlibrary{calc,circuits.ee.IEC,circuits.logic.US}
\input exammac
%\nopagenumbers
\font\cmss=cmss12
\font\cmssa=cmss12 scaled\magstep4
\font\cmssb=cmss12 scaled\magstep5

\begin{document}
%title page
\hrule depth 2pt
\vskip 1.5pt
\hrule depth 0.4pt
\vskip 10pt
\centerline{\cmssa COMPUTER\kern7ptARCHITECTURE}
\vskip 10pt
\centerline{\cmssa CMPT\kern7pt328}
\vskip 3.5in
\centerline{\cmssb \raise5pt \hbox{upcase(EXAMINATORNAME) EXAM}}
\vfill
%\centerline{\cmss \raise5pt\hbox{\hss WEDNESDAY MARCH 18, 2015\hss}}
\centerline{\cmssa \raise10pt \hbox{STUDENT:} \raise10pt\hbox{$\underline{\hbox{STUDENTNAME\hss}}$}}
\hrule depth 0.4pt
\vskip 1.1pt
\hrule depth 2pt
\eject

%\pagenumbering{arabic}

%%
%% Questions
%%

undivert(2)
divert(0)

\end{document}
divert(-1)
