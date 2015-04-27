divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Given the decimal number
ifelse(`X'_ARG_,`X1',`447')dnl
ifelse(`X'_ARG_,`X2',`384')dnl
ifelse(`X'_ARG_,`X3',`513')dnl
ifelse(`X'_ARG_,`X4',`257')dnl
\dots{}dnl
\begin{enumerate}[(a)]
\item How many whole binary digits are needed to represent this decimal number?
\item Convert this number to N+1--bit binary where N is the number of bits you
computed in the first step. Use a programming calculator for this step.
\item Convert the N+1--bit binary number to it`'RQ()s two`'RQ()s complement
binary representation. Do not use your calculator for this step. Show your
work.
\item Sign-extend the two`'RQ()s complement binary number to 32 binary digits.
\end{enumerate}
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
In general, the range of a number is represented as $M_b = b^N$ where $b$ is
the base and $N$ is the number of digits.

The number of binary digits, $N_2$ is to be determined. The number
represented in decimal is, obviously, the same as the binary representation.
Therefore, we can represent this relationship as follows:

$$M_2 = M_{10}$$

We can express the number in binary as $M_2 = 2^{N_2}$ where $N_2$ is the
number of binary digits represented.

Consider the logarithmic relationship $$log_k(b^N) = N\bullet log_k(b)$$

To convert base, we use the logarithmic relationship
$$log_b(M) = \frac{log_k(M)}{log_k(b)}$$
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',``
\begin{enumerate}[(a)]

\item
We are given $b = 10$, where $b$ is the base---i.e. decimal---and
$M_{10} = 447$,
where $M_{10}$ is the number represented in decimal.

The number, $M_2$, represented by the decimal number is $M_2 = 447$.

\begin{align}
M_2                  &= M_{10}\cr
log_2(M_2)           &= \frac{log_{10}(M_{10})}{log_{10}(2)}\cr
log_2(2^{N_2})       &= \frac{log_{10}(447)}{log_{10}(2)}\cr
N_2 \bullet log_2(2) &= \frac{2.6503}{0.3010}\cr
N_2 \bullet (1)      &= 8.8047\cr
N_2                  &= 8.8047\cr
\end{align}

The number of whole binary digits necessary to represent the decimal number 447
is 9.

\item Convert this number to 10--bit binary using a calculator.

$$01.1011.1111$$

\item Convert the 10--bit binary to it`'RQ()s complement representation.
Invert each bit and add 1.

$$10.0100.0001$$

\item Sign-extend to 32 bits.

Copy the sign bit into the most significant bit positions.

$$1111.1111.1111.1111.1111.1110.0100.0001$$

\end{enumerate}
''))dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
\begin{enumerate}[(a)]
\item
We are given $b = 10$, where $b$ is the base---i.e. decimal---and
$M_{10} = 384$, where $M_{10}$ is the number represented in decimal.

The number, $M_2$, represented by the decimal number is $M_2 = 384$.

\begin{align}
M_2                  &= M_{10}\cr
log_2(M_2)           &= \frac{log_{10}(M_{10})}{log_{10}(2)}\cr
log_2(2^{N_2})       &= \frac{log_{10}(384)}{log_{10}(2)}\cr
N_2 \bullet log_2(2) &= \frac{2.5843}{0.3010}\cr
N_2 \bullet (1)      &= 8.5857\cr
N_2                  &= 8.5857\cr
\end{align}

The number of whole binary digits necessary to represent the decimal number 384
is 9.

\item Convert this number to 10--bit binary using a calculator.

$$01.1000.0000$$

\item Convert the 10--bit binary to it`'RQ()s complement representation.
Invert each bit and add 1.

$$10.1000.0000$$

\item Sign-extend to 32 bits.

Copy the sign bit into the most significant bit positions.

$$1111.1111.1111.1111.1111.1110.1000.0000$$

\end{enumerate}
''))dnl
ifelse(`X'_ARG_,`X3',
ifdef(`INSTRUCTOR',``
\begin{enumerate}[(a)]

\item
We are given $b = 10$, where $b$ is the base---i.e. decimal---and
$M_{10} = 513$, where $M_{10}$ is the number represented in decimal.

The number, $M_2$, represented by the decimal number is $M_2 = 513$.

\begin{align}
M_2                  &= M_{10}\cr
log_2(M_2)           &= \frac{log_{10}(M_{10})}{log_{10}(2)}\cr
log_2(2^{N_2})       &= \frac{log_{10}(513)}{log_{10}(2)}\cr
N_2 \bullet log_2(2) &= \frac{2.7101}{0.3010}\cr
N_2 \bullet (1)      &= 9.0037\cr
N_2                  &= 9.0037\cr
\end{align}

The number of whole binary digits necessary to represent the decimal number 513
is 10.

\item Convert this number to 11--bit binary using a calculator.

$$010.0000.0001$$

\item Convert the 10--bit binary to it`'RQ()s complement representation.
Invert each bit and add 1.

$$101.1111.1111$$

\item Sign-extend to 32 bits.

Copy the sign bit into the most significant bit positions.

$$1111.1111.1111.1111.1111.1101.1111.1111$$

\end{enumerate}
''))dnl
ifelse(`X'_ARG_,`X4',
ifdef(`INSTRUCTOR',``
\begin{enumerate}[(a)]
\item
We are given $b = 10$, where $b$ is the base---i.e. decimal---and
$M_{10} = 257$, where $M_{10}$ is the number represented in decimal.

The number, $M_2$, represented by the decimal number is $M_2 = 257$.

\begin{align}
M_2                  &= M_{10}\cr
log_2(M_2)           &= \frac{log_{10}(M_{10})}{log_{10}(2)}\cr
log_2(2^{N_2})       &= \frac{log_{10}(257)}{log_{10}(2)}\cr
N_2 \bullet log_2(2) &= \frac{2.4099}{0.3010}\cr
N_2 \bullet (1)      &= 8.0063\cr
N_2                  &= 8.0063\cr
\end{align}

The number of whole binary digits necessary to represent the decimal number 257
is 9.

\item Convert this number to 10--bit binary using a calculator.

$$01.0000.0001$$

\item Convert the 10--bit binary to it`'RQ()s complement representation.
Invert each bit and add 1.

$$10.1111.1111$$

\item Sign-extend to 32 bits.

Copy the sign bit into the most significant bit positions.

$$1111.1111.1111.1111.1111.1110.1111.1111$$

\end{enumerate}
''))dnl
dnl
\medskip
divert(0)dnl
