divert(-1)dnl
define(`VARIATIONS', `3')
define(`TIME', `10')
divert(2)dnl
%%
%% __file__
%%
\question
Translate the following MIPS machine language instructions to assembly
language.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 0x2008001F
    \item 0x00895022
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 0x01044806
    \item 0xA0A90000
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 0x31290001
    \item 0x0009482A
\end{enumerate}')dnl
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
$(a)$ 0x2008001F

Represent the instruction in binary by converting each hexadecimal digit to it`'RQ()s
4--bit binary value.

\begin{center}
0010.0000.0000.1000.0000.0000.0001.1111
\end{center}

The first 6 bits correspond to the \textit{opcode}. Since the opcode is non-zero,
the instruction is not R-type. Looking up 001000 in Appendix B yields the instruction
\begin{center}
\texttt{addi rt, rs, imm}
\end{center}

The instruction is I-type so the machine language fields are represented like
this:

\begin{center}
\begin{tabular}{|c|c|c|c|}
    \hline
    opcode & rs & rt & imm \\
    \hline
    001000 & 00000 & 01000 & 0000.0000.0001.1111 \\
    \hline
\end{tabular}
\end{center}

Using Table 6.1 MIPS register set we find rs = 00000 = 0 (\$0),
rt = 01000 = 8 (\$t0). The decimal value of the 16--bit imm is 32.

Therefore, the assembly instruction is:

\begin{center}
\texttt{addi \$t0, \$0, 32}
\end{center}
\bigskip

$(b)$ 0x00895022

Represent the instruction in binary by converting each hexadecimal digit to it`'RQ()s
4--bit binary value.

\begin{center}
0000.0000.1000.1001.0101.0000.0010.0010
\end{center}

The first 6 bits correspond to the \textit{opcode}. Since the opcode is zero,
the instruction is R-type. The \textit{funct} field is the last 6 bits 100010.
Looking up 100010 in Appendix B yields the instruction
\begin{center}
\texttt{sub rd, rt, rs}
\end{center}

The instruction is R-type so the machine language fields are represented like
this:

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & rd & shamt & funct \\
    \hline
    000000 & 00100 & 01001 & 01010 & 00000 & 100010 \\
    \hline
\end{tabular}
\end{center}

Using Table 6.1 MIPS register set we find rs = 00100 = 4 (\$a1),
rt = 01001 = 9 (\$t1), rd = 01010 = 10 (\$t2).

Therefore, the assembly instruction is:

\begin{center}
\texttt{sub \$t2, \$a1, \$t1}
\end{center}

\bigskip
''))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
$(a)$ 0x01044806

Represent the instruction in binary by converting each hexadecimal digit to it`'RQ()s
4--bit binary value.

\begin{center}
0000.0001.0000.0100.0100.1000.0000.0110
\end{center}

The first 6 bits correspond to the \textit{opcode}. Since the opcode is zero,
the instruction is R-type. The \textit{funct} field is the last 6 bits 000110.
Looking up 000110 in Appendix B yields the instruction
\begin{center}
\texttt{srlv rd, rt, rs}
\end{center}

The instruction is R-type so the machine language fields are represented like
this:

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & rd & shamt & funct \\
    \hline
    000000 & 01000 & 00100 & 01001 & 00000 & 000110 \\
    \hline
\end{tabular}
\end{center}

Using Table 6.1 MIPS register set we find rs = 01000 = 8 (\$t0),
rt = 00100 = 4 (\$a0), rd = 01001 = 9 (\$t1).

Therefore, the assembly instruction is:

\begin{center}
\texttt{srlv \$t1, \$a0, \$t0}
\end{center}

\bigskip
$(b)$ 0xA0A90000

Represent the instruction in binary by converting each hexadecimal digit to it`'RQ()s
4--bit binary value.

\begin{center}
1010.0000.1010.1001.0000.0000.0000.0000
\end{center}

The first 6 bits correspond to the \textit{opcode}. Since the opcode is non-zero,
the instruction is not R-type. Looking up 101000 in Appendix B yields the instruction
\begin{center}
\texttt{sb rt, imm(rs)}
\end{center}

The instruction is I-type so the machine language fields are represented like
this:

\begin{center}
\begin{tabular}{|c|c|c|c|}
    \hline
    opcode & rs & rt & imm \\
    \hline
    101000 & 00101 & 01001 & 0000.0000.0000.0000 \\
    \hline
\end{tabular}
\end{center}

Using Table 6.1 MIPS register set we find rs = 00101 = 5 (\$a1),
rt = 01001 = 9 (\$t1). The decimal value of the 16--bit imm is 0.

Therefore, the assembly instruction is:

\begin{center}
\texttt{sb \$t1, 0(\$a1)}
\end{center}
\bigskip
''))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',``
$(a)$ 0x31290001

Represent the instruction in binary by converting each hexadecimal digit to it`'RQ()s
4--bit binary value.

\begin{center}
0011.0001.0010.1001.0000.0000.0000.0001
\end{center}

The first 6 bits correspond to the \textit{opcode}. Since the opcode is non-zero,
the instruction is not R-type. Looking up 001100 in Appendix B yields the instruction
\begin{center}
\texttt{andi rt, rs, imm}
\end{center}

The instruction is I-type so the machine language fields are represented like
this:

\begin{center}
\begin{tabular}{|c|c|c|c|}
    \hline
    opcode & rs & rt & imm \\
    \hline
    001100 & 01001 & 01001 & 0000.0000.0000.0001 \\
    \hline
\end{tabular}
\end{center}

Using Table 6.1 MIPS register set we find rs = 01001 = 9 (\$t1),
rt = 01001 = 9 (\$t1). The decimal value of the 16--bit imm is 1.

Therefore, the assembly instruction is:

\begin{center}
\texttt{andi \$t1, \$t1, 1}
\end{center}

\bigskip
$(b)$ 0x0009482A

Represent the instruction in binary by converting each hexadecimal digit to it`'RQ()s
4--bit binary value.

\begin{center}
0000.0000.0000.1001.0100.1000.0010.1010
\end{center}

The first 6 bits correspond to the \textit{opcode}. Since the opcode is zero,
the instruction is R-type. The \textit{funct} field is the last 6 bits 101010.
Looking up 101010 in Appendix B yields the instruction
\begin{center}
\texttt{slt rd, rt, rs}
\end{center}

The instruction is R-type so the machine language fields are represented like
this:

\begin{center}
\begin{tabular}{|c|c|c|c|c|c|}
    \hline
    opcode & rs & rt & rd & shamt & funct \\
    \hline
    000000 & 00000 & 01001 & 01001 & 00000 & 101010 \\
    \hline
\end{tabular}
\end{center}

Using Table 6.1 MIPS register set we find rs = 00000 = 0 (\$0),
rt = 01001 = 9 (\$t1), rd = 01001 = 9 (\$t1).

Therefore, the assembly instruction is:

\begin{center}
\texttt{slt \$t1, \$0, \$t1}
\end{center}
\bigskip
''))dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
