divert(-1)dnl
define(`VARIATIONS', `5')
define(`TIME', `5')
divert(2)
\question
Use perfect induction to prove:
ifelse(`X'_ARG_,`X1',`
$$(B \bullet C) + (B \bullet \overline{C}) = B$$
'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Add a table here
'
)
)
ifelse(`X'_ARG_,`X2',`
$$B\bullet(B + C) = B$$'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')ifdef(`INSTRUCTOR',`
\textsc{solution}
Add a table here
'))
ifelse(`X'_ARG_,`X3',`
$$B + \overline{B}\,C = B + C$$'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')ifdef(`INSTRUCTOR',`
\textsc{solution}
Add a table here
'))
ifelse(`X'_ARG_,`X4',`
$$\overline{B\,C} = \overline{B} + \overline{C}$$'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')ifdef(`INSTRUCTOR',`
\textsc{solution}
Add a table here
'))
ifelse(`X'_ARG_,`X5',`
$$\overline{B + C} = \overline{B} \bullet \overline{C}$$'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')ifdef(`INSTRUCTOR',`
\textsc{solution}
Add a table here
'))
dnl
divert(0)
