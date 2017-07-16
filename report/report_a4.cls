\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report_a4}

\LoadClass[
	a4paper,
	11pt,
	twocolumn,
	% notitlepage,
	twoside,
	openright
		% For twoside, but the openright is changed below to openleft using \renewcommand\cleardoublepage
]{report}

\RequirePackage{report^}
\geometry{
	a4paper,
	margin=22mm,
	%
}

\def\restoreheight{%
	\pdfpageheight=297mm%
}

\columnseprule=0.1mm
\columnsep=7mm


\printtrue
\Afourtrue

\RequirePackage{report_}
\endinput
