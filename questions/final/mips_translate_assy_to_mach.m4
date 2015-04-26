divert(-1)dnl
define(`VARIATIONS', `3')
define(`TIME', `10')
divert(2)dnl
%%
%% __file__
%%
\question
Translate the following MIPS assembly language instructions to machine
language.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item \texttt{add \$s0, \$t0, \$t1}
    \item \texttt{ori \$s0, \$s1, 0x80}
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item \texttt{sub \$s0, \$t0, \$t1}
    \item \texttt{addi \$s0, \$s1, 0x80}
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item \texttt{and \$s0, \$t0, \$t1}
    \item \texttt{lw \$s0, 0x80(\$s1)}
\end{enumerate}')dnl
dnl
Represent the machine language instructions in both hexadecimal and octal.
\bigskip
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',``
$(a)$ \texttt{add \$s0, \$t0, \$t1}

From Table 6.1 MIPS register set in \textit{Digital Design and Computer Architecture},
registers \texttt{\$s0}, \texttt{\$t0}, and \texttt{\$t1} are
numbered 16, 8, and 9 respectively. From \textit{Appendix B} \textit{funct} is
100000. Since this is an R-type instruction, \textit{opcode} is 000000.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & rd & shamt & funct \\
    \hline
    000000 & 01000 & 01001 & 10000 & 00000 & 100000 \\
    \hline
\end{tabular}
\end{center}

By inspection, the result is 0x01098020 and 00102300040.
\bigskip

$(b)$ \texttt{ori \$s0, \$s1, 0x80}

From Table 6.1 MIPS register set in \textit{Digital Design and Computer Architecture},
registers \texttt{\$s0}, and \texttt{\$s1} are
numbered 16, and 17. From \textit{Appendix B}, \textit{opcode} is 001101.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & imm \\
    \hline
    001101 & 10001 & 10000 & 1111.1111.1000.0000 \\
    \hline
\end{tabular}
\end{center}

By inspection, the result is 0x3630FF80 and 06614177600.

\bigskip
''))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
$(a)$ \texttt{sub \$s0, \$t0, \$t1}

From Table 6.1 MIPS register set in \textit{Digital Design and Computer Architecture},
registers \texttt{\$s0}, \texttt{\$t0}, and \texttt{\$t1} are
numbered 16, 8, and 9 respectively. From \textit{Appendix B} \textit{funct} is
100010. Since this is an R-type instruction, \textit{opcode} is 000000.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & rd & shamt & funct \\
    \hline
    000000 & 01000 & 01001 & 10000 & 00000 & 100010 \\
    \hline
\end{tabular}
\end{center}

By inspection, the result is 0x01098022 and 00102300042.

\bigskip
$(b)$ \texttt{addi \$s0, \$s1, 0x80}

From Table 6.1 MIPS register set in \textit{Digital Design and Computer Architecture},
registers \texttt{\$s0}, and \texttt{\$s1} are
numbered 16, and 17. From \textit{Appendix B}, \textit{opcode} is 001000.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & imm \\
    \hline
    001000 & 10001 & 10000 & 1111.1111.1000.0000 \\
    \hline
\end{tabular}
\end{center}

By inspection, the result is 0x2230FF80 and 04214177600.

\bigskip
''))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',``
$(a)$ \texttt{and \$s0, \$t0, \$t1}

From Table 6.1 MIPS register set in \textit{Digital Design and Computer Architecture},
registers \texttt{\$s0}, \texttt{\$t0}, and \texttt{\$t1} are
numbered 16, 8, and 9 respectively. From \textit{Appendix B} \textit{funct} is
100100. Since this is an R-type instruction, \textit{opcode} is 000000.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & rd & shamt & funct \\
    \hline
    000000 & 01000 & 01001 & 10000 & 00000 & 100100 \\
    \hline
\end{tabular}
\end{center}

By inspection, the result is 0x01098024 and 00102300044.

\bigskip
$(b)$ \texttt{lw \$s0, 0x80(\$s1)}

From Table 6.1 MIPS register set in \textit{Digital Design and Computer Architecture},
registers \texttt{\$s0}, and \texttt{\$s1} are
numbered 16, and 17. From \textit{Appendix B}, \textit{opcode} is 100011.

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & imm \\
    \hline
    100011 & 10001 & 10000 & 1111.1111.1000.0000 \\
    \hline
\end{tabular}
\end{center}

By inspection, the result is 0x8E30FF80 and 21614177600.
\bigskip
''))dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
