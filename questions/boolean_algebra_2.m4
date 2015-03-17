divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
dnl
Consider the following Boolean expression:
ifelse(`X'_ARG_,`X1',`
$$\overline{B}\,\overline{C} + \overline{B\,C}$$
Is it possible to apply theorem T3`'RQ()? Why?
')dnl
ifelse(`X'_ARG_,`X2',`
$$B\,C + \overline{B\,C}$$
Is it possible to apply theorem T5`'RQ()? Why?
')dnl
ifelse(`X'_ARG_,`X3',`
$$B\,C + \overline{B}\,\overline{C}$$
Is it possible to apply theorem T5`'RQ()? Why?
')dnl
ifelse(`X'_ARG_,`X4',``
$$A \bullet B\,C + A \bullet \overline{B}\,\overline{C}$$
Is it possible to apply theorem T10? Why?
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
No, it is not possible to apply theorem T3`'RQ(). For theorem T3`'RQ() to
apply, each term must be the same. In this equation, one term is
the product of the inverts while the other is the invert of the product.
''))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
Yes, it is possible to apply theorem T5`'RQ(). For theorem T5`'RQ() to
apply, each term must be inverse of each other. In this equation, one term is
the product while the other is the inverse of the product.
''))dnl
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',``
No, it is not possible to apply theorem T5`'RQ(). For theorem T5`'RQ() to
apply, each term must be inverse of each other. In this equation, one term is
the product of the inverts while the other is the invert of the product.
''))dnl
ifelse(`X'_ARG_,`X4',ifdef(`INSTRUCTOR',``
No, it is not possible to apply theorem T10. For theorem T10 to
apply, each term $B\,C$ and $\overline{B}\,\overline{C}$ must be inverse of
each other. In this equation, one term is
the product of the inverts while the other is the invert of the product.
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
