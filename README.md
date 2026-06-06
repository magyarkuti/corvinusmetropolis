An extension of the **Metropolis** theme for the **beamer** package in **LaTeX**.

## For Overleaf Users

Copy the [template](<https://www.overleaf.com/read/zvyszxmcxrpp#e70d65>) project.

## Installing the `corvinusmetropolis` Beamer Style Locally

If you are familiar with LaTeX, the two main components for installation are the fonts and the logos. Otherwise, install TeX with the `beamer` package and the Metropolis theme. If you encounter any problems with the Metropolis theme, refer to the documentation at:

<https://www.tug.org/texlive//Contents/live/texmf-dist/doc/latex/beamertheme-metropolis/metropolistheme.pdf>

### Required Fonts

1. [Source Sans](https://github.com/adobe-fonts/source-sans/)
2. [Source Serif](https://github.com/adobe-fonts/source-serif)

The best approach is to install these fonts locally. However, placing the four OTF files in your working directory is also sufficient.

Compile the file `template.tex` from the command line using:

```
lualatex template.tex
```

or

```
xelatex template.tex
```

### Logos

If you do not require logos, skip this section. The main university logo will be used by default. Otherwise, use the logos created by the university's graphic design team. You can download the required logos from:

<https://www.uni-corvinus.hu/ona/arculati-elemek/>

Find the appropriate logo and place it in your working folder. Do not forget to adjust the exact filename in the command:

```
\renewcommand{\myinstlogo}{corvinus_Department_of_Mathematics_logo_black.eps}
```

for example.

Compile `template.tex` again using `lualatex` or `xelatex`, and compare your output with the uploaded `template.pdf`. If you have used `lualatex` or `xelatex` compilers previously, there is no need to read the rest of this document. Enjoy!

If you have never used `lualatex` or `xelatex`, your LaTeX source file may not be encoded in UTF-8, which will cause problems. The required input encoding for compilation with `lualatex` or `xelatex` is UTF-8. Ensure that your text editor is set to UTF-8 encoding. If you are using an older file, convert it to UTF-8 before compiling.

For example, if your source file uses Central European encoding (ISO-8859-2), you can convert it to UTF-8 with the following command:

```
iconv -f ISO-8859-2 -t utf-8 mytexinput.tex
```

For further details, read pages 1–3 of:

[http://dante.ctan.org/tex-archive/info/luatex/lualatex-doc/lualatex-doc.pdf](http://dante.ctan.org/tex-archive/info/luatex/lualatex-doc/lualatex-doc.pdf)

Do not use the font selection command `\setsansfont` in your source code; this is handled by `corvinusmetropolis.cls`.

Enjoy!
