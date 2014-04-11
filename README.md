# biblatx-moderncv #

Biblatex style for the moderncv class.

See biblatex-moderncv.pdf for more details. This is still in development.

## Requirements ##
* Language package
  + [babel](http://ctan.org/pkg/babel) for LaTeX
  + [pollyglossia](http://ctan.org/pkg/pollyglossia) for XeTeX or
    LuaTeX
* [csquotes](http://ctan.org/pkg/csquotes)
* [moderncv](http://ctan.org/pkg/moderncv) not strictly required but
  some lengths need to be defined see `simpletest.tex`

## Basic Usage ##
Add this to your preamble:
```latex
\usepackage[american]{babel}
\usepackage{csquotes}
\usepackage[
  backend=biber,
  style=moderncv,
  authorhash=get_from_bbl_file]{biblatex}
\DeclareLanguageMapping{american}{american-moderncv}
\addbibresource{file.bib}
...
\nocite{*}
\printbibliography
```
or for `polyglossia` users:

```latex
\usepackage{polyglossia}
\setdefaultlanguage[variant=american]{english}
\usepackage{csquotes}
\usepackage[
  backend=biber,
  style=moderncv,
  authorhash=get_from_bbl_file]{biblatex}
\DeclareLanguageMapping{english}{english-moderncv}
\addbibresource{file.bib}
...
\nocite{*}
\printbibliography
```

## Known Issues ##
* Only American English is supported
* In document references will not work properly
* Sets do not work
