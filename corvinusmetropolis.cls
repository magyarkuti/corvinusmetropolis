\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{corvinusmetropolis}[2021/10/26 corvinusmetropolis v0.1]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions
\LoadClass{beamer}
%
\ifpdf
    \ClassInfo{corvinusmetropolis}{Use all of beamer options.\MessageBreak
    LaTeX package corvinusmetropolis is loaded}
\else
    \ClassError{corvinusmetropolis}{Usage: lualatex <filename>\MessageBreak
                     pdflatex also works but does not use Corvinus fonts}
\fi
%
\newcommand{\@email}{}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\putemail}{\url{\@email}}
%
\synctex=1
%
\RequirePackage{graphicx,iftex}
\ifboolexpr{bool {xetex} or bool {luatex}}{
    \RequirePackage{fontspec}%The package fontspec is also loaded by metropolis.sty but I do not need the option no-math.
}{\ClassInfo{corvinusmetropolis}{The recommended tex compiler is lualatex or xelatex.}}
%
\usetheme[outer/progressbar=foot, titleformat=smallcaps, subsectionpage=progressbar, block=fill]{metropolis}
\ifboolexpr{bool {xetex} or bool {luatex}}%
    {%
    \iffontsavailable{TT_Nooks_Regular, Calluna_Italic, Calluna_Regular}
        {%
        \setsansfont[BoldFont={TT_Nooks_Regular},ItalicFont={Calluna_Italic}]{Calluna_Regular}%
        \ClassInfo{corvinusmetropolis}{Corvinus recommended fonts TT Nooks and Calluna work properly even if Overleaf is used!}%
        }
        {
        \ClassInfo{corvinusmetropolis}{Assume it is not Overleaf! I am turning to the system fonts.}%
        \iffontsavailable{TT Nooks, Calluna}
            {%
            \setsansfont[BoldFont={TT Nooks-Regular},ItalicFont={Calluna-It}]{Calluna-Regular}%
            \ClassInfo{corvinusmetropolis}{Corvinus recommended fonts TT Nooks and Calluna work properly!}%
            }
            {\ClassInfo{corvinusmetropolis}{At least one of Corvinus recommended fonts is missing. \MessageBreak
            Upload the fonts TT Nooks and Calluna to Overleaf, or install these fonts locally!}
            }
        }
    }%
    {
        \ClassInfo{corvinusmetropolis}{You need to compile XeLaTeX os LuaLatex to use the Corvinus recommended fonts TT Nooks and Calluna}
    }
%
\definecolor{CorvinusGold}{HTML}{855C24}
\definecolor{CorvinusBlue}{HTML}{1B213E}
\setbeamercolor{normal text}{fg=CorvinusBlue}
\setbeamercolor{alerted text}{fg=CorvinusGold, bg=CorvinusBlue}
%
\setbeamertemplate{blocks}[rounded]
%
\newcommand{\thankyoupage}[1]{
    \frametitle{#1}
    \includegraphics[width=.5\textwidth]{corvinus_egyszerusitett_logo_cmyk.eps}
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
\newcommand{\myinstlogo}{corvinus_Institute_of_Economics_logo_cmyk.eps}

\endinput
Last Modified: Sat 09 Apr 2022 10:25:55 AM CEST CEST CEST CEST 
Created: Tue 26 Oct 2021 08:10:34 am CEST

