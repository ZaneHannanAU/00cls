\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article-mobile}

\RequirePackage{xcolor}%
\LoadClass[%
	a6paper,%
	12pt,%
	notitlepage,%
	portrait,%
	oneside,%
	fleqn,% Left aligned equations
]{article}

\RequirePackage{article^}
\geometry{%
	papersize={100mm,350mm},%
	margin=2mm,%
	bottom=12mm,%
	right=8mm,%
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

\def\largerpage{\clearpage}

\newcommand\pref[1]{%
	\ref{#1}%
}


\mobiletrue

\RequirePackage{article_}
\endinput
