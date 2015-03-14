divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Perform longhand conversion of the following decimal numbers to hexadecimal.
Show all your work.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 7911
    \item 4541
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 6672
    \item 4505
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 4387
    \item 5723
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[(a)]
    \item 5455
    \item 9963
\end{enumerate}')dnl
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',`
$(a)$\\
\begin{align}
    \frac{7911}{4096} &= 1 r 3815\cr
    \frac{3815}{256} &= 14 r 231\cr
    \frac{231}{16} &= 14 r 7\cr
    \frac{7}{1} &= 7 r 0
\end{align}
0x1EE7\\
$(b)$\\
\begin{align}
    \frac{4541}{16} &= 283 r 13\cr
    \frac{283}{16} &= 17 r 11\cr
    \frac{17}{16} &= 1 r 1\cr
    \frac{1}{16} &= 0 r 1
\end{align}
0x11BD\\
'))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`
$(a)$\\
\begin{align}
    \frac{6672}{4096} &= 1 r 2576\cr
    \frac{3815}{256} &= 10 r 16\cr
    \frac{231}{16} &= 1 r 0\cr
    \frac{7}{1} &= 0 r 0
\end{align}
0x1A10\\
$(b)$\\
\begin{align}
    \frac{4505}{16} &= 281 r 9\cr
    \frac{281}{16} &= 17 r 9\cr
    \frac{17}{16} &= 1 r 1\cr
    \frac{1}{16} &= 0 r 1
\end{align}
0x1199\\
'))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',`
$(a)$\\
\begin{align}
    \frac{4387}{4096} &= 1 r 291\cr
    \frac{291}{256} &= 1 r 35\cr
    \frac{35}{16} &= 2 r 3\cr
    \frac{3}{1} &= 3 r 0
\end{align}
0x1123\\
$(b)$\\
\begin{align}
    \frac{5723}{16} &= 357 r 11\cr
    \frac{357}{16} &= 22 r 5\cr
    \frac{22}{16} &= 1 r 6\cr
    \frac{1}{16} &= 0 r 1
\end{align}
0x165B\\
'))dnl
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',`
$(a)$\\
\begin{align}
    \frac{5455}{4096} &= 1 r 1359\cr
    \frac{1359}{256} &= 5 r 79\cr
    \frac{79}{16} &= 4 r 15\cr
    \frac{15}{1} &= 15 r 0
\end{align}
0x154F\\
$(b)$\\
\begin{align}
    \frac{9963}{16} &= 622 r 11\cr
    \frac{622}{16} &= 38 r 14\cr
    \frac{38}{16} &= 2 r 6\cr
    \frac{2}{16} &= 0 r 2
\end{align}
0x26EB\\
'))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
