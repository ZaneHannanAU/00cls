\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{beam}

\newif\ifhandout
\handoutfalse
\newif\ifaFour
\aFourfalse
\newif\ifaThree
\aThreefalse

\DeclareOption{handout=a3}{
	\handouttrue
	\aThreetrue
	\PassOptionsToClass{handout}{beamer}
	\PassOptionsToClass{aspectratio=141}{beamer}
}

\DeclareOption{handout=a4}{
	\handouttrue
	\aFourtrue
	\PassOptionsToClass{handout}{beamer}
	\PassOptionsToClass{aspectratio=141}{beamer}
}

\DeclareOption{handout}{
	\ExecuteOptions{handout=a4}
}
\DeclareOption{beam}{
	\PassOptionsToClass{show notes on second screen=right}{beamer}
}

% Process given options
\ProcessOptions\relax

\LoadClassWithOptions{beamer}

\RequirePackage{
	hyperref,
	xspace,
	xcolor
}

\ifhandout
	\PassOptionsToClass{aspectratio=141}{beamer}
	\RequirePackage{
		tikz,
		pgfpages,
	}
	\ifaFour
		\pgfpagesuselayout{8 on 1}[a4paper,border shrink=1mm]
	\else
		\ifaThree
			\pgfpagesuselayout{16 on 1}[a3paper,landscape,border shrink=1mm]
		\fi
	\fi
		% For printing
		% Supports {2 on 1}, {4 on 1}, {8 on 1}, {16 on 1}, {32 on 1}
		% I haven't tried beyond that.

	\setbeamertemplate{background canvas}{\tikz \draw (current page.north west) rectangle (current page.south east);}
	% Print border
\fi

\endinput
