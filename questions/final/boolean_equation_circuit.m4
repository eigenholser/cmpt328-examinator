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

\begin{tikzpicture}[circuit ee IEC,small circuit symbols]

% OR gate implementation with 2-input multiplexer.
% Draw OR mux body.
\draw
    (0,0) coordinate (ORO)
    -- ++ (20:1) coordinate (ORA)
    -- ++ (90:1) coordinate (ORB)
    -- ++ (160:1) coordinate (ORC)
    -- cycle;

% Mux input select.
\draw
    % start in the middle of lower mux body.
    ($(ORO)!0.50!(ORA)$)
    % draw down
    -- ++(270:5mm)
    -- ++(180:15.5mm)
    % label C input select
    node[left]{$C$};

% Loop for each mux terminal.
\foreach \y/\t/\b in {0.1/0/0,0.2/1/1} {

    % Draw each terminal.
    \draw
        ($(ORC)! \y*3.25 !(ORO)$) -- ++(180:0.5cm)
        node(termor\t)[anchor=center] {};

    % Draw binary numbers to select. End loop.
    \draw
        ($(ORC)! \y*3.25 !(ORO)$) ++ (0:0.0)
        node[right,font=\footnotesize] {$\b$};
}

% Draw the VDD symbol to input term0.
\draw
    % start at term0 center
    (termor1.center)
    % these are for some adjustments since we're
    % using this picture as a template.
    -- ++(180:-0.0cm) -- ++(180:9mm)
    % go down
    -- ++(90:5.4mm)
    -- ++(0:2mm) -- ++(180:4mm);

%
% AND gate implementation with 2-input multiplexer.
% Draw AND mux body.
%
\draw
    (1.0,2) coordinate (ANDO)
    -- ++ (20:1) coordinate (ANDA)
    -- ++ (90:1) coordinate (ANDB)
    -- ++ (160:1) coordinate (ANDC)
    -- cycle;

% AND mux output.
\draw
    % Start in middle--this is so clever of tikz!
    ($(ANDA)!0.5!(ANDB)$)
    % draw right
    -- ++(0:5mm)
    % label output on right
    node[right]{$Y$};

% AND mux input select is OR mux output.
\draw
    % start in the middle of lower mux body.
    ($(ANDO)!0.50!(ANDA)$)
    % draw down
%   -- ++(270:5mm)
    % label C input select
    node(andmuxsel){};

% OR mux output.
\draw
    % Start in middle--this is so clever of tikz!
    ($(ORA)!0.5!(ORB)$)
    -- ++(right:5mm) |- (andmuxsel.center);
    % draw right
%   -- ++(0:5mm)
    % label output on right
%   node[right]{$Y$};

% Loop for each mux terminal.
\foreach \y/\t/\b in {0.1/0/0,0.2/1/1} {

    % Draw each terminal.
    \draw
        ($(ANDC)! \y*3.25 !(ANDO)$) -- ++(180:0.5cm)
        node(termand\t)[anchor=center] {};

    % Draw binary numbers to select. End loop.
    \draw
        ($(ANDC)! \y*3.25 !(ANDO)$) ++ (0:0.0)
        node[right,font=\footnotesize] {$\b$};
}

% Draw the GND symbol to input term0.
\draw
    % start at term0 center
    (termand0.center)
    % these are for some adjustments since we are
    % using this picture as a template.
    -- ++(180:-0.0cm) -- ++(180:0.0cm)
    % go down
    -- ++(270:1.1)
    % ground symbol
    node[ground={pos=1},point down]{};

% Draw B inputs
\draw
    % start at termor0 center
    (termor0.center)
    % tikz find termand1.center
    |- (termand1.center);
% Complete B input
\draw
    (termand1.center)
    -- ++(180:16mm)
    % label B on left.
    node[left]{$B$};

\end{tikzpicture}
%\caption{$B\,C + \overline{B\,C}$}
\caption{Logic circuit.}
\end{figure}
'')dnl
ifelse(`X'_ARG_,`X2',``
\begin{figure}[H]
    \centering

\begin{tikzpicture}[circuit ee IEC,small circuit symbols]

% AND gate implementation with 2-input multiplexer.
% Draw AND mux body.
%
\draw
    (0,0) coordinate (ANDO)
    -- ++ (20:1) coordinate (ANDA)
    -- ++ (90:1) coordinate (ANDB)
    -- ++ (160:1) coordinate (ANDC)
    -- cycle;

% Mux input select.
\draw
    % start in the middle of lower mux body.
    ($(ANDO)!0.50!(ANDA)$)
    % draw down
    -- ++(270:5mm)
    -- ++(180:15.5mm)
    % label C input select
    node[left]{$C$};

% Loop for each mux terminal.
\foreach \y/\t/\b in {0.1/0/0,0.2/1/1} {

    % Draw each terminal.
    \draw
        ($(ANDC)! \y*3.25 !(ANDO)$) -- ++(180:0.5cm)
        node(termand\t)[anchor=center] {};

    % Draw binary numbers to select. End loop.
    \draw
        ($(ANDC)! \y*3.25 !(ANDO)$) ++ (0:0.0)
        node[right,font=\footnotesize] {$\b$};
}

% Draw the GND symbol to input term0.
\draw
    % start at term0 center
    (termand0.center)
    % these are for some adjustments since we're
    % using this picture as a template.
    -- ++(180:-0.0cm) -- ++(180:8mm)
    % go down
    -- ++(270:6mm)
    % ground symbol
    node[ground={pos=1},point down]{};

%
% OR gate implementation with 2-input multiplexer.
% Draw OR mux body.
\draw
    (1,2) coordinate (ORO)
    -- ++ (20:1) coordinate (ORA)
    -- ++ (90:1) coordinate (ORB)
    -- ++ (160:1) coordinate (ORC)
    -- cycle;

% OR mux output.
\draw
    % Start in middle--this is so clever of tikz!
    ($(ORA)!0.5!(ORB)$)
    % draw right
    -- ++(0:5mm)
    % label output on right
    node[right]{$Y$};

% OR mux input select is AND mux output.
\draw
    % start in the middle of lower mux body.
    ($(ORO)!0.50!(ORA)$)
    % node here
    node(ormuxsel){};

% OR mux output.
\draw
    % Start in middle--this is so clever of tikz!
    ($(ANDA)!0.5!(ANDB)$)
    -- ++(right:5mm)
    % terminate at ormuxsel center
    |- (ormuxsel.center);

% Loop for each mux terminal.
\foreach \y/\t/\b in {0.1/0/0,0.2/1/1} {

    % Draw each terminal.
    \draw
        ($(ORC)! \y*3.25 !(ORO)$) -- ++(180:0.5cm)
        node(termor\t)[anchor=center] {};

    % Draw binary numbers to select. End loop.
    \draw
        ($(ORC)! \y*3.25 !(ORO)$) ++ (0:0.0)
        node[right,font=\footnotesize] {$\b$};
}

% Draw the VDD symbol to input termor0.
\draw
    % start at term0 center
    (termor1.center)
    % these are for some adjustments since were
    % using this picture as a template.
    -- ++(180:-0.0cm) -- ++(180:3mm)
    % go down
    -- ++(90:2.4mm)
    -- ++(0:2mm) -- ++(180:4mm);

% Draw B inputs
\draw
    % start at termor0 center
    (termand1.center)
    % tikz find termand1.center
    |- (termor0.center);

% Complete B input
\draw
    (termor0.center)
    -- ++(180:16mm)
    % label B on left.
    node[left]{$B$};

\end{tikzpicture}

%\caption{$\overline{B}\,\overline{C} + \overline{B\,C}$)
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
        \quad\hfil # \hfil\cr
        B & C && Y1 && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt && height2pt \cr
    0 & 0 && 0 && 0 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 1 && 0 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 1 && 1 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 1 && 1 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for multiplexer logic circuit---sum-of-products.}
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
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && Y1 && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt && height2pt \cr
    0 & 0 && 0 && 0 && $B + C$                       && $M_0$\cr
    0 & 1 && 1 && 0 && $B + \overline{C}$            && $M_1$\cr
    1 & 0 && 1 && 1 && $\overline{B} + C$            && $M_2$\cr
    1 & 1 && 1 && 1 && $\overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for multiplexer logic circuit---product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0.
\begin{align}
    Y &= M_0 \bullet M_2\cr
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
''))dnl
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',``
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
        \quad\hfil # \hfil\cr
        B & C && Y1 && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt && height2pt \cr
    0 & 0 && 0 && 0 && $\overline{B}\,\overline{C}$ && $m_0$\cr
    0 & 1 && 0 && 0 && $\overline{B}\,C$            && $m_1$\cr
    1 & 0 && 0 && 1 && $B\,\overline{C}$            && $m_2$\cr
    1 & 1 && 1 && 1 && $B\,C$                       && $m_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$---sum-of-products.}
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
        \quad\hfil $#$ \quad\hfil &
        \vrule# &
        \quad\hfil # \hskip0.1em\hfil &
        \vrule# &
        \quad\hfil # \hfil\cr
        B & C && Y1 && Y && minterm && names \cr
    \noalign{\hrule}
    \omit & \omit & height2pt && height2pt && height2pt && height2pt \cr
    0 & 0 && 0 && 0 && $B + C$                       && $M_0$\cr
    0 & 1 && 0 && 0 && $B + \overline{C}$            && $M_1$\cr
    1 & 0 && 0 && 1 && $\overline{B} + C$            && $M_2$\cr
    1 & 1 && 1 && 1 && $\overline{B} + \overline{C}$ && $M_3$\cr
    }
}$$
\caption{Truth table for $\overline{B}\,C + \overline{B\,C}$---product-of-sums.}
\end{figure}
The Boolean equation in product-of-sums canonical form is the product of the
maxterms for which $Y$ is 0.
\begin{align}
    Y &= M_0 \bullet M_2\cr
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
''))dnl
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
