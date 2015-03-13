divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `10')
divert(2)dnl
\question
Perform longhand conversion of the following decimal numbers to 6-bit two`'RQ()s
complement binary numbers. Perform indicated addition or subtraction. Indicate
whether or not the sum overflows a 6-bit result. In each case, specify why or
why not.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item $-16 - 15$
    \item $-31 -20$
    \item $-7 -10$
\end{enumerate}')dnl
dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item $-25 + 33$
    \item $-7 -10$
    \item $7 + 25$
\end{enumerate}')dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}
')
ifelse(`X'_ARG_,`X1',
ifdef(`INSTRUCTOR',``
$(a)$
First, perform longhand conversion of $-16$ and $-15$ to 6--bit
two`'RQ()s complement binary:

\begin{align}
    \frac{16}{2} &= 8 r 0\cr
    \frac{8}{2} &= 4 r 0\cr
    \frac{4}{2} &= 2 r 0\cr
    \frac{2}{2} &= 1 r 0\cr
    \frac{1}{2} &= 0 r 1
\end{align}

The magnitude of $-16$ is 10000.
The magnitude is positive so the sign bit is 0.
Perform sign extension by copying the sign bit into the most significant
bit positions. This yields 010000.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 101111.

\binaryadd{101111}{000001}{110000}

So, $-16$ is equal to 110000.

\begin{align}
    \frac{15}{2} &= 7 r 1\cr
    \frac{7}{2} &= 3 r 1\cr
    \frac{3}{2} &= 1 r 1\cr
    \frac{1}{2} &= 0 r 1\cr
\end{align}

The magnitude of $-15$ is 1111.
Since this is the magnitude, it is positive and the sign bit is 0.
Perform sign extension by copying the sign bit in to the most
significant positions to make a 6--bit binary number. This
yields 001111.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 110000.

\binaryadd{110000}{110001}{110001}

So, $-15$ is equal to 110001.

Now add the two numbers:
\binaryadd{110000}{110001}{1100001}

There is a carry out of the msb. Both sign bits are the same and the
sign bit of the result is the same. The operation does not overflow.

\begin{enumerate}[(a)]
    \item \binaryadd{001110}{110100}{110110}
    \item \binaryadd{001110}{110100}{110110}
\end{enumerate}''))dnl
dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',`
\begin{enumerate}[(a)]
    \item \binaryadd{001110}{110100}{110110}
    \item \binaryadd{001110}{110100}{110110}
    \item \binaryadd{001110}{110100}{110110}
\end{enumerate}'))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
