\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report_a5}

\LoadClass[
	a5paper,
	11pt,
	onecolumn,
	% notitlepage,
	twoside,
	openright
		% For twoside, but the openright is changed below to openleft using \renewcommand\cleardoublepage
]{report}

\RequirePackage{report^}
\geometry{%
	a5paper,%
	margin=20mm,%
	inner=15mm,%
	outer=20mm,% inner is actually outer :-(
}
\def\restoreheight{%
	\pdfpageheight=210mm%
}

\columnseprule=.5pt
\columnsep=18pt


\printtrue
\Afivetrue

\RequirePackage{report_}
\endinput
