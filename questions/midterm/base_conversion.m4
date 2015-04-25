divert(-1)dnl
define(`VARIATIONS', `3')
define(`TIME', `10')
divert(2)dnl
%%
%% __file__
%%
\question
ifelse(`X'_ARG_,`X1',`
An RSA public key of 2,048 bits is the minimum length considered secure
today. How many decimal digits does that represent?
')dnl
ifelse(`X'_ARG_,`X2',`
In elliptic curve encryption, a public key of 224 bits is considered
secure today. How many decimal digits does that represent?
')dnl
ifelse(`X'_ARG_,`X3',`
In AES symmetric key encryption, a symmetric key of 112 bits is considered
secure today. How many decimal digits does that represent?
')dnl
\\

\textit{Hint:} The straightforward approach to this problem will have you
writing a \textit{very} large number $b^N$. That is not practical. Consider
the logarithmic relationship $$log_k(b^N) = N\bullet log_k(b)$$
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
In general, the number of discrete states is $M_b = b^N$ where $b$
is the base and $N$ is the number of digits.

The number of decimal digits, $N_{10}$ is to be determined. The number
of discrete states represented in decimal is, obviously, the same as
the binary representation. Therefore, we can represent this relationship
as follows:
$$M_{10} = M_2$$

We can express the number of discrete states in decimal as
$M_{10} = 10^{N_{10}}$ where $N_{10}$ is the number of decimal digits
represented.
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',``
\medskip
We are given $b = 2$, where $b$ is the base---i.e. binary---and
$N_2 = 2,048$, where $N_2$ is the number of binary digits, The number
of discrete states, $M_2$ represented by 2,048 binary digits is
$M_2 = 2^{2,048}$.

\begin{align}
M_{10} &= M_{2}\cr
log_{10}(10^{N_{10}}) &= \frac{log_2(2^{2,048})}{log_2(10)}\cr
N_{10} \bullet log_{10}(10) &= \frac{2,048 \bullet log_2(2)}{log_2(10)}\cr
N_{10} \bullet (1) &= \frac{2,048 \bullet (1)}{3.32}\cr
N_{10} &= 616.87
\end{align}
''))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
\medskip
We are given $b = 2$, where $b$ is the base---i.e. binary---and
$N_2 = 224$, where $N_2$ is the number of binary digits, The number
of discrete states, $M_2$ represented by 224 binary digits is
$M_2 = 2^{224}$.

\begin{align}
M_{10} &= M_{2}\cr
log_{10}(10^{N_{10}}) &= \frac{log_2(2^{224})}{log_2(10)}\cr
N_{10} \bullet log_{10}(10) &= \frac{224 \bullet log_2(2)}{log_2(10)}\cr
N_{10} \bullet (1) &= \frac{224 \bullet (1)}{3.32}\cr
N_{10} &= 67.47
\end{align}
''))dnl
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',``
\medskip
We are given $b = 2$, where $b$ is the base---i.e. binary---and
$N_2 = 112$, where $N_2$ is the number of binary digits, The number
of discrete states, $M_2$ represented by 112 binary digits is
$M_2 = 2^{112}$.

\begin{align}
M_{10} &= M_{2}\cr
log_{10}(10^{N_{10}}) &= \frac{log_2(2^{112})}{log_2(10)}\cr
N_{10} \bullet log_{10}(10) &= \frac{112 \bullet log_2(2)}{log_2(10)}\cr
N_{10} \bullet (1) &= \frac{112 \bullet (1)}{3.32}\cr
N_{10} &= 33.73
\end{align}
''))dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
