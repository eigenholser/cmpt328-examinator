divert(-1)dnl
define(`VARIATIONS', `3')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Identify the high-level language construct implemented by the following MIPS
assembly language:
ifelse(`X'_ARG_,`X1',`
\begin{verbatim}
    bne $s3, $s4, label1
    add $s0, $s1, $s2
    j label2
label1:
    sub $s0, $s1, $s3
label2:
\end{verbatim}
')dnl
ifelse(`X'_ARG_,`X2',`
\begin{verbatim}
    addi $s0, $0, 1
    addi $s1, $0, 0
    addi $t0, $0, 10
label1:
    beq $s0, $t0, label2
    add $s0, $s0, $s1
    addi $s1, $s1, 1
    j label1
label2:
\end{verbatim}
')dnl
ifelse(`X'_ARG_,`X3',`
\begin{verbatim}
    add $s1, $0, $0
    addi $s0, $0, 0
    addi $t0, $0, 10
label1:
    beq $s0, $t0, label2
    add $s1, $s1, $s0
    addi $s0, $s0, 1
    j label1
label2:
\end{verbatim}
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
\medskip
divert(0)dnl
