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
        \setsansfont[BoldFont={SourceSerif4Display-Bold},ItalicFont={SourceSans3-It}]{SourceSans3-Regular}%
        \RequirePackage{unicode-math}
        \setmathfont{KpMath-Light.otf}[Scale=MatchLowercase]
        \ClassInfo{corvinusmetropolis}{Corvinus recommended fonts SourceSerif and SourceSans3 work properly.}%
        }
        {
        \ClassInfo{corvinusmetropolis}{Turning to system fonts.}%
        \iffontsavailable{TT Nooks, Source Sans 3}
            {%
            \setsansfont[BoldFont={Source Serif 4-Regular},ItalicFont={Source Sans 3-It}]{Source Sans 3-Regular}%
            \ClassInfo{corvinusmetropolis}{System fonts Source Serif 4 and Source Sans 3 work properly!}%
            }
            {\ClassInfo{corvinusmetropolis}{At least one of Corvinus recommended fonts is missing!}
            }
        }
    }%
    {
    \ClassInfo{corvinusmetropolis}{You need to compile XeLaTeX os LuaLatex to use the Corvinus recommended fonts TT Nooks and Calluna}
    }
%
%\definecolor{orcidlogocol}{HTML}{0ACD5A}
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

Calluna_Bold_Italic.otf
Calluna_Bold.otf
Calluna_Heavy.otf
Calluna_Italic.otf
Calluna_Light.otf
Calluna_Regular.otf
Calluna_Semi_Bold_Italic.otf
Calluna_Semi_Bold.otf
TT_Nooks_Bold.otf
TT_Nooks_Heavy.otf
TT_Nooks_Light.otf
TT_Nooks_Regular.otf

If you need these files send an email to me, I share an Overleaf link where you can find corvinusmetropolis installed.
