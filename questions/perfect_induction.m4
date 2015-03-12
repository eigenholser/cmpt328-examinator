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
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Add a table here'))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Add a table here'))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Add a table here '))dnl
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Add a table here'))dnl
ifelse(`X'_ARG_,`X5',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Add a table here'))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
