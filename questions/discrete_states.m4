divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
dnl
ifelse(`X'_ARG_,`X1',`You hold 10 coins in your hand. You toss them into the air and they fall to the ground. Each coin comes to rest face up or face down.')dnl
ifelse(`X'_ARG_,`X2',`You hold two six-sided dice in your hand. You toss them on a table where they come to rest squarely.')dnl

\begin{enumerate}[(a)]
    \item How many discrete states are there in this system?
    \item In decimal, how many numbers can be represented---i.e. what is the
        range?
\end{enumerate}
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')
ifdef(`INSTRUCTOR',`
\textsc{solution}
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',``
\begin{enumerate}[(a)]
    \item There are 20 discrete states---2 per coin with 10 coins.
    \item Each penny represents 2 states. Therefore the base is 2. In
    general, the range is $b^N$ where N is the number of devices. In this
    case, $N = 10$ so the number of states is $2^{10} = 1,024$.
\end{enumerate}\bigskip
''))
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
\begin{enumerate}[(a)]
    \item There are 12 discrete states---6 per die with 2 die.
    \item Each die represents 6 states. Therefore the base is 6. In
    general, the range is $b^N$ where N is the number of devices. In this
    case, $N = 2$ so the number of states is $6^2 = 36$.
\end{enumerate}\bigskip
''))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
