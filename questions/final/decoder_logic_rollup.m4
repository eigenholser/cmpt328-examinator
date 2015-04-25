divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `15')
divert(2)dnl
%%
%% __file__
%%
\question
Consider the following logic circuit:
dnl
ifelse(`X'_ARG_,`X1',``
\begin{figure}[H]
    \centering

\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]
\draw (0,0)coordinate (O)--++(90:3)coordinate (A)--++(180:2)coordinate (B)--++(270:3)coordinate (C)--cycle;
\draw ($(C)!0.50!(B)$)--++(0:-1)node[left]{$B$};
\draw ($(C)!0.30!(B)$)--++(0:-1)node[left]{$C$};
\draw ($(A)!0.50!(B)$)++(90:-2mm)node[font=\footnotesize]{2:4};
\draw ($(A)!0.50!(B)$)++(90:-5mm)node[font=\footnotesize]{Decoder};
\foreach \y/\t/\b/\c in {0.1/0/0/0,0.2/1/0/1,0.3/2/1/0,0.4/3/1/1} {
\draw ($(A)! 0.2 + \y*1.5 !(O)$)--++(0:2cm) node[right] (hot\t) {$Y_{\t}$};
\draw ($(A)! 0.2 + \y*1.5 !(O)$)++(0:-0.1) node[left,font=\footnotesize] {$\b$ $\c$};}
\node [or gate, inputs = nn, point down] at (1,-0.75) (or1) {};
\draw (or1.output) -- ++(down:6mm) ++(down:4mm) node[] (Y) {$Y$};
\draw (or1.input 1) |- (hot2);
\draw (or1.input 2) |- (hot3);
\end{tikzpicture}

\caption{Logic circuit implemented using decoder.}
\end{figure}
'')dnl
ifelse(`X'_ARG_,`X2',``
\begin{figure}[H]
    \centering

\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]
\draw (0,0)coordinate (O)--++(90:3)coordinate (A)--++(180:2)coordinate (B)--++(270:3)coordinate (C)--cycle;
\draw ($(C)!0.50!(B)$)--++(0:-1)node[left]{$B$};
\draw ($(C)!0.30!(B)$)--++(0:-1)node[left]{$C$};
\draw ($(A)!0.50!(B)$)++(90:-2mm)node[font=\footnotesize]{2:4};
\draw ($(A)!0.50!(B)$)++(90:-5mm)node[font=\footnotesize]{Decoder};
\foreach \y/\t/\b/\c in {0.1/0/0/0,0.2/1/0/1,0.3/2/1/0,0.4/3/1/1} {
\draw ($(A)! 0.2 + \y*1.5 !(O)$)--++(0:2cm) node[right] (hot\t) {$Y_{\t}$};
\draw ($(A)! 0.2 + \y*1.5 !(O)$)++(0:-0.1) node[left,font=\footnotesize] {$\b$ $\c$};}
\node [or gate, inputs = nn, point down] at (1,-0.75) (or1) {};
\draw (or1.output) -- ++(down:6mm) ++(down:4mm) node[] (Y) {$Y$};
\draw (or1.input 1) |- (hot0);
\draw (or1.input 2) |- (hot1);
\end{tikzpicture}

\caption{Logic circuit implemented using decoder.}
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
The Boolean function is $B$.

\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt \cr
    0 & 0 && 0 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 0 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 1 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 1 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for decoder logic circuit---sum-of-products.}
\end{figure}
The Boolean equation in sum-of-products canonical form is the sum of the
minterms for which $Y$ is 1.
\begin{align}
    Y &= m_2 + m_3\cr
    Y &= B\,\overline{C} + B\,C\cr
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
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt \cr
    0 & 0 && 0 && $B + C$                       && $M_0$\cr
    0 & 1 && 0 && $B + \overline{C}$            && $M_1$\cr
    1 & 0 && 1 && $\overline{B} + C$            && $M_2$\cr
    1 & 1 && 1 && $\overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for multiplexer logic circuit---product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0.
\begin{align}
    Y &= M_0 \bullet M_1\cr
    Y &= (B + C) \bullet (B + \overline{C})
\end{align}
Simplify the sum-of-products Boolean equation.
\begin{align}
    Y &= m_2 + m_3\cr
      &= B\,\overline{C} + B\,C\cr
      &= B \bullet (\overline{C} + C)\cr
      &= B \bullet 1\cr
    Y &= B
\end{align}
Simplify the product-of-sums Boolean equation.
\begin{align}
    Y &= M_0 \bullet M1\cr
      &= (B + C) \bullet (B + \overline{C})\cr
      &= B\,B + B\,\overline{C} + B\,C + C\,\overline{C}\cr
      &= B + B \bullet (\overline{C} + C) + 0\cr
      &= B + B \bullet (\overline{C} + C)\cr
      &= B + B \bullet 1\cr
      &= B + B\cr
    Y &= B
\end{align}
''))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
The Boolean function is $B$.

\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt \cr
    0 & 0 && 1 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 1 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 0 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 0 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for decoder logic circuit---sum-of-products.}
\end{figure}
The Boolean equation in sum-of-products canonical form is the sum of the
minterms for which $Y$ is 1.
\begin{align}
    Y &= m_0 + m_1\cr
    Y &= \overline{B}\,\overline{C} + \overline{B}\,C\cr
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
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt \cr
    0 & 0 && 1 && $B + C$                       && $M_0$\cr
    0 & 1 && 1 && $B + \overline{C}$            && $M_1$\cr
    1 & 0 && 0 && $\overline{B} + C$            && $M_2$\cr
    1 & 1 && 0 && $\overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for multiplexer logic circuit---product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0.
\begin{align}
    Y &= M_2 \bullet M_3\cr
    Y &= (\overline{B} + C) \bullet (\overline{B} + \overline{C})
\end{align}
Simplify the sum-of-products Boolean equation.
\begin{align}
    Y &= m_0 + m_1\cr
    Y &= \overline{B}\,\overline{C} + \overline{B}\,C\cr
      &= \overline{B} \bullet (\overline{C} + C)\cr
      &= \overline{B} \bullet 1\cr
    Y &= \overline{B}
\end{align}
Simplify the product-of-sums Boolean equation.
\begin{align}
    Y &= M_2 \bullet M_3\cr
    Y &= (\overline{B} + C) \bullet (\overline{B} + \overline{C})\cr
      &= \overline{B}\,\overline{B} + \overline{B}\,\overline{C} +
         B\,\overline{C} + \overline{C}\,C\cr
      &= \overline{B} + \overline{B} \bullet (\overline{C} + C) + 0\cr
      &= \overline{B} + \overline{B} \bullet 1\cr
      &= \overline{B} + \overline{B}\cr
    Y &= \overline{B}
\end{align}
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
