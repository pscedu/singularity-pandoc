--
-- pandoc 2.2.1 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Other"
-- "Description: Open-source document converter, widely used as a writing tool and as a basis for publishing workflows."
-- "Keywords: singularity utilities"

whatis("Name: pandoc")
whatis("Version: 2.2.1")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("open-source document converter, widely used as a writing tool and as a basis for publishing workflows. ")

help([[
Open-source document converter, widely used as a writing tool and as a basis for publishing workflows

To load the module, type

> module load pandoc/2.2.1

To unload the module, type

> module unload pandoc/2.2.1

Repository
----------
Tools included in this module are
* pandoc
]])

local package = "pandoc"
local version = "2.2.1"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
