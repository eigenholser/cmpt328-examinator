divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
ifelse(`X'_ARG_,`X1',`
An RSA public key of 2,048 bits is the minimum length considered secure
today. How many decimal digits does that represent?
')dnl
ifelse(`X'_ARG_,`X2',`
In elliptic key encryption, a public key of 224 bits is considered
secure today. How many decimal digits does that represent?
')dnl
ifelse(`X'_ARG_,`X3',`
In AES symmetric key encryption, a symmetric key of 112 bits is considered
secure today. How many decimal digits does that represent?
')dnl
ifelse(`X'_ARG_,`X4',`
Given a single digit of a base 256 number system, how many binary digits does
that represent?')dnl
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',`\textsc{solution}\\
No idea.'))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',`\textsc{solution}\\
No idea.'))dnl
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',`\textsc{solution}\\
No idea.'))dnl
ifelse(`X'_ARG_,`X4',ifdef(`INSTRUCTOR',`\textsc{solution}\\
No idea.'))dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
