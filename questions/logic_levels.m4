divert(-1)dnl
define(`VARIATIONS', `5')
define(`TIME', `5')
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
\caption{Input logic levels for 1.5$V$ device.}
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
\caption{Input logic levels for 1.5$V$ device.}
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
\caption{Input logic levels for 1.5$V$ device.}
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
\caption{Input logic levels for 1.5$V$ device.}
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
\end{enumerate}
dnl
ifdef(`TIME',`
\textit{Estimated time to complete this question is 'TIME` minutes.}
\bigskip
')
dnl
ifelse(`X'_ARG_,`X1',ifdef(`INSTRUCTOR',`\textsc{solution}\\
Dunno'))
ifelse(`X'_ARG_,`X2',ifdef(`INSTRUCTOR',`\textsc{solution}\\
Dunno'))
ifelse(`X'_ARG_,`X3',ifdef(`INSTRUCTOR',`\textsc{solution}\\
Dunno'))
ifelse(`X'_ARG_,`X4',ifdef(`INSTRUCTOR',`\textsc{solution}\\
Dunno'))
ifelse(`X'_ARG_,`X5',ifdef(`INSTRUCTOR',`\textsc{solution}\\
Dunno'))
dnl
ifdef(`INSTRUCTOR',`\bigskip')
divert(0)dnl
