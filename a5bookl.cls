\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{a5bookl}
\LoadClass{article}%
%-------------------------------------------------
\RequirePackage{%
	pdfpages,%
	geometry,%
}%
\geometry{%
	scale=1,%
	centering,%
	a4paper,%
}%
\newcommand\file[1]{%
	\def\afile{#1}%
	\typeout{Filename ``#1'' added}%
	\begin{document}%
		\includepdf[nup=1x2, landscape, booklet, pages={-}]{build/\afile_a5.pdf}%
	\end{document}
}
%-------------------------------------------------
\endinput
