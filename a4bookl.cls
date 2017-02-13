\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{a4bookl}
\LoadClass{article}%
%-------------------------------------------------
\RequirePackage{%
	pdfpages,%
	geometry,%
}%
\geometry{%
	scale=1,%
	centering,%
	a3paper,%
}%
\newcommand\file[1]{%
	\def\afile{#1}%
	\typeout{Filename ``#1'' added}%
	\begin{document}%
		\includepdf[nup=1x2, landscape, booklet, pages={-}]{build/\afile_a4.pdf}%
	\end{document}
}
%-------------------------------------------------
\endinput
