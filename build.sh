mkdir -p dist
STATICDIR=src/static
DISTDIR=dist
TMPFILE=tmp.html


SRCFILE=src/start.html
DISTFILE=$DISTDIR/index.html
markdown src/cv.md > src/cv.html
pandoc src/cv.md -o dist/cv.docx
pandoc src/cv.md -o dist/cv.pdf --pdf-engine=xelatex
/home/ianertson/workspace/gpp/build/gpp_e $SRCFILE > $TMPFILE;
#./minify.sh $TMPFILE > $DISTFILE
cat $TMPFILE > $DISTFILE
rm $TMPFILE

# favicons
cp $STATICDIR/fav/* $DISTDIR/.

# images
cp -r $STATICDIR/img $DISTDIR/.


SRCFILE=src/projects.html
DISTFILE=$DISTDIR/projects.html
/home/ianertson/workspace/gpp/build/gpp_e $SRCFILE > $TMPFILE;
#./minify.sh $TMPFILE > $DISTFILE
cat $TMPFILE > $DISTFILE
rm $TMPFILE
