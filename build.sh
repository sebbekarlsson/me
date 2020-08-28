mkdir -p dist
SRCFILE=src/index.html
DISTFILE=dist/index.html
TMPFILE=tmp.html
gpp $SRCFILE > $TMPFILE;
./minify.sh $TMPFILE > $DISTFILE
rm $TMPFILE
