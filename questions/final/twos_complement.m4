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
\item How many whole binary digits, $N$, are needed to represent this decimal
number?
\item Convert this number to $N+1$--bit binary where N is the number of bits you
computed in the first step. Use a calculator for this step.
\item Convert the $N+1$--bit binary number to it`'RQ()s two`'RQ()s complement
binary representation. Do not use your calculator for this step. Show your
work.
\item Sign-extend the $N+1$--bit two`'RQ()s complement binary number to 32 binary digits.
\end{enumerate}
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
In general, the number of possible combinations for a number system of base $b$
and digits $N_b$ is

$$M_b = b^{N_b}$$

For a given number $R_k$ of base $k$, we can write

$$M_b = R_k$$

Since we are solving for $N_b$, we substitute and write

$$b^{N_b} = R_k$$

We can solve for $N_b$ by taking $log_b$ of each side of the relationship and
solving for $N_b$.

$$log_b b^{N_b} = log_b R_k$$

Which may be rewritten as

$$N_b \bullet log_b b = log_b R_k$$

Since $log_b b = 1$, we can further rewrite as

$$N_b = log_b R_k$$

Since $b = 2$ in this case, we can write the equation as follows:

$$N_2 = log_2 R_k$$

This is how we will compute the number of binary digits.
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',``
\begin{enumerate}[(a)]

\item
We are given $k = 10$, where $k$ is the base---i.e. decimal---and
$R_{10} = 447$,

where $R_{10}$ is the number represented in decimal.

The binary range, $M_2$, represented by the decimal number according to the
relationships established above is:

\begin{align}
N_2 &= log_2 R_k\cr
N_2 &= log_2 447\cr
N_2 &= 8.8047
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
We are given $k = 10$, where $k$ is the base---i.e. decimal---and
$R_{10} = 384$,

where $R_{10}$ is the number represented in decimal.

The binary range, $M_2$, represented by the decimal number according to the
relationships established above is:

\begin{align}
N_2 &= log_2 R_k\cr
N_2 &= log_2 384\cr
N_2 &= 8.5857
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
We are given $k = 10$, where $k$ is the base---i.e. decimal---and
$R_{10} = 513$,

where $R_{10}$ is the number represented in decimal.

The binary range, $M_2$, represented by the decimal number according to the
relationships established above is:

\begin{align}
N_2 &= log_2 R_k\cr
N_2 &= log_2 513\cr
N_2 &= 8.5857
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
We are given $k = 10$, where $k$ is the base---i.e. decimal---and
$R_{10} = 257$,

where $R_{10}$ is the number represented in decimal.

The binary range, $M_2$, represented by the decimal number according to the
relationships established above is:

\begin{align}
N_2 &= log_2 R_k\cr
N_2 &= log_2 257\cr
N_2 &= 8.0063
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
