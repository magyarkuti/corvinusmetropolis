An extension of **metropolis** theme for the **beamer** package of **LaTeX**.


## Install the beamer style corvinusmetropolis 

If you are familiar with LaTeX the two cornerstones of the installation are the fonts and the logos only.
Otherwise, install tex with beamer having metropolis theme. If you have any problem with metropolis theme go to 
<https://www.tug.org/texlive//Contents/live/texmf-dist/doc/latex/beamertheme-metropolis/metropolistheme.pdf>

### Required fonts
  1. Fira Sans
  1. Calluna
  1. TT Nooks

At this point it is a good idea to verify if Fira Sans is installed first. Compile the file `template.tex` using the command line
```
lualatex templatex.tex 
or
xelatex template.tex
````
Open the `template.log` and search for the sentence *'Could not find Fira'*. If you found it, it means your Fira Sans font set is not yet installed.
Try to install the missing Fira Sans font set using your tex distribution. See: <https://tug.org/FontCatalogue/firasans/>

If you decide not to install fonts or even more you compile with `pdflatex`, then it is also ok, although this is what I strongly do not recommend for you to do.
At this case the beamer default font set is used, which is not bad at all, but it does not fit with the Corvinus requests.

Unfortunatelly, the rest of the two font sets are not open source, Corvinus University of Budapest bought these fonts to you. 
Do not hesitate to contact with the graphic designer of the university, she will send you the font sets. 
Install the fonts on your operating system locally. It is compeletely independent of the TeX distribution. 
If the operating system is able to see these fonts, for example if an ordinary word processor recognizes these two fonts, 
then almost surely `lualatex` and `xelatex` will also find these fonts. 😊

Discuss with the log file again. If the sentence *'Corvinus recommended fonts TT Nooks and Calluna work properly!'* is found, then you have finished the font installation.

### Logos
The logos are designed by the graphical designer group of the university. You can download the logo you need from
<https://www.uni-corvinus.hu/ona/arculati-elemek/>
Practically you need two logos. 
  1. One for the closing frames 
which is `corvinus_egyszerusitett_logo_cmyk.eps`
  1. An other one for the title page 
which depends on your department or institute. 
Find the appropriate logos and place them to your working folder. Do not forget to adjust the exact filename at the command 
`\renewcommand{\myinstlogo}{corvinus_Institute_of_Data_Analytics_and_Information_Systems_cmyk.eps}`, for exmaple.

Compile `template.tex` again with `lualatex` or `xelatex` and compare with `template.pdf` what I uploaded. If you have used `lualatex` or `xelatex` compilers earlier, then no reason to read the rest of this document. Enjoy!

If you have never used `lualatex` and `xelatex`, then probably your latex source file is encoded something different than `utf-8`. That soon becomes a serious problem. The point is that the required input encoding of the latex source is `utf-8` when `lualatex` or `xelatex` compiles the source code. Thus, set your text editor to `utf-8` encoding. Using an older file you should convert your tex source to an `utf-8` encoded text file first.
For example, if you use the good, old fashioned Central European encoding, as an uncomfortable hereditary of an exotic operating system of the last century, your source file is probably encoded `ISO-8859-2`.
At this case the command
```
iconv -f ISO-8859-2 -t utf-8 mytexinput.tex
```
converts your input file to `utf-8` format.
For better understanding please read the first three pages of the document
<http://dante.ctan.org/tex-archive/info/luatex/lualatex-doc/lualatex-doc.pdf>.
No more, but only the first three pages. Do not use the font selection command `\setsansfont` in your source code. This is what `corvinusmetropolis.cls` does.

Have fun, enjoy!
