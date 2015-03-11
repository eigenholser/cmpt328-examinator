divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `5')
divert(2)
\question
Perform longhand conversion of the following decimal numbers to 6-bit twos
complement binary numbers. Perform indicated addition or subtraction. Indicate
whether or not the sum overflows a 6-bit result. In each case, specify why or
why not.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item $-16 - 15$
    \item $-31 -20$
    \item $-7 -10$
\end{enumerate}'
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
\begin{enumerate}[(a)]
    \item \binaryadd{001110}{110100}{110110}
    \item \binaryadd{001110}{110100}{110110}
    \item \binaryadd{001110}{110100}{110110}
\end{enumerate}'
)
)
dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item $-25 + 33$
    \item $-7 -10$
    \item $7 + 25$
\end{enumerate}'
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
')dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
\begin{enumerate}[(a)]
    \item \binaryadd{001110}{110100}{110110}
    \item \binaryadd{001110}{110100}{110110}
    \item \binaryadd{001110}{110100}{110110}
\end{enumerate}'
)
)
dnl
divert(0)