divert(-1)dnl
define(`VARIATIONS', `5')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Use perfect induction to prove:
dnl
ifelse(`X'_ARG_,`X1',`
$$(B \bullet C) + (B \bullet \overline{C}) = B$$
')dnl
ifelse(`X'_ARG_,`X2',`
$$B\bullet(B + C) = B$$
')dnl
ifelse(`X'_ARG_,`X3',`
$$B + \overline{B}\,C = B + C$$
')dnl
ifelse(`X'_ARG_,`X4',`
$$\overline{B\,C} = \overline{B} + \overline{C}$$
')dnl
ifelse(`X'_ARG_,`X5',`
$$\overline{B + C} = \overline{B} \bullet \overline{C}$$
')dnl
dnl
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',``
\textsc{solution}\\
'')
ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \hfil\cr
        B & C && B\,C && B\,\overline{C} && B\,C + B\,\overline{C} \cr
    \noalign{\hrule}
    0 & 0 && 0 && 0 && 0\cr
    0 & 1 && 0 && 0 && 0\cr
    1 & 0 && 0 && 1 && 1\cr
    1 & 1 && 1 && 0 && 1\cr
    }
}$$
\caption{Truth table for $(B\bullet C) + (B\bullet\overline{C}) = B$.}
\end{figure}
''))
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil $#$ \hfil \cr
        B & C && B + C && B \bullet (B + C) \cr
    \noalign{\hrule}
    0 & 0 && 0 && 0 \cr
    0 & 1 && 1 && 0 \cr
    1 & 0 && 1 && 1 \cr
    1 & 1 && 1 && 1 \cr
    }
}$$
\caption{Truth table for $B\bullet(B + C) = B$.}
\end{figure}
''))
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \hfil\cr
        B & C && \overline{B}\,C && B + \overline{B}\,C && B + C \cr
    \noalign{\hrule}
    0 & 0 && 0 && 0 && 0\cr
    0 & 1 && 1 && 1 && 1\cr
    1 & 0 && 0 && 1 && 1\cr
    1 & 1 && 0 && 1 && 1\cr
    }
}$$
\caption{Truth table for $B + \overline{B}\,C = B + C$.}
\end{figure}
''))
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil $#$ \hfil \cr
        B & C && \overline{B\,C} && \overline{B} + \overline{C} \cr
    \noalign{\hrule}
    0 & 0 && 1 && 1 \cr
    0 & 1 && 1 && 1 \cr
    1 & 0 && 1 && 1 \cr
    1 & 1 && 0 && 0 \cr
    }
}$$
\caption{Truth table for $\overline{B\,C} = \overline{B} + \overline{C}$.}
\end{figure}
''))
ifelse(`X'_ARG_,`X5',
ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil $#$ \hfil \cr
        B & C && \overline{B + C} && \overline{B} \bullet \overline{C} \cr
    \noalign{\hrule}
    0 & 0 && 1 && 1 \cr
    0 & 1 && 0 && 0 \cr
    1 & 0 && 0 && 0 \cr
    1 & 1 && 0 && 0 \cr
    }
}$$
\caption{Truth table for $\overline{B\,C} = \overline{B} + \overline{C}$.}
\end{figure}
''))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
