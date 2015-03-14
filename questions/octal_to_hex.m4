divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Convert the following octal numbers to hexadecimal. Use the fact that each
octal or hexadecimal digit corresponds to 3--bit or 4--bit, respectively,
binary numbers.
dnl
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 0354
    \item 0177
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 0673
    \item 0172
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 0162
    \item 0426
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[(a)]
    \item 0272
    \item 0735
\end{enumerate}')dnl
dnl
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',`

'))
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`

'))
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',`

'))
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',`

'))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
