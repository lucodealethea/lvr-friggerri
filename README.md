# lvr-friggerri
Curriculum Vitae - models
=========================

A collection of LaTeX Resume templates:
- One Pager using tikz library ie. Infographic type
- Friggerri type (still missing)

## How to install
Download the zip from https://github.com/lucodealethea/lvr-friggerri or clone it in a subfolder:
```sh
git clone https://github.com/lucodealethea/lvr-friggerri.git
```
To compile:

xelatex main.tex -halt-on-error -file-line-error -no-pdf

Will return main.pdf (to compare with main.pdf in this project)

## License
These are derived works under the terms of the LaTeX project public license (LPPL). 
One is based on version 2015-03-10 of europecv.cls which is part of the europecv package by Nicola Vitacolonna. 
A copy of europecv, including the unmodified version of europecv.cls is available from http://www.ctan.org/tex-archive/macros/latex/contrib/europecv.
The other is based on Friggerri and adapted to last texlive release, including bibtex.

## about Friggeri CV
Friggeri CV is an elegant *Curriculum Vitae* template for LaTeX/XeTeX originally written and released by [Adrian Friggeri](https://github.com/afriggeri).

In this work the original template is updated/upgraded and fitted to my personal needs.


## Known issues
* For now only English and Portuguese are fully translated ant tested.
For English, at lines 109-110 use
\includecomment{en} % English language
\excludecomment{pt} % Portuguese language


