divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `5')
divert(2)
\question
Convert the following octal numbers to hexadecimal. Use the fact that each
octal or hexadecimal digit corresponds to 3-bit or 4-bit, respectively,
binary numbers.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 071
    \item 0354
    \item 0177
\end{enumerate}'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Later
'))
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 0673
    \item 0172
    \item 0421
\end{enumerate}'
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Later
'))
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 0673
    \item 0162
    \item 0426
\end{enumerate}'
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Later
'))
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[(a)]
    \item 0573
    \item 0272
    \item 0735
\end{enumerate}'
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Later
'))
divert(0)
