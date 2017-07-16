\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_screen}

\RequirePackage{xcolor}%
\LoadClass[%
	a6paper,%
	12pt,%
	notitlepage,%
	portrait,%
	oneside,%
]{article}
\RequirePackage{article^}
\geometry{%
	papersize={200mm,150mm},%
	% screen,% too small
	margin=10mm,%
	bottom=12mm,%
	top=2mm,%
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
	\ifx\LogoStart\undefined
	\else
		\vfill
		{\centering\LogoStart}
		\vfill
		\eject % page break
	\fi
	\maketitle
}
\def\largerpage{\clearpage}

\RequirePackage{multicol,xparse}
\DeclareDocumentCommand\cols{O{2} O{} +m}{%
	\begin{multicols}{#1}[{#2}]%
		#3%
	\end{multicols}%
}%
\columnseprule=.5pt
\columnsep=18pt

\newcommand\pref[1]{%
	\ref{#1} on screen \pageref{#1}%
}


\screentrue

\RequirePackage{article_}
\endinput
