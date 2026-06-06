\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{corvinusmetropolis}[2022/04/15 corvinusmetropolis v0.2]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions
\LoadClass{beamer}
%
%\RequirePackage{orcidlink, qrcode, adjustbox, unicode-math}
\RequirePackage{orcidlink, qrcode, adjustbox}
\synctex=1
%
\ifboolexpr{bool {xetex} or bool {luatex}}{
    \ClassInfo{corvinusmetropolis}{Use all of beamer options.\MessageBreak
    LaTeX package corvinusmetropolis is loaded}
    \RequirePackage{fontspec}%The package fontspec is also loaded by metropolis.sty but I do not need the option no-math.
    }{
    \ifpdf 
        \ClassInfo{corvinusmetropolis}{Wrong tex engine. Usage: lualatex <filename> or xelatex <filename>\MessageBreak
                     pdflatex also works but does not use Corvinus fonts.}
    \else
        \ClassError{corvinusmetropolis}{Wrong tex engine}{Usage: lualatex <filename> or xelatex <filename>\MessageBreak
                     pdflatex also works but does not use Corvinus fonts.}
    \fi
    }
%
\newcommand{\@email}{}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\putemail}{\url{\@email}}
%
\usetheme[outer/progressbar=foot, titleformat=smallcaps, subsectionpage=progressbar, block=fill]{metropolis}
\ifboolexpr{bool {xetex} or bool {luatex}}%
    {%
    \iffontsavailable{SourceSerif4Display-Bold, SourceSans3-It, SourceSans3-Regular}
        {%
        \setsansfont[
                    BoldFont={SourceSerif4Display-Bold},
                    ItalicFont={SourceSans3-It},
                    BoldItalicFont={SourceSans3-BoldIt}
                    ]
                    {SourceSans3-Regular}%
        \RequirePackage{unicode-math}
        \setmathfont{KpMath-Light.otf}[Scale=MatchLowercase]
        \ClassInfo{corvinusmetropolis}{Corvinus recommended fonts SourceSerif4Display and SourceSans3 work properly}%
        }
        {
        \ClassInfo{corvinusmetropolis}{Turning to other fonts}%
        \iffontsavailable{Source Serif 4, Source Sans 3}
            {%
            \setsansfont[
                        BoldFont={Source Serif 4-Regular},
                        ItalicFont={Source Sans 3-It},
                        BoldItalicFont={Source Sans 3-BoldIt},
                        ]
                        {Source Sans 3-Regular}%
            \RequirePackage{unicode-math}
            \setmathfont{KpMath-Light.otf}[Scale=MatchLowercase]
            \ClassInfo{corvinusmetropolis}{Fonts Source Serif 4 and Source Sans 3 work properly without optical size Display}%
            }
            {\ClassInfo{corvinusmetropolis}{At least one of Corvinus recommended fonts is missing}
            }
        }
    }%
    {
    \ClassInfo{corvinusmetropolis}{You need to compile XeLaTeX os LuaLatex to use the Corvinus recommended fonts}
    }
%
\definecolor{CorvinusGold}{HTML}{0ACD5A}
\definecolor{CorvinusBlue}{HTML}{002300}
\setbeamercolor{normal text}{fg=CorvinusBlue}
\setbeamercolor{alerted text}{fg=CorvinusGold, bg=CorvinusBlue}
\colorlet{VarCorvinusGold}{CorvinusGold}
\colorlet{VarCorvinusBlue}{CorvinusBlue}
% These two color variables are defined for the user.
\colorlet{orcidlogocol}{CorvinusGold}

\setbeamertemplate{blocks}[rounded]
%
\newcommand{\thankyoupage}[1]{
    \frametitle{#1}
    \includegraphics[width=.5\textwidth]{\myinstlogo}
    \hfill{\putemail}
}
\newcommand{\closingframes}[1]{
    \metroset{outer/numbering=none}
    \frame{\thankyoupage{#1}}
    \frame{}
}
\newcommand{\openingframes}[1]{
    \metroset{outer/numbering=none, outer/progressbar=foot}
    \frame{\titlepage}
    \frame{\frametitle{#1}
    \tableofcontents}
    \metroset{outer/numbering=counter, outer/progressbar=foot, block=transparent}%
}
\newcommand{\myinstlogo}{corvinus_University_logo_black.eps}

\endinput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
For Overleaf users!
Upload the Corvinus recommended fonts to Overleaf and Overleaf manages the font installation.
The required font files are as follows:

SourceSerif4Display-Bold.otf
SourceSans3-It.otf
SourceSans3-Regular.otf
