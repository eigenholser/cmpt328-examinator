divert(-1)dnl
define(`VARIATIONS', `3')
define(`TIME', `10')
divert(2)dnl
%%
%% __file__
%%
\question
Suppose MIPS register \texttt{\$s0} holds the following 32--bit word:
\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
ifelse(`X'_ARG_,`X1',`
    1111 & 0110 & 0000 & 0000 & 0010 & 1111 & 0011 & 1000 \\
')dnl
ifelse(`X'_ARG_,`X2',`
    1000 & 1010 & 0000 & 0000 & 0010 & 1111 & 0111 & 1010 \\
')dnl
ifelse(`X'_ARG_,`X3',`
    1011 & 0110 & 0000 & 0000 & 0010 & 1111 & 1001 & 0011 \\
')dnl
    \hline
\end{tabular}
\end{center}
\begin{enumerate}[(a)]
    \item What is the value in MIPS register \texttt{\$t1} after
    \texttt{sll \$t1, \$s0, 4} is executed?
    \item What is the value in MIPS register \texttt{\$t1} after
    \texttt{srl \$t1, \$s0, 4} is executed?
    \item What is the value in MIPS register \texttt{\$t1} after
    \texttt{sra \$t1, \$s0, 4} is executed?
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
$(a)$
\texttt{sll} logically shifts the bits left and fills the new least
significant bits with 0.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    0110 & 0000 & 0000 & 0010 & 1111 & 0011 & 1000 & 0000 \\
    \hline
\end{tabular}
\end{center}

$(b)$
\texttt{srl} logically shifts the bits right and fills the new most
significant bits with 0.
\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    0000 & 1111 & 0110 & 0000 & 0000 & 0010 & 1111 & 0011 \\
    \hline
\end{tabular}
\end{center}

$(c)$
\texttt{srl} arithmetically shifts the bits right and fills the new most
significant bits the sign bit.
\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    1111 & 1111 & 0110 & 0000 & 0000 & 0010 & 1111 & 0011 \\
    \hline
\end{tabular}
\end{center}
\bigskip
''))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
\bigskip
$(a)$
\texttt{sll} logically shifts the bits left and fills the new least
significant bits with 0.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    1010 & 0000 & 0000 & 0010 & 1111 & 0111 & 1010 & 0000 \\
    \hline
\end{tabular}
\end{center}

$(b)$
\texttt{srl} logically shifts the bits right and fills the new most
significant bits with 0.
\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    0000 & 1000 & 1010 & 0000 & 0000 & 0010 & 1111 & 0111 \\
    \hline
\end{tabular}
\end{center}

$(c)$
\texttt{srl} arithmetically shifts the bits right and fills the new most
significant bits the sign bit.
\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    1111 & 1000 & 1010 & 0000 & 0000 & 0010 & 1111 & 0111 \\
    \hline
\end{tabular}
\end{center}
''))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',``
$(a)$
\texttt{sll} logically shifts the bits left and fills the new least
significant bits with 0.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    0110 & 0000 & 0000 & 0010 & 1111 & 1001 & 0011 & 0000 \\
    \hline
\end{tabular}
\end{center}

$(b)$
\texttt{srl} logically shifts the bits right and fills the new most
significant bits with 0.
\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    0000 & 1011 & 0110 & 0000 & 0000 & 0010 & 1111 & 1001 \\
    \hline
\end{tabular}
\end{center}

$(c)$
\texttt{srl} arithmetically shifts the bits right and fills the new most
significant bits the sign bit.
\begin{center}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    1111 & 1011 & 0110 & 0000 & 0000 & 0010 & 1111 & 1001 \\
    \hline
\end{tabular}
\end{center}
\bigskip
''))dnl
dnl ifdef(`INSTRUCTOR',`\bigskip')
\bigskip
divert(0)dnl
