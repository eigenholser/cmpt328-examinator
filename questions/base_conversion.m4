divert(-1)dnl
define(`VARIATIONS', `3')
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
\\

\textit{Hint:} The straightforward approach to this problem will have you
writing a \textit{very} large number $b^N$. That is not practical. Consider
the logarithmic relationship $$log_k(b^N) = N\bullet log_k(b)$$
ifdef(`TIME',`
\medskip
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
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
