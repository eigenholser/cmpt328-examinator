divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `5')
divert(2)
\question
dnl
ifelse(`X'_ARG_,`X1',`You hold 10 coins in your hand. You toss them into the air and they fall to the ground. Each coin comes to rest face up or face down.')
dnl
ifelse(`X'_ARG_,`X2',`You hold two six-sided dice in your hand. You toss them on a table where they come to rest squarely.')
dnl
\begin{enumerate}[(a)]
    \item How many discrete states are there in this system?
    \item In decimal, how many numbers can be represented---i.e. what is the
        range?
\end{enumerate}
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')dnl
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',`
\textsc{solution}
\begin{enumerate}[(a)]
    \item 42
    \item 99
\end{enumerate}
')
)dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',`
\textsc{solution}
\begin{enumerate}[(a)]
    \item 39
    \item 53
\end{enumerate}
')
)dnl
divert(0)
