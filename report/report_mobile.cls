\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report_mobile}

\LoadClass[%
	a6paper,%
	12pt,%
	notitlepage,%
	portrait,%
	oneside,%
	fleqn,% Left aligned equations
]{report}

\RequirePackage{report^}%
\geometry{
	papersize={100mm,350mm},
	margin=2mm,
	bottom=12mm,
	right=8mm,
}

\renewcommand*\url[1]{%
	{\footnotesize%
		\noqrurl{#1} %
		(Tap to open)%
	}
}

\RequirePackage[sfdefault]{noto}
\RequirePackage{sfmath}

\AtBeginDocument{%
	\pdfpageheight=80mm%
	\maketitle%
	\eject % page break
	\pdfpageheight=350mm%
}

\newcommand\pref[1]{%
	\ref{#1}%
}


\newcommand\halfwidth{1\columnwidth}
\newcommand\thirdwidth{1\columnwidth}


\mobiletrue

\RequirePackage{report_}
\endinput
