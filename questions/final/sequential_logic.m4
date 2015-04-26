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

% Draw the NOR gates
\node [nor gate, inputs = nn,info=center:$N1$] at (0,0) (nor1) {};
\node [nor gate, inputs = nn,info=center:$N1$] at ($(nor1.south)+(0cm,-2cm)$) (nor2) {};
\draw (nor1.input 1) ++(left:6mm) node[above] {$C$};
\draw (nor2.input 2) ++(left:6mm) node[below] {$D$};

% Draw the AND gates
\node [and gate, inputs = ni,info=center:$A1$] at ($(nor1.input 1)+(-2,0)$) (and1) {};
\node [and gate, inputs = nn,info=center:$A1$] at ($(nor2.input 2)+(-2,0)$) (and2) {};
\draw (and1.input 1) -- ++(left:23mm) node[left] (B) {$A$};
\draw (and1.input 1) ++(left:15mm) |- (and2.input 1);
\draw (and2.input 2) ++(left:8mm) |- (and1.input 2);
\draw (and2.input 2) -- ++(left:23mm) node[left] (C) {$B$};
%
%\draw (and1.output) |- (nor1.input 1);
%\draw (and2.output) |- (nor2.input 2);
%
\draw (and1.output) |- (nor1.input 1);
\draw (and2.output) |- (nor2.input 2);
\draw (nor1.output) -- ++(right:10mm) node[right] (U) {$Q$};
\draw (nor2.output) -- ++(right:10mm) node[right] (V) {$\overline{Q}$};

% Draw the NOR gate outputs back to respective inputs
\draw (nor1.output) -- ++(right:5mm) -- ++(0,-8mm) -- ++(-3.0cm,-8mm )|- (nor2.input 1);
\draw (nor2.output) -- ++(right:5mm) -- ++(0,8mm) -- ++(-3.0cm,8mm )|- (nor1.input 2);

\end{tikzpicture}

\caption{Logic circuit.}
\label{fig:seqlog1}
\end{figure}
'')dnl
\begin{enumerate}[(a)]
    \item Identify the logic circuit in Figure~\ref{fig:seqlog1}. Be specific.
    \item Describe the different elements of this circuit.
    \item Draw a complete truth table. In your truth table show the values of
    each literal corresponding to inputs $A$ and $B$.
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
The sequential logic circuit is a D--Latch.

It has two primary components. It is an SR--latch with added logic of two
AND gates to eliminate the ambiguous SR--latch behavior when set and reset
are simultaneously asserted HIGH.

\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil &
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil $#$ \hskip0.1em\hfil &
        \quad\hfil $#$ \hfil\cr
        A & B && C & D && Q & \overline{Q} \cr
    \noalign{\hrule}
    \omit & \omit & height2pt & \omit & \omit & \omit & \omit \cr
    0 & 0 && 0 & 0 && Q_{prev} & \overline{Q}_{prev} \cr
    0 & 1 && 0 & 0 && Q_{prev} & \overline{Q}_{prev} \cr
    1 & 0 && 0 & 1 && 0 & 1\cr
    1 & 1 && 1 & 0 && 1 & 0\cr
    }
}$$
\caption{Truth table for sequential logic circuit---Figure~\ref{fig:seqlog1}}
\end{figure}
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
