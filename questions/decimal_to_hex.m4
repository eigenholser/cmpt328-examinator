divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Convert the following decimal numbers to hexadecimal.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 387
    \item 1723
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 455
    \item 3963
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 911
    \item 2541
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[(a)]
    \item 672
    \item 4005
\end{enumerate}')dnl
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
Solution later.'))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
Solution later.'))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
Solution later.'))dnl
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
Solution later.'))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
