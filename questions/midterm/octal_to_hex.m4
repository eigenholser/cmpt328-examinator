divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Convert the following octal numbers to hexadecimal. Use the fact that each
octal or hexadecimal digit corresponds to 3--bit or 4--bit, respectively,
binary numbers.
dnl
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item 0354
    \item 0177
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item 0673
    \item 0172
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X3',`
\begin{enumerate}[(a)]
    \item 0162
    \item 0426
\end{enumerate}')dnl
ifelse(`X'_ARG_,`X4',`
\begin{enumerate}[(a)]
    \item 0272
    \item 0735
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
$(a)$ 0354\\
Convert each octal digit by inspection to 3--bit binary:
$$0354 = 011.101.100$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0354 &= 0.1110.1100\cr
     &= \hbox{0xE}\;\;\;\hbox{0xC}
\end{align}
Combine the hexadecimal digits: 0xEC.\\
$(b)$ 0177\\
Convert each octal digit by inspection to 3--bit binary:
$$0354 = 001.111.111$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0354 &= 0.0111.1111\cr
     &= \hbox{0x7}\;\;\;\hbox{0xF}
\end{align}
Combine the hexadecimal digits: 0x7F.
''))
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`
$(a)$ 0673\\
Convert each octal digit by inspection to 3--bit binary:
$$0673 = 110.111.011$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0673 &= 0001.1011.1011\cr
     &= \hbox{0x1}\;\;\;\hbox{0xB}\;\;\;\hbox{0xB}
\end{align}
Combine the hexadecimal digits: 0x1BB.\\
$(b)$ 0172\\
Convert each octal digit by inspection to 3--bit binary:
$$0172 = 001.111.010$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0172 &= 0.0111.1010\cr
     &= \hbox{0x7}\;\;\;\hbox{0xA}
\end{align}
Combine the hexadecimal digits: 0x7A.
'))
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',`
$(a)$ 0162\\
Convert each octal digit by inspection to 3--bit binary:
$$0162 = 001.110.010$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0162 &= 0.0111.0010\cr
     &= \hbox{0x7}\;\;\;\hbox{0x2}
\end{align}
Combine the hexadecimal digits: 0x72.\\
$(b)$ 0426\\
Convert each octal digit by inspection to 3--bit binary:
$$0426 = 100.010.110$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0426 &= 0001.0001.0110\cr
     &= \hbox{0x1}\;\;\;\hbox{0x1}\;\;\;\hbox{0x6}
\end{align}
Combine the hexadecimal digits: 0x116
'))
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',`
$(a)$ 0272\\
Convert each octal digit by inspection to 3--bit binary:
$$0272 = 010.111.010$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0272 &= 0.1011.1010\cr
     &= \hbox{0xB}\;\;\;\hbox{0xA}
\end{align}
Combine the hexadecimal digits: 0xBA.\\
$(b)$ 0735\\
Convert each octal digit by inspection to 3--bit binary:
$$0735 = 111.011.101$$
Now rearrange the bits into 4--bit groups that represent each hexadecimal
digit.
\begin{align}
0735 &= 00001.1101.1101\cr
     &= \hbox{0x1}\;\;\;\hbox{0xD}\;\;\;\hbox{0xD}
\end{align}
Combine the hexadecimal digits: 0x1DD.
'))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
