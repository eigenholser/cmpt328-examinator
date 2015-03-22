divert(-1)dnl
define(`VARIATIONS', `3')
define(`TIME', `10')
divert(2)dnl
%%
%% __file__
%%
\question
dnl
ifelse(`X'_ARG_,`X1',`
Prove theorem T9 from Table 2.3 of \textit{Digital Design and Computer Architecture.}
Do not prove the dual.
$$B \bullet (B + C) = B$$
\textit{Hint:} Try expanding a term with $(C + 1)$.
')dnl
ifelse(`X'_ARG_,`X2',`
Prove the following Boolean expression:
$$B + \overline{B}\,C = B + C$$
\textit{Hint:} Begin by expanding a term with $(C + 1)$.
')dnl
ifelse(`X'_ARG_,`X3',``
Simplify the following Boolean equation:
$$Y = A\,C + \overline{A}\,\overline{B}\,C$$
\textit{Hint:} Begin by expanding a term with $(\overline{B} + 1)$.
'')dnl
dnl
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',``
\begin{align}
    B \bullet (B + C) &= B\cr
    BB + BC &= B\cr
    B \bullet (C + 1) + BC &= B \;(T2`'RQ())\cr
    BC + B + BC &= B\cr
    B + BC + BC &= B \;(T3`'RQ())\cr
    B &= B
\end{align}
''))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
\begin{align}
    B + \overline{B}\,C &= B + C\cr
    B \bullet (C + 1) + \overline{B}\,C &= B + C\;\; (T2`'RQ())\cr
    B\,C + B + \overline{B}\,C &= B + C\cr
    B + (B\,C + \overline{B}\,C) &= B + C\cr
    B + (C\,B + C\,\overline{B}) &= B + C\;\; (T10)\cr
    B + C &= B + C
\end{align}
''))dnl
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',``
\begin{align}
    Y &= A\,C + \overline{A}\,\overline{B}\,C\cr
      &= A\,C\bullet(\overline{B} + 1) + \overline{A}\,\overline{B}\,C\cr
      &= A\,\overline{B}\,C + A\,C + \overline{A}\,\overline{B}\,C\cr
      &= \overline{B}\,C \bullet (A + \overline{A}) + A\,C\cr
      &= \overline{B}\,C \bullet (1) + A\,C\cr
      &= A\,C + \overline{B}\,C
\end{align}
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
