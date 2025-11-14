An extension of the **Metropolis** theme for the **beamer** package in **LaTeX**.

## For Overleaf users
<https://www.overleaf.com/read/zvyszxmcxrpp#e70d65>

## Install locallay the beamer style corvinusmetropolis 

If you are familiar with LaTeX, the two main components for installation are the fonts and the logos. Otherwise, install TeX with the beamer package and the Metropolis theme. If you encounter any problems with the Metropolis theme, refer to 
<https://www.tug.org/texlive//Contents/live/texmf-dist/doc/latex/beamertheme-metropolis/metropolistheme.pdf>

### Required fonts
  1. Fira Sans
  1. Calluna
  1. TT Nooks

At this stage it is recommended to verify whether Fira Sans is installed. Compile the file `template.tex` from the command line using
```
lualatex templatex.tex 
or
xelatex template.tex
````
Open the `template.log` and look for the message *'Could not find Fira'*. If you found this message, it means your Fira Sans font set is not yet installed.
Install the missing Fira Sans font set using your TeX distribution. Refer to: <https://tug.org/FontCatalogue/firasans/>

If you choose not to install the fonts, or you compile with `pdflatex`, this is acceptabe, although this is strongly discouraged.
At this case the beamer default font set is used, which is not bad at all, but it does not fit with the Corvinus requests.

Unfortunatelly, the other two font sets are not open source; Corvinus University of Budapest has purchased these fonts for you. 
Do not hesitate to contact the university's graphic designer, who can provide you the font sets.
Install the fonts locally on your operating system. Font installation is completely independent of the TeX distribution. 
If the operating system detects these fonts---for example, if they are available to word processors---they will almost certainly be recognized by `lualatex` and `xelatex` as well. 😊

Review the log file again. If you find the message *'Corvinus recommended fonts TT Nooks and Calluna work properly!'*, your font installation has been completed successfully.

### Logos
The university's graphic design team has created the logos. You can download the required logos from
<https://www.uni-corvinus.hu/ona/arculati-elemek/>
Typically, you will need two logos. 
  1. One for the closing frames 
which is `corvinus_egyszerusitett_logo_cmyk.eps`
  1. An other one for the title page 
which depends on your department or institute. 
Find the appropriate logos and place them to your working folder. Do not forget to adjust the exact filename at the command 
`\renewcommand{\myinstlogo}{corvinus_Institute_of_Data_Analytics_and_Information_Systems_cmyk.eps}`, for exmaple.

Compile `template.tex` again using `lualatex` or `xelatex` and compare yout output with the uploaded `template.pdf`. If you have used `lualatex` or `xelatex` compilers earlier, then no reason to read the rest of this document. Enjoy!

If you have never used `lualatex` and `xelatex`, your latex source file may not be encoded `utf-8`, which will cause problems. The required input encoding for compilation with `lualatex` or `xelatex` is   `utf-8`. Ensure your text editor is set to `utf-8` encoding. If you are using an older file, convert it to `utf-8` beforre compliling.
For example, if your source file uses Central European encoding `(ISO-8859-2)`, you can convert it to `utf-8` with the following command:
```
iconv -f ISO-8859-2 -t utf-8 mytexinput.tex
```
converts your input file to `utf-8` format.
For further details, please read the first three pages of
<http://dante.ctan.org/tex-archive/info/luatex/lualatex-doc/lualatex-doc.pdf>.
but no more than that. Do not use the font selection command `\setsansfont` in your source code; this is handled by `corvinusmetropolis.cls`.

Enjoy!
