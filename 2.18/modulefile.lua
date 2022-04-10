--
-- pandoc 2.18 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Other"
-- "Description: Open-source document converter, widely used as a writing tool and as a basis for publishing workflows."
-- "Keywords: singularity utilities"

whatis("Name: pandoc")
whatis("Version: 2.18")
whatis("Category: Other")
whatis("URL: https://www.psc.edu/resources/software")
whatis("open-source document converter, widely used as a writing tool and as a basis for publishing workflows. ")

help([[
Open-source document converter, widely used as a writing tool and as a basis for publishing workflows

To load the module, type

> module load pandoc/2.18

To unload the module, type

> module unload pandoc/2.18

Repository
----------
Tools included in this module are
* pandoc
* afm2tfm
* kpsereadlink
* pdftex
* biber
* kpsestat
* pktogf
* bibtex
* kpsewhich
* pktype
* dvilualatex
* latex
* rungs
* dviluatex
* luahbtex
* simpdftex
* dvipdfm
* lualatex
* teckit_compile
* dvipdfmx
* luaotfload-tool
* tex
* dvipdft
* luatex
* texhash
* dvips
* makeindex
* texlua
* ebb
* man
* texluac
* etex
* mf
* tlmgr
* extractbb
* mf-nowin
* tlshell
* fmtutil
* mft
* updmap
* fmtutil-sys
* mkindex
* updmap-sys
* fmtutil-user
* mktexfmt
* updmap-user
* gftodvi
* mktexlsr
* xdvi
* gftopk
* mktexmf
* xdvi-xaw
* gftype
* mktexpk
* xdvipdfmx
* hyperxmp-add-bytecount
* mktextfm
* xelatex
* inimf
* mptopdf
* xelatex-unsafe
* initex
* pdfetex
* xetex
* kpseaccess
* pdflatex
* xetex-unsafe
]])

local package = "pandoc"
local version = "2.18"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
