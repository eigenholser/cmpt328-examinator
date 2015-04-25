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
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',``
$(a)$ 0x3840\\
\begin{align}
VAL_{D} &= (3 * 4096) + (8 * 256) + (4 * 16) + (0 * 1)\cr
        &= 12,288 + 2,048 + 64 + 0\cr
        &= 14,400
\end{align}
$(b)$ 0xFA8E\\
\begin{align}
VAL_{D} &= (15 * 4096) + (10 * 256) + (8 * 16) + (14 * 1)\cr
        &= 61,440 + 3,840 + 128 + 14\cr
        &= 64,142
\end{align}
''))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
$(a)$ 0xACDC\\
\begin{align}
VAL_{D} &= (10 * 4096) + (12 * 256) + (13 * 16) + (12 * 1)\cr
        &= 40,960 + 3,072 + 208 + 12\cr
        &= 44,252
\end{align}
$(b)$ 0x4F91\\
\begin{align}
VAL_{D} &= (4 * 4096) + (15 * 256) + (9 * 16) + (1 * 1)\cr
        &= 16,384 + 3,840 + 144 + 1\cr
        &= 20,369
\end{align}
''))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',``
$(a)$ 0xE9F5\\
\begin{align}
VAL_{D} &= (14 * 4096) + (9 * 256) + (15 * 16) + (5 * 1)\cr
        &= 57,344 + 2,304 + 240 + 5\cr
        &= 59,893
\end{align}
$(b)$ 0xDD7B\\
\begin{align}
VAL_{D} &= (13 * 4096) + (13 * 256) + (7 * 16) + (11 * 1)\cr
        &= 53,248 + 3,328 + 112 + 11\cr
        &= 56,699
\end{align}
''))dnl
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',``
$(a)$ 0x997F\\
\begin{align}
VAL_{D} &= (9 * 4096) + (8 * 256) + (7 * 16) + (15 * 1)\cr
        &= 36,864 + 2,048 + 112 + 15\cr
        &= 39,039
\end{align}
$(b)$ 0x4005\\
\begin{align}
VAL_{D} &= (4 * 4096) + (0 * 256) + (0 * 16) + (5 * 1)\cr
        &= 16,384 + 0 + 0 + 5\cr
        &= 16,389
\end{align}
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
