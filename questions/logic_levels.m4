divert(-1)dnl
define(`VARIATIONS', `5')
define(`TIME', `10')
divert(2)dnl
%%
%% __file__
%%
\question Consider the input logic levels in the following table:
dnl
\begin{figure}[H]
ifelse(`X'_ARG_,`X1',`
$$
\vbox{\offinterlineskip
    \hrule
    \halign{&\vrule#&
    \strut\quad\hfil#\quad\cr
    height2pt & \omit && \omit && \omit && \omit &\cr
    & Parameter\hfil && Parameter Name\hfill && Min\hfil && Max\hfil &\cr
    height2pt & \omit && \omit && \omit && \omit & \cr
    \noalign{\hrule}
    height12pt & $V_{CC}$\hfil && High-level input voltage\hfill && - \hfil && $5.0V$ \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IH}$\hfil && High-level input voltage\hfill && $2.0V$ && - \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IL}$\hfil && Low-level input voltage\hfill && - \hfil && $0.8V$ &\cr
    }
    \hrule
}$$
\caption{Input logic levels for 5$V$ device.}
')dnl
ifelse(`X'_ARG_,`X2',`
$$
\vbox{\offinterlineskip
    \hrule
    \halign{&\vrule#&
    \strut\quad\hfil#\quad\cr
    height2pt & \omit && \omit && \omit && \omit &\cr
    & Parameter\hfil && Parameter Name\hfill && Min\hfil && Max\hfil &\cr
    height2pt & \omit && \omit && \omit && \omit & \cr
    \noalign{\hrule}
    height12pt & $V_{CC}$\hfil && High-level input voltage\hfill && - \hfil && $3.3V$ \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IH}$\hfil && High-level input voltage\hfill && $2.0V$ && - \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IL}$\hfil && Low-level input voltage\hfill && - \hfil && $0.8V$ &\cr
    }
    \hrule
}$$
\caption{Input logic levels for 3.3$V$ device.}
')dnl
ifelse(`X'_ARG_,`X3',`
$$
\vbox{\offinterlineskip
    \hrule
    \halign{&\vrule#&
    \strut\quad\hfil#\quad\cr
    height2pt & \omit && \omit && \omit && \omit &\cr
    & Parameter\hfil && Parameter Name\hfill && Min\hfil && Max\hfil &\cr
    height2pt & \omit && \omit && \omit && \omit & \cr
    \noalign{\hrule}
    height12pt & $V_{CC}$\hfil && High-level input voltage\hfill && - \hfil && $2.5V$ \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IH}$\hfil && High-level input voltage\hfill && $1.7V$ && - \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IL}$\hfil && Low-level input voltage\hfill && - \hfil && $0.7V$ &\cr
    }
    \hrule
}$$
\caption{Input logic levels for 2.5$V$ device.}
')dnl
ifelse(`X'_ARG_,`X4',`
$$
\vbox{\offinterlineskip
    \hrule
    \halign{&\vrule#&
    \strut\quad\hfil#\quad\cr
    height2pt & \omit && \omit && \omit && \omit &\cr
    & Parameter\hfil && Parameter Name\hfill && Min\hfil && Max\hfil &\cr
    height2pt & \omit && \omit && \omit && \omit & \cr
    \noalign{\hrule}
    height12pt & $V_{CC}$\hfil && High-level input voltage\hfill && - \hfil && $1.8V$ \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IH}$\hfil && High-level input voltage\hfill && $1.17V$ && - \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IL}$\hfil && Low-level input voltage\hfill && - \hfil && $0.63V$ &\cr
    }
    \hrule
}$$
\caption{Input logic levels for 1.8$V$ device.}
')dnl
ifelse(`X'_ARG_,`X5',`
$$
\vbox{\offinterlineskip
    \hrule
    \halign{&\vrule#&
    \strut\quad\hfil#\quad\cr
    height2pt & \omit && \omit && \omit && \omit &\cr
    & Parameter\hfil && Parameter Name\hfill && Min\hfil && Max\hfil &\cr
    height2pt & \omit && \omit && \omit && \omit & \cr
    \noalign{\hrule}
    height12pt & $V_{CC}$\hfil && High-level input voltage\hfill && - \hfil && 1.5$V$ \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IH}$\hfil && High-level input voltage\hfill && $0.98V$ && - \hfil &\cr
    \noalign{\hrule}
    height12pt & $V_{IL}$\hfil && Low-level input voltage\hfill && $0V$ \hfil && $0.53V$ &\cr
    }
    \hrule
}$$
\caption{Input logic levels for 1.5$V$ device.}
')dnl
\end{figure}
\begin{enumerate}[(a)]
    \item Compute the noise margins between the LaunchPad output logic levels
        and this device's input logic levels.
    \item Sketch a logic level diagram with the LaunchPad driving the input of
        this device.
    \item If the output of the LaunchPad is driving these inputs, are the logic
        levels compatible?
ifelse(`X'_ARG_,`X3',`Assume the inputs are at least 3.3$V$ tolerant.')
ifelse(`X'_ARG_,`X4',`Assume the inputs are at least 3.3$V$ tolerant.')
ifelse(`X'_ARG_,`X5',`Assume the inputs are at least 3.3$V$ tolerant.')
\end{enumerate}
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')
dnl
ifdef(`INSTRUCTOR',`
\textsc{solution}\\
The answer to $(c)$ is YES in all cases.\\
')
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',`
\begin{align}
    NM_H &= V_{OH} - V_{IH}\cr
    NM_L &= V_{IL} - V_{OL}\cr
    NM_H &= 2.4V - 2.0V\cr
    NM_H &= 0.4V\cr
    NM_L &= 0.8V - 0.4V\cr
    NM_L &= 0.4V\cr
\end{align}
\begin{figure}[H]
    \centering
    \includegraphics{_CF_DIR_`'figures/lp_to_5v.ps}
    \caption{Logic level diagram for LP to 5V.}
\end{figure}
'))
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',`
\begin{align}
    NM_H &= V_{OH} - V_{IH}\cr
    NM_L &= V_{IL} - V_{OL}\cr
    NM_H &= 2.4V - 2.0V\cr
    NM_H &= 0.4V\cr
    NM_L &= 0.8V - 0.4V\cr
    NM_L &= 0.4V\cr
\end{align}
\begin{figure}[H]
    \centering
    \includegraphics{_CF_DIR_`'figures/lp_to_33v.ps}
    \caption{Logic level diagram for LP to 3.3V.}
\end{figure}
'))
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',`
\begin{align}
    NM_H &= V_{OH} - V_{IH}\cr
    NM_L &= V_{IL} - V_{OL}\cr
    NM_H &= 2.4V - 1.7V\cr
    NM_H &= 0.7V\cr
    NM_L &= 0.7V - 0.4V\cr
    NM_L &= 0.3V\cr
\end{align}
\begin{figure}[H]
    \centering
    \includegraphics{_CF_DIR_`'figures/lp_to_25v.ps}
    \caption{Logic level diagram for LP to 2.5V.}
\end{figure}
'))
ifelse(`X'_ARG_,`X4',ifdef(`INSTRUCTOR',`
\begin{align}
    NM_H &= V_{OH} - V_{IH}\cr
    NM_L &= V_{IL} - V_{OL}\cr
    NM_H &= 2.4V - 1.17V\cr
    NM_H &= 1.23V\cr
    NM_L &= 0.63V - 0.4V\cr
    NM_L &= 0.23V\cr
\end{align}
\begin{figure}[H]
    \centering
    \includegraphics{_CF_DIR_`'figures/lp_to_18v.ps}
    \caption{Logic level diagram for LP to 1.8V.}
\end{figure}
'))
ifelse(`X'_ARG_,`X5',ifdef(`INSTRUCTOR',`
\begin{align}
    NM_H &= V_{OH} - V_{IH}\cr
    NM_L &= V_{IL} - V_{OL}\cr
    NM_H &= 2.4V - 0.98V\cr
    NM_H &= 1.42V\cr
    NM_L &= 0.53V - 0.4V\cr
    NM_L &= 0.13V\cr
\end{align}
\begin{figure}[H]
    \centering
    \includegraphics{_CF_DIR_`'figures/lp_to_15v.ps}
    \caption{Logic level diagram for LP to 1.5V.}
\end{figure}
'))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
