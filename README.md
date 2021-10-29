# Install the beamer style corvinusmetropolis
which is a an extension of Metropolis theme for the beamer package of LaTeX.

If you are familiar with LaTeX the two cornerstones of the installation are the fonts and the logos only.
Otherwise, install tex with beamer having metropolis theme. If you have any problem with metropolis theme go to 
https://www.tug.org/texlive//Contents/live/texmf-dist/doc/latex/beamertheme-metropolis/metropolistheme.pdf  

### Required fonts
  #### Fira Sans
  #### Calluna
  #### TT Nooks

At this point it is a good idea to verify if Fira Sans is installed first. Compile template.tex using the command line
```
lualatex templatex.tex 
or
xelatex template.tex
````
Open the `template.log` and search for the sentence *'Could not find Fira'*. If you found it, then you are in trouble.
Try to install the missing Fira Sans font set using your tex distribution. See: https://tug.org/FontCatalogue/firasans/

If you decide not to install fonts or even more you compile with `pdflatex`, then it is also ok. This is what I do not recommend.
At this case the beamer default font set is used. It is not bad, but our goal is to be fit with the Corvinus requests.

Unfortunatelly, the rest of the two font sets is not open source, but Corvinus University of Budapest bought these fonts to you. 
Do not hesitate to contact with the graphic designer of the university, she will send you the font sets. 
Install the fonts on your operating system localy. It is compeletely independent of the TeX distribution. 
If the operating system can see these fonts, for example if an ordinary word processor recognizes these two fonts, 
then `lualatex` and `xelatex` will also find these fonts almost surelly. :)
Discuss with the log file again.
If you find the sentence *'Corvinus recommended fonts TT Nooks and Calluna work properly!'* then you finished the font installation.

### Logos
The logos are designed by the graphical designer group of the university. You can download the logo you need from
https://www.uni-corvinus.hu/ona/arculati-elemek/
Practically you need two logos. 
#### One for the closing frames 
which is `corvinus_egyszerusitett_logo_cmyk.eps`
#### An other one for the title page 
which depends on your department or institute. Find the appropriate logos and place to your working folder.

Compile template.tex with lualatex or xelatex and compare with `template.pdf` what I uploaded. 

Enjoy!
