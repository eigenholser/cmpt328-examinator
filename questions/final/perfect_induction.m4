divert(-1)dnl
define(`VARIATIONS', `2')
define(`TIME', `5')
divert(2)dnl
%%
%% __file__
%%
\question
Use perfect induction to prove that the two logic gates in dnl
ifelse(`X'_ARG_,`X1',`Figure~\ref{fig:demorgan1}') dnl
ifelse(`X'_ARG_,`X2',`Figure~\ref{fig:demorgan2}') dnl
are equivalent.
dnl
ifelse(`X'_ARG_,`X1',``
\begin{figure}[H]
    \centering

\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]

\node [nand gate, inputs = nn] at (0,0) (nand1) {};
\node [or gate, inputs = ii, anchor=output] at ($(nand1.output)+(4.0cm,0)$) (or1) {};
%
\draw (nand1.input 1) -- ++(left:5mm) node[left] (B1) {$B$};
\draw (nand1.input 2) -- ++(left:5mm) node[left] (C1) {$C$};
\draw (nand1.output) -- ++(right:3mm) node[right] (Y1) {$Y$};

\draw (or1.input 1) -- ++(left:3mm) node[left] (B2) {$B$};
\draw (or1.input 2) -- ++(left:3mm) node[left] (C2) {$C$};
\draw (or1.output) -- ++(right:5mm) node[right] (Y2) {$Y$};
\end{tikzpicture}

\caption{DeMorgan equivalent logic.}
\label{fig:demorgan1}
\end{figure}
'')dnl
ifelse(`X'_ARG_,`X2',``
\begin{figure}[H]
    \centering

\begin{tikzpicture}[circuit logic US,
                    tiny circuit symbols,
                    every circuit symbol/.style={fill=white,draw,logic gate input sep=4mm, logic gate inverted radius=1mm}
]

\node [nor gate, inputs = nn] at (0,0) (nor1) {};
\node [and gate, inputs = ii, anchor=output] at ($(nor1.output)+(4.0cm,0)$) (and1) {};
%
\draw (nor1.input 1) -- ++(left:5mm) node[left] (B1) {$B$};
\draw (nor1.input 2) -- ++(left:5mm) node[left] (C1) {$C$};
\draw (nor1.output) -- ++(right:3mm) node[right] (Y1) {$Y$};

\draw (and1.input 1) -- ++(left:3mm) node[left] (B2) {$B$};
\draw (and1.input 2) -- ++(left:3mm) node[left] (C2) {$C$};
\draw (and1.output) -- ++(right:5mm) node[right] (Y2) {$Y$};
\end{tikzpicture}

\caption{DeMorgan equivalent logic.}
\label{fig:demorgan2}
\end{figure}
'')dnl
dnl
ifdef(`TIME',`
\medskip
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
Apply perfect induction by making a truth table for each logic gate. If the
logic gates perform the same function, the truth tables will have the same
inputs and outputs.
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',``
\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil \cr
        B & C && Y \cr
    \noalign{\hrule}
    \omit & \omit & height2pt \cr
    0 & 0 && 1 \cr
    0 & 1 && 1 \cr
    1 & 0 && 1 \cr
    1 & 1 && 0 \cr
    }
}$$
\caption{Truth table for NAND gate, Figure~\ref{fig:demorgan1}}
\end{figure}

\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil \cr
        B & C && Y \cr
    \noalign{\hrule}
    \omit & \omit & height2pt \cr
    0 & 0 && 1 \cr
    0 & 1 && 1 \cr
    1 & 0 && 1 \cr
    1 & 1 && 0 \cr
    }
}$$
\caption{Truth table for OR gate with inverted inputs, Figure~\ref{fig:demorgan1}}
\end{figure}

''))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``

\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil \cr
        B & C && Y \cr
    \noalign{\hrule}
    \omit & \omit & height2pt \cr
    0 & 0 && 1 \cr
    0 & 1 && 0 \cr
    1 & 0 && 0 \cr
    1 & 1 && 0 \cr
    }
}$$
\caption{Truth table for NOR gate, Figure~\ref{fig:demorgan1}}
\end{figure}

\begin{figure}[H]
$$
\vbox{\offinterlineskip
    \halign{
        \quad\hfil $#$ \hfil &
        \strut\quad\hfil $#$ \hfil &
        \vrule# &
        \quad\hfil $#$ \quad\hfil \cr
        B & C && Y \cr
    \noalign{\hrule}
    \omit & \omit & height2pt \cr
    0 & 0 && 1 \cr
    0 & 1 && 0 \cr
    1 & 0 && 0 \cr
    1 & 1 && 0 \cr
    }
}$$
\caption{Truth table for AND gate with inverted inputs, Figure~\ref{fig:demorgan1}}
\end{figure}

''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
