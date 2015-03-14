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
    \item Generate a truth table for the binary full adder.
    \item For the output $S$ only, derive the Boolean equation in
          sum-of-products canonical form. Do not simplify.
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
    \item Generate a truth table for the combinational multiplexer
          logic circuit.
    \item Derive the Boolean equation in sum-of-products canonical
          form. Do not simplify.
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
\caption{Truth table for binary full adder.}
\end{figure}
The boolean equation is the sum of the minterms for which the result $S$ is 1.
\begin{align}
S &= m1 + m2 + m4 + m7\cr
S &= \overline{A}\,\overline{B}\,C + \overline{A}\,B\,\overline{C} +
     A\,\overline{B}\,\overline{C} + A\,B\,C
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
Y &= m2 + m3\cr
Y &= \overline{A}\,B\,\overline{C} + \overline{A}\,B\,C
\end{align}
''))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
