divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
dnl
ifelse(`X'_ARG_,`X1',`
Prove theorem T10 from Table 2.3 of Digital Design and Computer Architecture.
Do not prove the dual.
$$(B \bullet C) + (B + \overline{C}) = B$$')dnl
ifelse(`X'_ARG_,`X2',`
Prove theorem T9 from Table 2.3 of Digital Design and Computer Architecture.
Do not prove the dual.
$$B \bullet (B + C) = B$$')dnl
ifelse(`X'_ARG_,`X3',`
Prove the following Boolean expression:
$$B + \overline{B}\,C = B + C$$
Hint: Begin by expanding a term like this:
$$B + \overline{B}\,C\bullet(C + 1) = B + C$$')dnl
ifelse(`X'_ARG_,`X4',`
TODO: Replace this one---Given a single digit of a base 256 number system, how many binary digits does that represent?
$$ - $$')dnl

ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',`
\textsc{solution}\\
No idea.'))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',`
\textsc{solution}\\
No idea.'))dnl
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',`
\textsc{solution}\\
No idea.'))dnl
ifelse(`X'_ARG_,`X4',ifdef(`INSTRUCTOR',`
\textsc{solution}\\
No idea.'))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
