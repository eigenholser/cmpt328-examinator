divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `10')
divert(2)dnl
%%
%% __file__
%%
\question
dnl
ifelse(`X'_ARG_,`X1',`dnl
The binary full adder takes the sum of two binary literals $A$ and $B$.
It also takes a carry bit from an optional \textit{lsb} stage adder.
The two outputs are $S$, which is the sum of $A$, $B$, and $C_{in}$, and
$C_{out}$ which is the carry.
\vskip3em
\begin{figure}[H]
    \centering
    \includegraphics{_CF_DIR_`'figures/full_adder.ps}
    \caption{Binary Full Adder}
\end{figure}
\begin{enumerate}[(a)]
    \item Draw a complete truth table for the binary full adder with minterms
    and minterm names. For the output $S$ only, write a Boolean equation in
    sum-of-products canonical form. Do not simplify.
    \item Draw a complete truth table for the binary full adder with maxterms
    and maxterm names. For the output $S$ only, write a Boolean equation in
    product-of-sums canonical form. Do not simplify.
\end{enumerate}
')dnl
ifelse(`X'_ARG_,`X2',`dnl
This combinational logic circuit is built from two multiplexers.
The multiplexer data lines are hardwired to $V_{DD}$ or GND. The
three input selectors, $A$, $B$, and $C$ act as inputs to the
function.
\begin{figure}[H]
    \centering
    \includegraphics{_CF_DIR_`'figures/mux_logic_1.ps}
    \caption{Multiplexer Logic}
\end{figure}
\begin{enumerate}[(a)]
    \item Draw a complete truth table for the combinational multiplexer
          logic circuit with minterms and minterm names. Write a Boolean
          equation in sum-of-products canonical form. Do not simplify.
    \item Draw a complete truth table for the combinational multiplexer
          logic circuit with maxterms and maxterm names. Write a Boolean
          equation in product-of-sums canonical form. Do not simplify.
\end{enumerate}
')dnl
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')
ifdef(`INSTRUCTOR',`
\textsc{solution}
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \hfil # \hskip0.2em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        A & B & C_{in} && S & $C_{out}$ && minterm && name \cr
    \noalign{\hrule}
    \omit & \omit && height2pt & \omit && \omit & \omit && \omit \cr
    0 & 0 & 0 && 0 & 0 && $\overline{A}\,\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 0 & 1 && 1 & 0 && $\overline{A}\,\overline{B}\,C$            && $m_1$\cr
    0 & 1 & 0 && 1 & 0 && $\overline{A}\,B\,\overline{C}$            && $m_2$\cr
    0 & 1 & 1 && 0 & 1 && $\overline{A}\,B\,C$                       && $m_3$\cr
%
    1 & 0 & 0 && 1 & 0 && $A\,\overline{B}\,\overline{C}$            && $m_4$\cr
    1 & 0 & 1 && 0 & 1 && $A\,\overline{B}\,C$                       && $m_5$\cr
    1 & 1 & 0 && 0 & 1 && $A\,B\,\overline{C}$                       && $m_6$\cr
    1 & 1 & 1 && 1 & 1 && $A\,B\,C$                                  && $m_7$\cr
    }
}$$
\caption{Truth table for binary full adder sum-of-products.}
\end{figure}
The boolean equation is the sum of the minterms for which the result $S$ is 1.
\begin{align}
S &= m_1 + m_2 + m_4 + m_7\cr
S &= \overline{A}\,\overline{B}\,C + \overline{A}\,B\,\overline{C} +
     A\,\overline{B}\,\overline{C} + A\,B\,C
\end{align}
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \hfil # \hskip0.2em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        A & B & C_{in} && S & $C_{out}$ && maxterm && name \cr
    \noalign{\hrule}
    \omit & \omit && height2pt & \omit && \omit & \omit && \omit \cr
    0 & 0 & 0 && 0 & 0 && $A + B + C_{in}$                                  && $M_0$\cr
    0 & 0 & 1 && 1 & 0 && $A + B + \overline{C_{in}}$                       && $M_1$\cr
    0 & 1 & 0 && 1 & 0 && $A + \overline{B} + C_{in}$                       && $M_2$\cr
    0 & 1 & 1 && 0 & 1 && $A + \overline{B} + \overline{C_{in}}$            && $M_3$\cr
%
    1 & 0 & 0 && 1 & 0 && $\overline{A} + B + C_{in}$                       && $M_4$\cr
    1 & 0 & 1 && 0 & 1 && $\overline{A} + B + \overline{C_{in}}$            && $M_5$\cr
    1 & 1 & 0 && 0 & 1 && $\overline{A} + \overline{B} + C_{in}$            && $M_6$\cr
    1 & 1 & 1 && 1 & 1 && $\overline{A} + \overline{B} + \overline{C_{in}}$ && $M_7$\cr
    }
}$$
\caption{Truth table for binary full adder sum-of-products.}
\end{figure}
The boolean equation is the product of the maxterms for which the result $S$ is 0.
\begin{align}
S &= M_0 \bullet M_3 \bullet M_5 \bullet M_6\cr
S &= (A + B + C_{in}) \bullet (A + \overline{B} + \overline{C_{in}}) \bullet
   (\overline{A} + B + \overline{C_{in}}) \bullet (\overline{A} + \overline{B} + C_{in})\cr
\end{align}
''))
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        A & B & C && Y && minterm && name \cr
    \noalign{\hrule}
    \omit & \omit && height2pt && \omit & \omit && \omit \cr
    0 & 0 & 0 && 0 && $\overline{A}\,\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 0 & 1 && 0 && $\overline{A}\,\overline{B}\,C$            && $m_1$\cr
    0 & 1 & 0 && 1 && $\overline{A}\,B\,\overline{C}$            && $m_2$\cr
    0 & 1 & 1 && 1 && $\overline{A}\,B\,C$                       && $m_3$\cr
%
    1 & 0 & 0 && 0 && $A\,\overline{B}\,\overline{C}$            && $m_4$\cr
    1 & 0 & 1 && 0 && $A\,\overline{B}\,C$                       && $m_5$\cr
    1 & 1 & 0 && 0 && $A\,B\,\overline{C}$                       && $m_6$\cr
    1 & 1 & 1 && 0 && $A\,B\,C$                                  && $m_7$\cr
    }
}$$
\caption{Truth table for multiplexer logic circuit.}
\end{figure}
The boolean equation is the sum of the minterms for which the result $Y$ is 1.
\begin{align}
Y &= m_2 + m_3\cr
Y &= \overline{A}\,B\,\overline{C} + \overline{A}\,B\,C
\end{align}
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        A & B & C && Y && maxterm && name \cr
    \noalign{\hrule}
    \omit & \omit && height2pt && \omit & \omit && \omit \cr
    0 & 0 & 0 && 0 && $A + B + C$                                  && $M_0$\cr
    0 & 0 & 1 && 0 && $A + B + \overline{C}$                       && $M_1$\cr
    0 & 1 & 0 && 1 && $A + \overline{B} + C$                       && $M_2$\cr
    0 & 1 & 1 && 1 && $A + \overline{B} + \overline{C}$            && $M_3$\cr
%
    1 & 0 & 0 && 0 && $\overline{A} + B + C$                       && $M_4$\cr
    1 & 0 & 1 && 0 && $\overline{A} + B + \overline{C}$            && $M_5$\cr
    1 & 1 & 0 && 0 && $\overline{A} + \overline{B} + C$            && $M_6$\cr
    1 & 1 & 1 && 0 && $\overline{A} + \overline{B} + \overline{C}$ && $M_7$\cr
    }
}$$
\caption{Truth table for multiplexer logic circuit product-of-sums.}
\end{figure}
The boolean equation is the product of the maxterms for which the result $Y$ is 1.
\begin{align}
Y &= M_0 \bullet M_1 \bullet M_4 \bullet M_5 \bullet M_6 \bullet M_7\cr
Y &= (A + B + C) \bullet (A + B + \overline{C}) \bullet (\overline{A} + B + C) \bullet
     (\overline{A} + B + \overline{C}) \bullet (\overline{A} + \overline{B} + C) \bullet
     (\overline{A} + \overline{B} + \overline{C})\cr
\end{align}
''))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
