mkdir -p dist
SRCFILE=src/start.html
DISTFILE=dist/index.html
TMPFILE=tmp.html
gpp $SRCFILE > $TMPFILE;
./minify.sh $TMPFILE > $DISTFILE
rm $TMPFILE
