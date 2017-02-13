\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_a4}

\RequirePackage{xcolor}%
\LoadClass[%
	a4paper,%
	12pt,%
	notitlepage,%
	portrait,%
	oneside,%
	twocolumn,%
]{article}
\RequirePackage{article^}
\geometry{
	a4paper,
	margin=22mm,
}

\newcommand\smallerpage{%
	\pdfpageheight=1mm%
}

\newcommand\largerpage{%
	\pdfpageheight=297mm%
}

\newcommand\intolmargin[1]{%
	\hspace*{-13mm}%
		#1%
}
\newcommand\intormargin[1]{%
		#1%
	\hspace*{-13mm}%
}

\columnseprule=0.1mm
\columnsep=7mm

\newcommand\pref[1]{\ref{#1} on page \pageref{#1}}

\AtBeginDocument{%
	\maketitle%
	\ErrorsOn%
}

\RequirePackage[immediate,debrief]{silence}
\ErrorFilter{latex}{Missing}

\printtrue

\RequirePackage{article_}
\endinput
