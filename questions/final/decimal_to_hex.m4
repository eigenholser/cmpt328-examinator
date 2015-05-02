divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Consider the two possible methods for performing longhand conversion from base
$k$ to base $b$.
\begin{enumerate}[Method 1:]
\item Work from the left repeatedly dividing by the largest power of $b$ less
than or equal to the number to convert.
\item Work from the right repeatedly dividing by $b$.
\end{enumerate}

Using the method indicated, perform longhand conversion from decimal to
hexadecimal on the decimal numbers below:
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[Method 1:]
    \item 8922
    \item 5652
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[Method 1:]
    \item 7783
    \item 5616
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[Method 1:]
    \item 5498
    \item 6834
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[Method 1:]
    \item 6566
    \item 8852
\end{enumerate}')dnl
Show all your work.
\medskip
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
\begin{enumerate}[Method 1:]
\item 8922
\begin{align}
    \frac{8922}{4096} &= 2\;r\;730\cr
    \frac{730}{256}   &= 2\;r\;218\cr
    \frac{218}{16}    &= 13\;r\;10\cr
    \frac{10}{1}      &= 10\;r\;0
\end{align}
0x22DA\\

\item 5652
\begin{align}
    \frac{5652}{16} &= 353\;r\;4\cr
    \frac{353}{16}  &= 22\;r\;1\cr
    \frac{22}{16}   &= 1\;r\;6\cr
    \frac{1}{16}    &= 0\;r\;1
\end{align}
0x1614\\
\end{enumerate}
'))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`
\begin{enumerate}[Method 1:]
\item 7783
\begin{align}
    \frac{7783}{4096} &= 1\;r\;3687\cr
    \frac{3687}{256}  &= 14\;r\;103\cr
    \frac{103}{16}    &= 6\;r\;7\cr
    \frac{7}{1}       &= 7\;r\;0
\end{align}
0x1E67\\

\item 5616
\begin{align}
    \frac{5616}{16} &= 351\;r\;0\cr
    \frac{351}{16}  &= 21\;r\;15\cr
    \frac{21}{16}   &= 1\;r\;5\cr
    \frac{1}{16}    &= 0\;r\;1
\end{align}
0x15F0\\
\end{enumerate}
'))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',`
\begin{enumerate}[Method 1:]
\item 5498
\begin{align}
    \frac{5498}{4096} &= 1\;r\;1402\cr
    \frac{1402}{256}  &= 5\;r\;122\cr
    \frac{122}{16}    &= 7\;r\;10\cr
    \frac{10}{1}      &= 10\;r\;0
\end{align}
0x157A\\

\item 6834
\begin{align}
    \frac{6834}{16} &= 427\;r\;2\cr
    \frac{427}{16}  &= 26\;r\;11\cr
    \frac{26}{16}   &= 1\;r\;10\cr
    \frac{1}{16}    &= 0\;r\;1
\end{align}
0x1AB2\\
\end{enumerate}
'))dnl
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',`
\begin{enumerate}[Method 1:]
\item 6566
\begin{align}
    \frac{6566}{4096} &= 1\;r\;2470\cr
    \frac{2470}{256}  &= 9\;r\;166\cr
    \frac{166}{16}    &= 10\;r\;6\cr
    \frac{6}{1}       &= 6\;r\;0
\end{align}
0x19A6\\

\item 8852
\begin{align}
    \frac{8852}{16} &= 553\;r\;4\cr
    \frac{553}{16}  &= 34\;r\;9\cr
    \frac{34}{16}   &= 2\;r\;2\cr
    \frac{2}{16}    &= 0\;r\;2
\end{align}
0x2294\\
\end{enumerate}
'))dnl
dnl
\medskip
divert(0)dnl
