An extension of the **Metropolis** theme for the **beamer** package in **LaTeX**.

## For Overleaf users
Copy the [template](<https://www.overleaf.com/read/zvyszxmcxrpp#e70d65>) project.

## Install locally the beamer style corvinusmetropolis 

If you are familiar with LaTeX, the two main components for installation are the fonts and the logos. Otherwise, install TeX with the beamer package and the Metropolis theme. If you encounter any problems with the Metropolis theme, refer to 
<https://www.tug.org/texlive//Contents/live/texmf-dist/doc/latex/beamertheme-metropolis/metropolistheme.pdf>

### Required fonts
  1. [Source Sans](https://github.com/adobe-fonts/source-sans/) 
  1. [Sorce Serif](https://github.com/adobe-fonts/source-serif)

The best is if you install these fonts locally, but if you place the 4 otf files in your working directory it is also good enough.
Compile the file `template.tex` from the command line using
```
lualatex template.tex 
or
xelatex template.tex
````
### Logos
If you do not care for logos skip this section. The main university logo will be used.
Otherwise consider the logos created by the university's graphic designer team. You can download the required logos from
<https://www.uni-corvinus.hu/ona/arculati-elemek/>
Find the appropriate logo and place it to your working folder. Do not forget to adjust the exact filename at the command 
`\renewcommand{\myinstlogo}{corvinus_Department_of_Mathematics_logo_black.eps}`, for exmaple.

Compile `template.tex` again using `lualatex` or `xelatex` and compare your output with the uploaded `template.pdf`. If you have used `lualatex` or `xelatex` compilers earlier, then no reason to read the rest of this document. Have fun!

If you have never used `lualatex` and `xelatex`, your latex source file may not be encoded `utf-8`, which will cause problems. The required input encoding for compilation with `lualatex` or `xelatex` is   `utf-8`. Ensure your text editor is set to `utf-8` encoding. If you are using an older file, convert it to `utf-8` before compliling.
For example, if your source file uses Central European encoding `(ISO-8859-2)`, you can convert it to `utf-8` with the following command:
```
iconv -f ISO-8859-2 -t utf-8 mytexinput.tex
```
For further details, please read the first three pages of
[http://dante.ctan.org/tex-archive/info/luatex/lualatex-doc/lualatex-doc.pd](https://mirror.szerverem.hu/ctan/obsolete/info/luatex/lualatex-doc/lualatex-doc.pdf),
but no more than that. 

Do not use the font selection command `\setsansfont` in your source code; this is handled by `corvinusmetropolis.cls`.

Enjoy!
