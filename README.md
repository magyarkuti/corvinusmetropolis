# Install the beamer style corvinusmetropolis
which is a an extension of theme **metropolis** for the package **beamer** of **LaTeX**.

If you are familiar with LaTeX the two cornerstones of the installation are the fonts and the logos only.
Otherwise, install tex with beamer having metropolis theme. If you have any problem with metropolis theme go to 
https://www.tug.org/texlive//Contents/live/texmf-dist/doc/latex/beamertheme-metropolis/metropolistheme.pdf  

### Required fonts
  1. Fira Sans
  1. Calluna
  1. TT Nooks

At this point it is a good idea to verify if Fira Sans is installed first. Compile template.tex using the command line
```
lualatex templatex.tex 
or
xelatex template.tex
````
Open the `template.log` and search for the sentence *'Could not find Fira'*. If you found it, then you are in trouble.
Try to install the missing Fira Sans font set using your tex distribution. See: https://tug.org/FontCatalogue/firasans/

If you decide not to install fonts or even more you compile with `pdflatex`, then it is also ok. Although, this is what I strongly do not recommend.
At this case the beamer default font set is used. It is not bad at all, but but does not fit with the Corvinus requests.

Unfortunatelly, the rest of the two font sets is not open source, but Corvinus University of Budapest bought these fonts to you. 
Do not hesitate to contact with the graphic designer of the university, she will send you the font sets. 
Install the fonts on your operating system localy. It is compeletely independent of the TeX distribution. 
If the operating system is able to see these fonts, for example if an ordinary word processor recognizes these two fonts, 
then `lualatex` and `xelatex` will also find these fonts almost surelly. :)
Discuss with the log file again. If the sentence *'Corvinus recommended fonts TT Nooks and Calluna work properly!'* is found, then you finished the font installation.

### Logos
The logos are designed by the graphical designer group of the university. You can download the logo you need from
https://www.uni-corvinus.hu/ona/arculati-elemek/
Practically you need two logos. 
  1. One for the closing frames 
which is `corvinus_egyszerusitett_logo_cmyk.eps`
  1. An other one for the title page 
which depends on your department or institute. 
Find the appropriate logos and place to your working folder. Do not forget to adjust the exact filename at the command `\titlegraphic{\hfill{\includegraphics[width=.2\textwidth]{corvinus_Department_of_Mathematics_logo_cmyk.eps}}}`

Compile `template.tex` again with `lualatex` or `xelatex` and compare with `template.pdf` what I uploaded. If you have used earlier the compilers `lualatex` or `xelatex` then no reason to read the rest of this document. Enjoy!

If you have never used `lualatex` and `xelatex` then, with very high propability, your tex source is not using `utf-8` encoding. That becomes a problem soon. The point is that required input encoding of the latex source is `utf 8` whem `lualatex` or `xelatex` is used. Thus set your text editor to `utf-8` encoding or if you want to use an older file, first you should convert your tex source to `utf-8`.
For example, if you use a good, old fashioned central european encoding, as an uncomfortable hereditery of an exotic operatinfg system of the last century, your tex file probably uses `ISO-8859-2` encoding.
At this case the command
```
iconv -f ISO-8859-2 -t utf-8 mytexinput.tex
```
converts your input file to `utf-8` format.
To understand better, please read the first three pages of the document
http://dante.ctan.org/tex-archive/info/luatex/lualatex-doc/lualatex-doc.pdf
No more, first three pages only. Do not use the font selection command `\setsansfont` in your source code. This what `corvinusmetrolis.cls` does.

Have fun and enjoy!
