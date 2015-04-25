divert(-1)dnl
define(`VARIATIONS', `3')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Suppose MIPS register \texttt{\$s0} holds the memory location of the following
32--bit word:
\begin{center}
\begin{tabular}{|c|c|c|c|}
    \hline
ifelse(`X'_ARG_,`X1',`
    A2 & 8F & 7F & F2 \\
')dnl
ifelse(`X'_ARG_,`X2',`
    19 & A1 & 3F & 27 \\
')dnl
ifelse(`X'_ARG_,`X3',`
    E1 & C9 & 2D & 82 \\
')dnl
    \hline
\end{tabular}
\end{center}
\begin{enumerate}[(a)]
    \item What is the value in MIPS register \texttt{\$s1} after
    \texttt{lbu \$s1, 2(\$s0)} is executed?
    \item What is the value in MIPS register \texttt{\$s1} after
    \texttt{lb \$s1, 2(\$s0)} is executed?
    \item What is the value in MIPS register \texttt{\$s1} after
    \texttt{lb \$s1, 1(\$s0)} is executed?
\end{enumerate}
ifelse(`X'_ARG_,`X1',`
')dnl
ifelse(`X'_ARG_,`X2',`
')dnl
ifelse(`X'_ARG_,`X3',`
')dnl
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',``
If/else statement.
\bigskip
''))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
While loop.
\bigskip
''))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',``
For loop.
\bigskip
''))dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
