#!/bin/bash

TOOLS=(afm2tfm                 kpsereadlink            pdftex
biber                   kpsestat                pktogf
bibtex                  kpsewhich               pktype
dvilualatex             latex                   rungs
dviluatex               luahbtex                simpdftex
dvipdfm                 lualatex                teckit_compile
dvipdfmx                luaotfload-tool         tex
dvipdft                 luatex                  texhash
dvips                   makeindex               texlua
ebb                     man                     texluac
etex                    mf                      tlmgr
extractbb               mf-nowin                tlshell
fmtutil                 mft                     updmap
fmtutil-sys             mkindex                 updmap-sys
fmtutil-user            mktexfmt                updmap-user
gftodvi                 mktexlsr                xdvi
gftopk                  mktexmf                 xdvi-xaw
gftype                  mktexpk                 xdvipdfmx
hyperxmp-add-bytecount  mktextfm                xelatex
inimf                   mptopdf                 xelatex-unsafe
initex                  pdfetex                 xetex
kpseaccess              pdflatex                xetex-unsafe
pandoc)

cat << EOF > template
#!/bin/bash

VERSION=2.2.1
PACKAGE=pandoc
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

STORAGES=(/ocean /local /scratch)

OPTIONS=""
for STORAGE in "\${STORAGES[@]}"
do
	if [ -d "\$STORAGE" ]; then
		OPTIONS=\$OPTIONS" -B \$STORAGE"
        fi
done

if id | grep -q hubmap && [ -d "/hive" ]; then
	OPTIONS=\$OPTIONS" -B /hive"
fi

if id | grep -q bil && [ -d "/bil" ]; then
	OPTIONS=\$OPTIONS" -B /bil"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        git add $TOOL
done

rm -f template
