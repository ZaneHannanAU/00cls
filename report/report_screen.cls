\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report_screen}

\LoadClass[
	12pt,
	titlepage,
	onecolumn,
	oneside
]{report}

\RequirePackage{report^}%
\geometry{%
	papersize={200mm,150mm},
	% screen,
	margin=10mm,
	bottom=12mm,
	top=2mm,
}

\renewcommand*\url[1]{%
	{\footnotesize%
		\noqrurl{#1} %
		(Click to open)%
	}
}

\RequirePackage[sfdefault]{noto}
\RequirePackage{sfmath}

\AtBeginDocument{%
	\maketitle%
}

\newcommand\pref[1]{%
	\ref{#1} on Screen \pageref{#1}%
}

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\fancyhf{}
\fancyfoot[L]{
	\hskip-8mm
	\footnotesize{
		\bfseries\thepage
	}
	% \ifodd\value{page}
	% 	\clefttext
	% \else
	% 	\crightext
	% \fi
}
\fancyfoot[R]{
	\footnotesize
	\rightmark
\hspace{1ex}
	\vrule
\hspace{1ex}
	\leftmark
	\hskip-8mm
}


\newcommand\halfwidth{0.48\columnwidth}
\newcommand\thirdwidth{0.31\columnwidth}


\screentrue


\RequirePackage{menukeys,fontawesome}
\date{~\lastedited~%
	\\[1cm]%
	\begin{minipage}{\columnwidth}
		To enter full screen:\\%
		Press \keys{\ctrl+L} in {\bf Acrobat}\\%
		Press \keys{F5} in {\bf Evince}\\%
		Press \keys{F11} or \keys{fn+F11} in \faicon{chrome} or \faicon{firefox} on most systems ({\faicon{linux} or \faicon{windows}})\\%
		Press \keys{\ctrl+\cmd+F} in \faicon{chrome}, \faicon{firefox} or \faicon{safari} on {\bf Mac} \faicon{apple}\\%
		There is no need to press anything but ``Continuous'' on mobile if this is here.
	\end{minipage}
}

\RequirePackage{report_}
\endinput
