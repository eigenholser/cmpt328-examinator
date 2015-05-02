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
\node [nor gate, inputs = nn,info=center:$N2$] at ($(nor1.south)+(0cm,-2cm)$) (nor2) {};

% Draw the AND gates
%
\node
    % AND gate with one input inverted.
    [and gate, inputs = ni,info=center:$A1$]
    % Align AND gate output with nor1 input 1.
    at ($(nor1.input 1)+(-3,0)$) (and1) {};

\node
    % AND gate
    [and gate, inputs = nn,info=center:$A2$]
    % Align AND gate output with nor1 input 1.
    at ($(nor2.input 2)+(-3,0)$) (and2) {};

% AND gate inputs.
\draw (and1.input 1) -- ++(left:23mm) node[left] (A) {$A$};
\draw (and1.input 1) ++(left:15mm) |- (and2.input 1);
\draw (and2.input 2) ++(left:8mm) |- (and1.input 2);
\draw (and2.input 2) -- ++(left:23mm) node[left] (B) {$B$};

% Label AND gate outputs
\draw (and1.output) ++(right:3mm) node[above] {$C$};
\draw (and2.output) ++(right:3mm) node[below] {$D$};

% AND gate outputs are inputs to NOR1 input 1 and NOR2 input 2.
\draw (and1.output) |- (nor1.input 1);
\draw (and2.output) |- (nor2.input 2);

% Label NOR gate outputs.
\draw (nor1.output) -- ++(right:10mm) node[right] (U) {$Q$};
\draw (nor2.output) -- ++(right:10mm) node[right] (V) {$\overline{Q}$};

% Draw the NOR gate outputs back to respective inputs
%
% N1 output to N2 input 1.
\draw
    % Begin at N1 output
    (nor1.output)
    % zig-zag
    -- ++(right:5mm) -- ++(0,-8mm) -- ++(-3.0cm,-8mm )
    % to N2 input.
    |- (nor2.input 1);
%
% N2 output to N1 input 2.
\draw
    % Begin at N2 output
    (nor2.output)
    % zig-zag
    -- ++(right:5mm) -- ++(0,8mm) -- ++(-3.0cm,8mm )
    % to N1 input.
    |- (nor1.input 2);

% Label regions. Dashed line and number regions.
\draw ($(and1.output)+(9mm,1)$)[dashed] -- ++(270:5);
\draw ($(and1.output)+(-11mm,1.5)$) node {1};
\draw ($(and1.output)+(30mm,1.5)$) node {2};

\end{tikzpicture}

\caption{Logic circuit.}
\label{fig:dlatch}
\end{figure}
'')dnl
\begin{enumerate}[(a)]
    \item Identify the logic circuit in Figure~\ref{fig:dlatch}. Is it an
    example of combinational or sequential logic. Why?
    \item Explain in detail the operation of this circuit. In other words,
    for various inputs, what are the outputs.
    \item There are two distinct elements in this circuit. They are numbered
    1 and 2 and are separated by a dashed line. Explain the purpose and
    function of the individual elements. Characterize each individual element
    as combination or sequential.
    \item Draw a complete truth table for the logic circuit in
    Figure~\ref{fig:dlatch}. In your truth table show the values of each
    labeled literal corresponding to inputs $A$ and $B$.
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

\item The Logic circuit in Figure~\ref{fig:dlatch} is a D latch. Overall it
is an example of sequential logic. It`'RQ()s current output is a function of
it`'RQ()s current and previous inputs.

\item The operation of this circuit is explained in detail as a function of
it`'RQ()s inputs and outputs below:

Case 1: $A=1, B=0$:\\
$A1$ has two TRUE inputs so it`'RQ()s $C$ output is TRUE. $A2$ has only
one TRUE input so it`'RQ()s $D$ output is FALSE.
$N1$ sees at least 1 TRUE input $C$ so it produces a FALSE output on
$Q$. $N2$ sees both $Q$ and $D$ FALSE, so it produces a TRUE output on
$\overline{Q}$.

Case 2: $A=1, B=1$:\\
$A1$ has only one TRUE input so it`'RQ()s output is FALSE. $A2$ has two TRUE
inputs so it`'RQ()s output is TRUE.
$N2$ has at least one TRUE input so it outputs FALSE on $\overline{Q}$.
$N1$ has inputs FALSE from $A1$ on $C$ and FALSE from $N1$ on $\overline{Q}$
so it`'RQ()s output is TRUE.

Case 3: $A=0, B=0,1$:\\
$A1$ has at least one FALSE input so it`'RQ()s $C$ output is FALSE. $A2$ has
at lease one FALSE input so it`'RQ()s output is FALSE.

$N1$ receives inputs of FALSE and $\overline{Q}$. Because we don`'RQ()t yet
know $\overline{Q}$, we can`'RQ()t determine the output Q. $N2$ receives
inputs of FALSE and $Q$. Since we don`'RQ()t know $Q$ or $\overline{Q}$ we
can`'RQ()t determine the state of the outputs from the inputs alone. The
outputs remain $Q_{prev}$.

\item The D Latch combines an SR latch (circuit element 2) with added logic of
two AND gates (circuit element 1) to eliminate the ambiguous SR latch behavior
when Set ($C$) and Reset ($D$) are simultaneously asserted HIGH. Circuit
element 1 is combinational. Circuit element 2 (SR latch) is sequential.

\item Truth table for D latch in Figure~\ref{fig:dlatch}.

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
    1 & 0 && 1 & 0 && 0 & 1\cr
    1 & 1 && 0 & 1 && 1 & 0\cr
    }
}$$
\caption{Truth table for sequential logic circuit---Figure~\ref{fig:dlatch}}
\end{figure}

\end{enumerate}
''))dnl
dnl
\medskip
divert(0)dnl
