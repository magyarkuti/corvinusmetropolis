An extension of the **Metropolis** theme for **beamer**.

## Quick Start

* Overleaf: copy the template  
  <https://www.overleaf.com/read/zvyszxmcxrpp#e70d65>

## Local Installation

Install a TeX distribution with `beamer` and the Metropolis theme.

Metropolis documentation:  
<https://www.tug.org/texlive//Contents/live/texmf-dist/doc/latex/beamertheme-metropolis/metropolistheme.pdf>

## Fonts

Required:

* Source Sans
* Source Serif

Install them on your system, or place the `.otf` files in your working directory.

Compile:

```
lualatex template.tex
```

or

```
xelatex template.tex
```

## Logos

Optional. If omitted, the default university logo is used.

Download logos:  
<https://www.uni-corvinus.hu/ona/arculati-elemek/>

Place a logo in your working directory and set:

```
\renewcommand{\myinstlogo}{corvinus_Department_of_Mathematics_logo_black.eps}
```

Recompile and compare with `template.pdf`.

## UTF-8

`lualatex` and `xelatex` require UTF-8 input.

Convert if needed:

```
iconv -f ISO-8859-2 -t utf-8 mytexinput.tex
```

## Notes

* Do not use `\setsansfont`; it is handled by the class.
* Skip sections you do not need.
