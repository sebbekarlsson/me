mkdir -p dist
SRCFILE=src/start.html
STATICDIR=src/static
DISTDIR=dist
DISTFILE=$DISTDIR/index.html
TMPFILE=tmp.html
gpp $SRCFILE > $TMPFILE;
#./minify.sh $TMPFILE > $DISTFILE
cat $TMPFILE > $DISTFILE
rm $TMPFILE

# favicons
cp $STATICDIR/fav/* $DISTDIR/.

# images
cp -r $STATICDIR/img $DISTDIR/.
