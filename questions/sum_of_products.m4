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
The two outputs are $S$ which is the sum of $A$, $B$, and $C_{in}$, and
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
The binary full adder takes the sum of two binary literals $A$ and $B$.
It also takes a carry bit from an optional \textit{lsb} stage adder.
The two outputs are $S$ which is the sum of $A$, $B$, and $C_{in}$, and
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
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',`
\textsc{solution}
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
%   && height8pt && height8pt & \cr
    \noalign{\hrule}
%   && height8pt && height8pt & \cr
    0 & 0 & 0 && - & - && - && $m_0$\cr
    0 & 1 & 0 && - & - && - && $m_1$\cr
    1 & 0 & 0 && - & - && - && $m_2$\cr
    1 & 1 & 1 && - & - && - && $m_3$\cr
    }
}
'))
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',`
\textsc{solution}
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
%   && height8pt && height8pt & \cr
    \noalign{\hrule}
%   && height8pt && height8pt & \cr
    0 & 0 & 0 && - & - && - && $m_0$\cr
    0 & 1 & 0 && - & - && - && $m_1$\cr
    1 & 0 & 0 && - & - && - && $m_2$\cr
    1 & 1 & 1 && - & - && - && $m_3$\cr
    }
}$$
\caption{Truth table for binary full adder.}
\end{figure}
'))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
