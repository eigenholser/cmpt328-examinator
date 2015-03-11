divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)
\question
Convert the following hexadecimal numbers to decimal. You may convert each
hexadecimal digit to it's corresponding decimal value ``by inspection.''
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 0x3840
    \item 0xFA8E
\end{enumerate}'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Solution later.
'))
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 0xACDC
    \item 0x4F91
\end{enumerate}'
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Solution later.
'))
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 0xE9F5
    \item 0xDD7B
\end{enumerate}'
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Solution later.
'))
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[(a)]
    \item 0x987F
    \item 0x4005
\end{enumerate}'
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
Solution later.
'))
divert(0)
