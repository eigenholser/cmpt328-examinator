divert(-1)dnl
define(`VARIATIONS', `1')
define(`TIME', `15')
divert(2)dnl
%%
%% __file__
%%
\question
Consider the following implementation of a full binary adder:
dnl
ifelse(`X'_ARG_,`X1',``
\begin{figure}[H]
    \centering

\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]

\node [xor gate, inputs = nn,info=center:$X2$] at (0,0) (xor2) {};
\node [xor gate, inputs = nn,info=center:$X1$] at ($(xor2.input 1)+(-2.5,0)$) (xor1) {};
\node [and gate, inputs = nn,info=center:$A1$] at ($(xor2.north)+(0,-2)$) (and1) {};
\node [and gate, inputs = nn,info=center:$A2$] at ($(and1.north)+(0,-2)$) (and2) {};
\node [or gate, inputs = nn,info=center:$O1$] at ($(and1.output)!0.50!(and2.output)+(1.5,0)$) (or1) {};
\draw (xor1.output) |- (xor2.input 1);
\draw (xor1.input 1) -- ++(left:20mm) node[left] (A) {$A$};
\draw (xor1.input 2) -- ++(left:20mm) node[left] (B) {$B$};
\draw (xor2.input 1) -- ++(left:6mm) |- (and1.input 1) {};
\draw (xor2.input 2) -- ++(left:10mm) |- (and1.input 2) {};
\draw (xor2.output) -- ++(right:28mm) node[right] (S){$S$};
\draw (xor1.input 1) -- ++(left:6mm) |- (and2.input 1) {};
\draw (xor1.input 2) -- ++(left:10mm) |- (and2.input 2) {};
\draw (or1.input 1) -- ++(left:6mm) |- (and1.output) {};
\draw (or1.input 2) -- ++(left:6mm) |- (and2.output) {};
\draw (or1.output) -- ++(right:5mm) node[right] {$C_{out}$};
%
\draw
    (and1.input 2)
    -- ++(left:52.5mm)
    node[left] (CIN) {$C_{in}$};

\end{tikzpicture}

\caption{Binary full adder, 1--bit.}
\label{fig:fulladder}
\end{figure}
'')dnl
\begin{enumerate}[(a)]
    \item Is the full adder circuit shown in Figure~\ref{fig:fulladder} an
    example of combinational logic or sequential logic? Why?
    \item Explain how the full adder works. Consider the discrete cases where:
    \protect\begin{enumerate}[I]
        \item $A$ and $B$ do not generate a carry and $C_{in}$ is 0.
        \item $A$ and $B$ do not generate a carry and $C_{in}$ is 1.
        \item $A$ and $B$ do generate a carry and $C_{in}$ is 0.
        \item $A$ and $B$ do generate a carry and $C_{in}$ is 1.
    \end{enumerate}
    \item Draw a complete truth table. In your truth table show the values of
    each literal: $A$, $B$, $C_{in}$, $S$, and $C_{out}$.
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
\begin{enumerate}[(a)]
\item The full adder implements combinational logic. The outputs depend only
on the current inputs.

\item Operation

Case 1: $A$ and $B$ generate a carry only when both are TRUE. $A2$ therefore
outputs FALSE. Since $C_{in}$ is FALSE, $A1$ outputs FALSE. Because $A1$ and
$A2$ output FALSE, $O1$ also outputs FALSE on $C_{out}$. $X1$ will output
TRUE if either $A$ or $B$ are TRUE and FALSE if both are FALSE. $X2$ has one
FALSE input from $C_{in}$ and a TRUE or FALSE input from $X1$ output depending
on $A$ or $B$. $X2$ outputs TRUE on $S$ if one of $A$ or $B$ is TRUE---recall
the stipulation of this case that $A$ and $B$ do not generate a carry, they are
not both TRUE. $X2$ thus outputs the sum of $A$ and $B$.

Case 2: $A$ and $B$ generate a carry only when both are TRUE. $A2$ therefore
outputs FALSE. Since $C_{in}$ is TRUE, $A1$ has one TRUE input. $X1$ outputs
TRUE when $A$ or $B$ are TRUE. In this case, $X2$ and $A1$ have two TRUE inputs.
$X2$ outputs FALSE on $S$ and $A1$ outputs TRUE. So $A1$ outputs TRUE and $A2$
outputs FALSE, $O1$ outputs TRUE on $C_{out}$.

If $A$ and $B$ are both FALSE, $X1$ outputs FALSE. $X2$ receives one FALSE input
and one TRUE input so it`'RQ()s output is TRUE on $S$. $A1$ receives one FALSE
input so it`'RQ()s output is FALSE. $A2$ receives two FALSE inputs so it`'RQ()s
output is FALSE. $O1$ receives two false inputs and outputs FALSE on $C_{out}$.

Case 3: $A$ and $B$ are both TRUE. $X1$ outputs FALSE. $A2$ receives two TRUE
inputs and outputs TRUE. $A1$ receives two FALSE inputs and outputs FALSE.
$O1$ receives two FALSE inputs and outputs FALSE on $C_{out}$. $X2$ receives
two FALSE inputs and outputs FALSE on $S$.

Case 4: $A$ and $B$ are both TRUE. $X1$ outputs FALSE. $A1$ receives one TRUE
input and one FALSE input and so outputs FALSE. $A2$ receives two TRUE inputs
and outputs TRUE. $X2$ receives one TRUE input and one FALSE input so it
outputs TRUE on $S$. $O1$ receives one TRUE input and one FALSE input so it
outputs TRUE on output $C_{out}$.

\item Truth table for full adder implementation shown in Figure~\ref{fig:fulladder}.
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \hskip0.1em\hfil &
        \quad\hfil $#$ \hfil\cr
        A & B & C_{in} && S & C_{out} \cr
    \noalign{\hrule}
    \omit & \omit & \omit & height2pt & \omit \cr
    0 & 0 & 0 && 0 & 0 \cr
    0 & 1 & 0 && 1 & 0 \cr
    1 & 0 & 0 && 1 & 0 \cr
    1 & 1 & 0 && 0 & 1 \cr
    \noalign{\hrule}
    \omit & \omit & \omit & height2pt & \omit \cr
    0 & 0 & 1 && 1 & 0 \cr
    0 & 1 & 1 && 0 & 1 \cr
    1 & 0 & 1 && 0 & 1 \cr
    1 & 1 & 1 && 1 & 1 \cr
    }
}$$
\caption{Truth table for full adder---Figure~\ref{fig:fulladder}}
\end{figure}
\end{enumerate}

''))dnl
dnl
\medskip
divert(0)dnl
