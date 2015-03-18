divert(-1)dnl
define(`VARIATIONS', `4')
define(`TIME', `15')
divert(2)dnl
%%
%% __file__
%%
\question
Consider the following logic circuit:
dnl
ifelse(`X'_ARG_,`X1',`
\begin{figure}[H]
    \centering
\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]

\node [nand gate, inputs = nn] at (0,0) (nand1) {};
\node [and gate, inputs = in] at ($(nand1.south) + (0,2.0cm)$) (and2) {};
\node [or gate, inputs = nn, anchor=input 2] at ($(nand1.north)+(2.0cm,0)$) (or1) {};
%
\draw (and2.input 1) -- ++(left:13mm) node[left] (B) {$B$};
\draw (and2.input 2) -- ++(left:15mm) node[left] (C) {$C$};
%\node (C) at (A|-or1.input 2) {$C$};
%\draw (or1.input 1) -- (C);
\draw (nand1.output) -- ++(right:5mm) |- (or1.input 2);
\draw (or1.output) -- ++(right:5mm) node[right] (Y) {$Y$};
%
\draw (and2.input 1) -- ++(left:5mm) |- (nand1.input 1);
\draw (and2.input 2) -- ++(left:10mm) |- (nand1.input 2);
\draw (and2.output) -- ++(right:7mm) |- (or1.input 1);
\end{tikzpicture}
%\caption{$\overline{B}\,C + \overline{B\,C}$}
\caption{Logic circuit.}
\end{figure}
')dnl
ifelse(`X'_ARG_,`X2',`
\begin{figure}[H]
    \centering
\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]

\node [nand gate, inputs = nn] at (0,0) (nand1) {};
\node [and gate, inputs = nn] at ($(nand1.south) + (0,2.0cm)$) (and2) {};
\node [or gate, inputs = nn, anchor=input 2] at ($(nand1.north)+(2.0cm,0)$) (or1) {};
%
\draw (and2.input 1) -- ++(left:15mm) node[left] (B) {$B$};
\draw (and2.input 2) -- ++(left:15mm) node[left] (C) {$C$};
%\node (C) at (A|-or1.input 2) {$C$};
%\draw (or1.input 1) -- (C);
\draw (nand1.output) -- ++(right:5mm) |- (or1.input 2);
\draw (or1.output) -- ++(right:5mm) node[right] (Y) {$Y$};
%
\draw (and2.input 1) -- ++(left:5mm) |- (nand1.input 1);
\draw (and2.input 2) -- ++(left:10mm) |- (nand1.input 2);
\draw (and2.output) -- ++(right:7mm) |- (or1.input 1);
\end{tikzpicture}
%\caption{$B\,C + \overline{B\,C}$}
\caption{Logic circuit.}
\end{figure}
')dnl
ifelse(`X'_ARG_,`X3',``
\begin{figure}[H]
    \centering
\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]

\node [nand gate, inputs = nn] at (0,0) (nand1) {};
\node [nor gate, inputs = nn] at ($(nand1.south) + (0,2.0cm)$) (nor1) {};
\node [or gate, inputs = nn, anchor=input 2] at ($(nand1.north)+(2.0cm,0)$) (or1) {};
%
\draw (nor1.input 1) -- ++(left:15mm) node[left] (B) {$B$};
\draw (nor1.input 2) -- ++(left:15mm) node[left] (C) {$C$};
%\node (C) at (A|-or1.input 2) {$C$};
%\draw (or1.input 1) -- (C);
\draw (nand1.output) -- ++(right:5mm) |- (or1.input 2);
\draw (or1.output) -- ++(right:5mm) node[right] (Y) {$Y$};
%
\draw (nor1.input 1) -- ++(left:5mm) |- (nand1.input 1);
\draw (nor1.input 2) -- ++(left:10mm) |- (nand1.input 2);
\draw (nor1.output) -- ++(right:4mm) |- (or1.input 1);
\end{tikzpicture}
%\caption{$\overline{B}\,\overline{C} + \overline{B\,C}$)
\caption{Logic circuit.}
\end{figure}
'')dnl
ifelse(`X'_ARG_,`X4',``
\begin{figure}[H]
    \centering
\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]

\node [nor gate, inputs = nn] at (0,0) (nor1) {};
%\node [and gate, inputs = in] at ($(nor1.south) + (0,2.0cm)$) (and2) {};
\node [or gate, inputs = nii, anchor=input 1] at ($(nor1.south)+(2.0cm,-0.5cm)$) (or1) {};
%
\draw (nor1.input 1) -- ++(left:13mm) node[left] (B) {$B$};
\draw (nor1.input 2) -- ++(left:15mm) node[left] (C) {$C$};
%\node (C) at (A|-or1.input 2) {$C$};
%\draw (or1.input 1) -- (C);
\draw (nor1.output) -- ++(right:3mm) |- (or1.input 1);
\draw (or1.output) -- ++(right:5mm) node[right] (Y) {$Y$};
%
\draw (nor1.input 1) -- ++(left:5mm) |- (or1.input 2);
\draw (nor1.input 2) -- ++(left:10mm) |- (or1.input 3);
%\draw (and2.output) -- ++(right:7mm) |- (or1.input 1);
\end{tikzpicture}
%\caption{$\overline{B}\,\overline{C} + \overline{B\,C}$}
\caption{Logic circuit.}
\end{figure}
'')dnl
\begin{enumerate}[(a)]
    \item Draw a complete truth table with minterms and minterm names. Write a
    Boolean equation in sum-of-products canonical form.
    \item Draw a complete truth table with maxterms and maxterm names. Write a
    Boolean equation in product-of-sums canonical form.
    \item Simplify the sum-of-products Boolean equation.
\end{enumerate}
dnl
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',``
The Boolean function is $\overline{B}\,C + \overline{B\,C}$.
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && \overline{B}\,C && \overline{B\,C} && Y && minterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 0 && 1 && 1 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 1 && 1 && 1 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 0 && 1 && 1 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 0 && 0 && 0 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$ sum-of-products.}
\end{figure}
The Boolean equation in sum-of-products canonical form is the sum of the
minterms for which $Y$ is 1.
\begin{align}
    Y &= m_0 + m_1 + m_2\cr
    Y &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C}\cr
\end{align}
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && \overline{B}\,C && \overline{B\,C} && Y && maxterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 0 && 1 && 1 && $ B + C                      $ && $M_0$\cr
    0 & 1 && 1 && 1 && 1 && $ B + \overline{C}           $ && $M_1$\cr
    1 & 0 && 0 && 1 && 1 && $ \overline{B} + C           $ && $M_2$\cr
    1 & 1 && 0 && 0 && 0 && $ \overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$ product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0.
\begin{align}
    Y &= M_3\cr
    Y &= \overline{B} + \overline{C}
\end{align}
Simplify the sum-of-products Boolean equation.
\begin{align}
    Y &= m_0 + m_1 + m_2\cr
      &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C}\cr
      &= \overline{B} \bullet (C + \overline{C}) + B\,\overline{C}\cr
      &= \overline{B} \bullet (1) + B\,\overline{C}\cr
      &= \overline{B} + B\,\overline{C}\cr
      &= \overline{B} + \overline{C}
\end{align}
''))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
The Boolean function is $B\,C + \overline{B\,C}$.
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && B\,C && \overline{B\,C} && Y && minterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 0 && 1 && 1 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 0 && 1 && 1 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 0 && 1 && 1 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 1 && 0 && 1 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$.}
\end{figure}
The Boolean equation in sum-of-products canonical form is the sum of the
minterms for which $Y$ is 1.
\begin{align}
    Y &= m_0 + m_1 + m_2 + m_3\cr
    Y &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C} + B\,C\cr
\end{align}
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && \overline{B}\,C && \overline{B\,C} && Y && maxterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 0 && 1 && 1 && $ B + C                      $ && $M_0$\cr
    0 & 1 && 0 && 1 && 1 && $ B + \overline{C}           $ && $M_1$\cr
    1 & 0 && 0 && 1 && 1 && $ \overline{B} + C           $ && $M_2$\cr
    1 & 1 && 1 && 0 && 1 && $ \overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$ product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0. There are no terms for which $Y$ is 0. Therefore,
\begin{align}
    Y &= 1
\end{align}
Simplify the sum-of-products Boolean equation.
\begin{align}
    Y &= m_0 + m_1 + m_2 + m_3\cr
      &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C} + B\,C\cr
      &= (\overline{B}\,\overline{C}) + (\overline{B}\,C + B\,\overline{C} + B\,C)\cr
      &= (\overline{B}) + (B)\cr
      &= (\overline{B} + B)\cr
      &= B
\end{align}
''))dnl
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',``
The Boolean function is $\overline{B}\,\overline{C} + \overline{B\,C}$.
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && \overline{B}\,\overline{C} && \overline{B\,C} && Y && minterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 1 && 1 && 1 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 0 && 1 && 1 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 0 && 1 && 1 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 0 && 0 && 0 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,\overline{C} + \overline{B\,C}$.}
\end{figure}
The Boolean equation in sum-of-products canonical form is the sum of the
minterms for which $Y$ is 1.
\begin{align}
    Y &= m_0 + m_1 + m_2\cr
    Y &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C}\cr
\end{align}
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && \overline{B}\,C && \overline{B\,C} && Y && maxterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 1 && 1 && 1 && $ B + C                      $ && $M_0$\cr
    0 & 1 && 0 && 1 && 1 && $ B + \overline{C}           $ && $M_1$\cr
    1 & 0 && 0 && 1 && 1 && $ \overline{B} + C           $ && $M_2$\cr
    1 & 1 && 0 && 0 && 0 && $ \overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$ product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0.
\begin{align}
    Y &= M_3\cr
    Y &= \overline{B} + \overline{C}
\end{align}
Simplify the sum-of-products Boolean equation.
\begin{align}
    Y &= m_0 + m_1 + m_2\cr
      &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C}\cr
      &= \overline{B} \bullet (\overline{C} + C) + B\,\overline{C}\cr
      &= \overline{B} \bullet (1) + B\,\overline{C}\cr
      &= \overline{B} + B\,\overline{C}\cr
      &= \overline{B} + \overline{C}
\end{align}
''))dnl
ifelse(`X'_ARG_,`X4',ifdef(`INSTRUCTOR',``
The Boolean function is $\overline{B}\,\overline{C} + \overline{B\,C}$ but expressed
in the circuit after applying DeMorgans theorem.
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && \overline{B}\,\overline{C} && \overline{B} + \overline{C} && Y && minterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 1 && 1 && 1 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 0 && 1 && 1 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 0 && 1 && 1 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 0 && 0 && 0 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,\overline{C} + \overline{B\,C}$.}
\end{figure}
The Boolean equation in sum-of-products canonical form is the sum of the
minterms for which $Y$ is 1.
\begin{align}
    Y &= m_0 + m_1 + m_2\cr
    Y &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C}\cr
\end{align}
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && \overline{B}\,C && \overline{B\,C} && Y && maxterm && name \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && \omit && \omit && \omit && \omit \cr
    0 & 0 && 1 && 1 && 1 && $ B + C                      $ && $M_0$\cr
    0 & 1 && 0 && 1 && 1 && $ B + \overline{C}           $ && $M_1$\cr
    1 & 0 && 0 && 1 && 1 && $ \overline{B} + C           $ && $M_2$\cr
    1 & 1 && 0 && 0 && 0 && $ \overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$ product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0.
\begin{align}
    Y &= M_3\cr
    Y &= \overline{B} + \overline{C}
\end{align}
Simplify the sum-of-products Boolean equation.
\begin{align}
    Y &= m_0 + m_1 + m_2\cr
      &= \overline{B}\,\overline{C} + \overline{B}\,C + B\,\overline{C}\cr
      &= \overline{B} \bullet (\overline{C} + C) + B\,\overline{C}\cr
      &= \overline{B} \bullet (1) + B\,\overline{C}\cr
      &= \overline{B} + B\,\overline{C}\cr
      &= \overline{B} + \overline{C}
\end{align}
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
