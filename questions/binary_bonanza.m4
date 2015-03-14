divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `10')
divert(2)dnl
\question
Perform longhand conversion of the following decimal numbers to 6--bit two`'RQ()s
complement binary numbers. Perform indicated addition or subtraction. Indicate
whether or not the sum overflows a 6-bit result. In each case, specify why or
why not.
ifelse(`X'_ARG_,`X1',`
\begin{enumerate}[(a)]
    \item $-16 - 15$
    \item $-31 -20$
    \item $9 -26$
\end{enumerate}')dnl
dnl
ifelse(`X'_ARG_,`X2',`
\begin{enumerate}[(a)]
    \item $-25 + 30$
    \item $-17 -16$
    \item $5 - 10$
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
$(a) -16 - 15$\\\medskip
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

\binaryadd{110000}{100001}{110001}

So, $-15$ is equal to 110001.

Now add the two numbers:
\binaryadd{110000}{110001}{1100001}

There is a carry out of the msb. Both sign bits are the same and the
sign bit of the result is the same. The operation does not overflow.

%%%
%%%

$(b) -31 - 20$ \\ \medskip
First, perform longhand conversion of $-31$ and $-20$ to 6--bit
two`'RQ()s complement binary:

\begin{align}
    \frac{31}{16} &= 1 r 15\cr
    \frac{15}{8} &= 1 r 7\cr
    \frac{7}{4} &= 1 r 3\cr
    \frac{3}{2} &= 1 r 1\cr
    \frac{1}{2} &= 1 r 0
\end{align}

The magnitude of $-31$ is 11111. The magnitude is positive so the sign bit is 0.
Perform sign extension by copying the sign bit into the most significant
bit positions. This yields 011111.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 100000.

\binaryadd{100000}{000001}{100001}

So, $-31$ is equal to 100001.

\begin{align}
    \frac{20}{16} &= 1 r 4\cr
    \frac{4}{8} &= 0 r 4\cr
    \frac{4}{4} &= 1 r 0\cr
    \frac{0}{2} &= 0 r 0\cr
    \frac{0}{1} &= 0 r 0
\end{align}

The magnitude of $-20$ is 10100. Since this is the magnitude, it is positive
and the sign bit is 0.

Perform sign extension by copying the sign bit in to the most significant
positions to make a 6--bit binary number. This yields 010100.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 101011.

\binaryadd{101011}{000001}{101100}

So, $-20$ is equal to 101100.

Now add the two numbers:
\binaryadd{100001}{101100}{1001101}

The sign bits of the numbers being added are
negative but the sign bit of the result is positive. The operation does
overflow. There is also a carry out of the msb.
\medskip

%%%
%%%

$(c) 9 - 26$ \\ \medskip
First, perform longhand conversion of $9$ and $-26$ to 6--bit
two`'RQ()s complement binary:

\begin{align}
    \frac{9}{8} &= 1 r 1\cr
    \frac{1}{4} &= 0 r 1\cr
    \frac{1}{2} &= 0 r 1\cr
    \frac{1}{1} &= 1 r 0
\end{align}

The magnitude of $9$ is 1001. The magnitude is positive so the sign bit is 0.
Perform sign extension by copying the sign bit into the most significant
bit positions. This yields \textbf{001001}. This number is positive and so already
a valid two`'RQ()s complement binary number.

\begin{align}
    \frac{26}{16} &= 1 r 10\cr
    \frac{10}{8} &= 1 r 2\cr
    \frac{2}{4} &= 0 r 2\cr
    \frac{2}{2} &= 1 r 0\cr
    \frac{0}{1} &= 0 r 0
\end{align}

The magnitude of $-26$ is 11010. Since this is the magnitude, it is positive
and the sign bit is 0. Perform sign extension by copying the sign bit in to
the most significant positions to make a 6--bit binary number. This yields
011010.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 100101.

\binaryadd{011010}{000001}{100110}

So, $-26$ is equal to 100110.

Now add the two numbers:
\binaryadd{100110}{001001}{101111}

Adding a positive and a negative two`'RQ()s complement number cannot overflow.
The operation does not overflow.

''))dnl
dnl
ifelse(`X'_ARG_,`X2',
ifdef(`INSTRUCTOR',``
$(a) -25 + 30$\\\medskip
First, perform longhand conversion of $-25$ and $30$ to 6--bit
two`'RQ()s complement binary:

\begin{align}
    \frac{25}{16} &= 1 r 9\cr
    \frac{9}{8} &= 1 r 1\cr
    \frac{1}{4} &= 0 r 1\cr
    \frac{1}{2} &= 0 r 1\cr
    \frac{1}{1} &= 1 r 0
\end{align}

The magnitude of $-25$ is 11001. The magnitude is positive so the sign bit is
0. Perform sign extension by copying the sign bit into the most significant bit
positions. This yields 011001.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 100110.

\binaryadd{100110}{000001}{100111}

So, $-25$ is equal to 110111.

\begin{align}
    \frac{30}{2} &= 15 r 0\cr
    \frac{15}{2} &= 7 r 1\cr
    \frac{7}{2} &= 3 r 1\cr
    \frac{3}{2} &= 1 r 1\cr
    \frac{1}{2} &= 0 r 1
\end{align}

The magnitude of $30$ is 11110. Since this is a positive number, the sign bit
is 0. Perform sign extension by copying the sign bit in to the most significant
positions to make a 6--bit binary number. This yields 011110.

Now add the two numbers:
\binaryadd{110111}{011110}{1000101}

Adding a positive and a negative two`'RQ()s complement number cannot overflow.
The operation does not overflow. Note there is a carry out of the msb.

%%%
%%%

$(b) -17 - 16$ \\ \medskip
First, perform longhand conversion of $-17$ and $-16$ to 6--bit two`'RQ()s
complement binary:

\begin{align}
    \frac{17}{2} &= 8 r 1\cr
    \frac{8}{2} &= 4 r 0\cr
    \frac{4}{2} &= 2 r 0\cr
    \frac{2}{2} &= 1 r 0\cr
    \frac{1}{2} &= 0 r 1
\end{align}

The magnitude of $-17$ is 10001. The magnitude is positive so the sign bit is 0.
Perform sign extension by copying the sign bit into the most significant
bit positions. This yields 010001.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 101110.

\binaryadd{101110}{000001}{101111}

So, $-17$ is equal to 101111 in two`'RQ()s complement representation.

\begin{align}
    \frac{16}{2} &= 8 r 0\cr
    \frac{8}{2} &= 4 r 0\cr
    \frac{4}{2} &= 2 r 0\cr
    \frac{2}{2} &= 1 r 0\cr
    \frac{1}{2} &= 0 r 1
\end{align}

The magnitude of $-16$ is 10000. Since this is the magnitude, it is positive
and the sign bit is 0. Perform sign extension by copying the sign bit in to
the most significant positions to make a 6--bit binary number. This yields
010000.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 101111.

\binaryadd{101111}{000001}{110000}

So, $-16$ is equal to 110000.

Now add the two numbers:
\binaryadd{101111}{110000}{1011111}

The sign bits of the numbers being added are negative but the sign bit of the
result is positive. The operation does overflow. There is also a carry out
of the msb.
\medskip

%%%
%%%

$(c) 5 - 10$ \\ \medskip
First, perform longhand conversion of $5$ and $-10$ to 6--bit two`'RQ()s
complement binary:

\begin{align}
    \frac{5}{2} &= 2 r 1\cr
    \frac{2}{2} &= 1 r 0\cr
    \frac{1}{2} &= 0 r 1
\end{align}

The magnitude of $5$ is 101. The magnitude is positive so the sign bit is 0.
Perform sign extension by copying the sign bit into the most significant
bit positions. This yields \textbf{000101}. This number is positive and so
already a valid two`'RQ()s complement binary number.

\begin{align}
    \frac{10}{2} &= 5 r 0\cr
    \frac{5}{2} &= 2 r 1\cr
    \frac{2}{2} &= 1 r 0\cr
    \frac{1}{2} &= 0 r 1
\end{align}

The magnitude of $-10$ is 1010. Since this is the magnitude, it is positive
and the sign bit is 0. Perform sign extension by copying the sign bit in to
the most significant positions to make a 6--bit binary number. This yields
001010.

Now perform two`'RQ()s complement by inverting the digits and
adding 1. Inverting the bits yields 110101.

\binaryadd{110101}{000001}{110110}

So, $-10$ is equal to 110110.

Now add the two numbers:
\binaryadd{000101}{110110}{111011}

Adding a positive and a negative two`'RQ()s complement number cannot overflow.
The operation does not overflow. There is no carry.
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
