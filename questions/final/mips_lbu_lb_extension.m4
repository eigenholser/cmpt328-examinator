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
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
dnl ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',`
\begin{enumerate}[(a)]

% Unsigned load does zero-extension.
%
\item The byte at offset 2 is zero-extended to 32 bits and loaded into
register \texttt{\$s1}. After \texttt{lbu \$s1, 2(\$s0)}, \texttt{\$s1}
contains:

\begin{center}
\begin{tabular}{|c|c|c|c|}
    \hline
    ifelse(`X'_ARG_,`X1',`
    00 & 00 & 00 & 8F \\
    ')dnl
    ifelse(`X'_ARG_,`X2',`
    00 & 00 & 00 & A1 \\
    ')dnl
    ifelse(`X'_ARG_,`X3',`
    00 & 00 & 00 & C9 \\
    ')dnl
    \hline
\end{tabular}
\end{center}

% Signed load does sign-extension.
%
\item The byte at offset 2 is sign-extended to 32 bits and loaded into
register \texttt{\$s1}. Since this byte is a negative two`'RQ()s complement
number, the sign bit is 1. After \texttt{lb \$s1, 2(\$s0)}, \texttt{\$s1}
contains:

\begin{center}
\begin{tabular}{|c|c|c|c|}
    \hline
    ifelse(`X'_ARG_,`X1',`
    FF & FF & FF & 8F \\
    ')dnl
    ifelse(`X'_ARG_,`X2',`
    FF & FF & FF & A1 \\
    ')dnl
    ifelse(`X'_ARG_,`X3',`
    FF & FF & FF & C9 \\
    ')dnl
    \hline
\end{tabular}
\end{center}

% Signed load does sign-extension.
%
\item The byte at offset 1 is sign-extended to 32 bits and loaded into
register \texttt{\$s1}. Since this byte is a posive two`'RQ()s complement
number, the sign bit is 0. After \texttt{lb \$s1, 2(\$s0)}, \texttt{\$s1}
contains:

\begin{center}
\begin{tabular}{|c|c|c|c|}
    \hline
    ifelse(`X'_ARG_,`X1',`
    00 & 00 & 00 & 7F \\
    ')dnl
    ifelse(`X'_ARG_,`X2',`
    00 & 00 & 00 & 3F \\
    ')dnl
    ifelse(`X'_ARG_,`X3',`
    00 & 00 & 00 & 2D \\
    ')dnl
    \hline
\end{tabular}
\end{center}

\end{enumerate}
')dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
