The typed-checklist package
===========================

Copyright (C) 2013-2022 Richard Grewe

Released under the [LaTeX Project Public License](http://www.latex-project.org/lppl/) version 1.3c or later

## Purpose

The main goal of the `typed-checklist` package is to provide means for
typesetting checklists in a way that stipulates users to explicitly
distinguish checklists for goals, for tasks, for artifacts, and for
milestones - i.e., the *type* of checklist entries.
The intention behind this is that a user of the package is coerced to
think about what kind of entries he/she adds to the checklist. This
shall yield a clearer result and, in the long run, help with training to
distinguish entries of different types.

## Availability

The `typed-checklist` package is on [CTAN](http://www.ctan.org/pkg/typed-checklist),
where you can also find the [documentation](http://mirrors.ctan.org/macros/latex/contrib/typed-checklist/typed-checklist.pdf),
as well as on [github](https://github.com/Ri-Ga/typed-checklist).

## Manual Installation

The `typed-checklist` package comes with (at least) the following files
* typed-checklist.ins
* typed-checklist.dtx
* README.md

and possibly also with
* Makefile
* typed-checklist.pdf (generated from typed-checklist.dtx)
* typed-checklist.sty (generated from typed-checklist.dtx)

To install the `typed-checklist` package, you additionally need
* docstrip.tex

To build the package (`typed-checklist.sty`), run one of the following
```
    latex typed-checklist.ins
    make package (needs Makefile)
```

Put the resulting `typed-checklist.sty` somewhere where LaTeX can find it.
Read the documentation of your LaTeX system to find out where this
might be.

## Building Documentation

To build the documentation of the `typed-checklist` package,
you additionally need the following classes and packages
(including their dependencies):
* ltxdoc
* rgltxdoc
* soul
* csquotes
* skull
* asciilist
* keyvaltable

as well as
* pdflatex

To build the documentation (`typed-checklist.pdf`), either run
```
    make docs
```
or the following sequence of commands
```
    pdflatex typed-checklist.dtx
    makeindex -s gind.ist -o typed-checklist.ind typed-checklist.idx
    makeindex -s gglo.ist -o typed-checklist.gls typed-checklist.glo
    pdflatex typed-checklist.dtx
    pdflatex typed-checklist.dtx
```

Happy TeX'ing
