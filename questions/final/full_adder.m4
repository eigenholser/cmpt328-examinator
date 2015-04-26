divert(-1)dnl
define(`VARIATIONS', `1')
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
    \item Draw a complete truth table. In your truth table show the values of
    each literal: $A$, $B$, $C_{in}$, $S$, and $C_{out}$.
    \item Explain how the full adder works. Consider the discrete cases where:
    \protect\begin{enumerate}[I]
        \item $A$ and $B$ do not generate a carry and $C_{in}$ is 0.
        \item $A$ and $B$ do not generate a carry and $C_{in}$ is 1.
        \item $A$ and $B$ do generate a carry and $C_{in}$ is 0.
        \item $A$ and $B$ do generate a carry and $C_{in}$ is 1.
    \end{enumerate}
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
Combinational logic. The outputs depend only on the current inputs.

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
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
