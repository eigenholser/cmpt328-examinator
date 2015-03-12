divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Convert the following hexadecimal numbers to decimal. You may convert each
hexadecimal digit to it's corresponding decimal value ``by inspection.''
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 0x3840
    \item 0xFA8E
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 0xACDC
    \item 0x4F91
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 0xE9F5
    \item 0xDD7B
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[(a)]
    \item 0x987F
    \item 0x4005
\end{enumerate}')dnl
dnl
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Solution later.'))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Solution later.'))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Solution later.'))dnl
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',`\textsc{solution}\\
Solution later.'))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
