\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_a5}

\RequirePackage{xcolor}%
\LoadClass[%
	a5paper,%
	12pt,%
	notitlepage,%
	portrait,%
	twoside,%
	onecolumn,%
]{article}
\RequirePackage{article^}
\geometry{
	a5paper,
	margin=20mm,
	inner=16mm,
}
\newcommand\smallerpage{%
	\pdfpageheight=1mm%
}

\newcommand\largerpage{%
	\pdfpageheight=210mm%
}

\newcommand\intolmargin[1]{%
	\hspace*{4mm}%
		#1%
}
\newcommand\intormargin[1]{%
		#1%
	\hspace*{-8mm}%
}


\columnseprule=.5pt
\columnsep=18pt

\newcommand\pref[1]{\ref{#1} on page \pageref{#1}}

\AtBeginDocument{%
	\maketitle%
}

\printtrue

\RequirePackage{article_}
\endinput
