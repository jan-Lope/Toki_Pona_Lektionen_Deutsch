#!/bin/bash
###############################################################################
#
# Make pdf, booklet-pdf and html files for the German Toki Pona lessons 
# Robert Warnke
#
###############################################################################
#
TEX_FILE="toki-pona-lessons_de"
TODAY=`date +"%Y-%m-%d"`
echo " "
echo "########################################################################"
echo "start $0"
echo " "
rm -rf *.dvi
rm -rf *.ps
rm -rf *.pdf
echo "make dvi file"
latex $TEX_FILE.tex > /dev/null
latex $TEX_FILE.tex > /dev/null 
if [ ! -f $TEX_FILE.dvi ]; then
	echo "ERROR"
	exit 1
fi
echo "make bibliography"
bibtex $TEX_FILE > /dev/null
if [ ! -f $TEX_FILE.blg ]; then
	echo "ERROR"
	exit 1
fi
echo "make table of contents"
latex $TEX_FILE.tex > /dev/null
echo "make index"
makeindex $TEX_FILE.idx > /dev/null 2> /dev/null
if [ ! -f $TEX_FILE.idx ]; then
	echo "ERROR"
	exit 1
fi
echo "make table of contents"
latex $TEX_FILE.tex > /dev/null
echo "make pdf file"
pdflatex $TEX_FILE.tex > /dev/null
if [ ! -f $TEX_FILE.pdf ]; then
	echo "ERROR"
	exit 1
fi
echo "make ps file"
dvips $TEX_FILE.dvi > /dev/null 2> /dev/null
if [ ! -f $TEX_FILE.ps ]; then
	echo "ERROR"
	exit 1
fi
echo "make booklet ps file" 
pstops 4:-3L@.7\(21cm,0\)+0L@.7\(21cm,14.85cm\),1L@.7\(21cm,0\)+-2L@.7\(21cm,14.85cm\) $TEX_FILE.ps $TEX_FILE-booklet.ps > /dev/null 2> /dev/null
if [ ! -f $TEX_FILE-booklet.ps ]; then
	echo "ERROR"
	exit 1
fi
echo "make booklet pdf file" 
ps2pdf $TEX_FILE-booklet.ps
if [ ! -f $TEX_FILE-booklet.pdf ]; then
	echo "ERROR"
	exit 1
fi
echo "make toki-pona-dictionary"
latex toki-pona-dictionary.tex > /dev/null  2> /dev/null
if [ ! -f toki-pona-dictionary.dvi ]; then
	echo "ERROR"
	exit 1
fi
pdflatex toki-pona-dictionary.tex > /dev/null 2> /dev/null
if [ ! -f toki-pona-dictionary.pdf ]; then
	echo "ERROR"
	exit 1
fi

echo "make html files"
latex2html $TEX_FILE.tex > /dev/null 2> /dev/null
if [ ! -f $TEX_FILE/index.html ]; then
	echo "ERROR"
	exit 1
fi
cp toki-pona-lessons.css $TEX_FILE
if [ ! -f $TEX_FILE/toki-pona-lessons.css ]; then
	echo "ERROR"
	exit 1
fi
cp tokipona-logo.gif $TEX_FILE
if [ ! -f $TEX_FILE/tokipona-logo.gif ]; then
	echo "ERROR"
	exit 1
fi
for i in `ls $TEX_FILE/*.html` ; do
          sed -e '1,$s/ BORDER=\"1\"/ BORDER=\"0\"/g' $i > $i.neu && mv $i.neu $i
          sed -e '1,$s/ VALIGN=\"TOP\" WIDTH=5/ VALIGN=\"TOP\" WIDTH=\"300\"/g' $i > $i.neu && mv $i.neu $i
done
echo "make word list for ding dictionary ( http://www-user.tu-chemnitz.de/~fri/ding/ )"

fgrep "&&" *.tex | fgrep "\\" | fgrep -v "%" | fgrep -v "% no-dictionary" | fgrep -v "% & English - Toki Pona" | cut -d: -f2- | awk -F\& '{
print $1 "::" $3 $4 $5 $6 $7 }'  > tmp.txt
fgrep "&&" *.tex | fgrep "\\" | fgrep "% & English - Toki Pona" | cut -d: -f2- | awk -F\& '{print $3 ":: " $1 }'  >> tmp.txt
if [ ! -f tmp.txt ]; then
	echo "ERROR"
	exit 1
fi
# quick 'n' dirty
sed -e 's#'%'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'*'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'}'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\textbf{'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\textit{'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\textsc{'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\dots'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\glqq'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\grqq'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
echo "## $TODAY http://rowa.giso.de/languages/toki-pona/" > toki-pona_deutsch.txt
cat tmp.txt | sort >> toki-pona_deutsch.txt
if [ ! -f toki-pona_deutsch.txt ]; then
	echo "ERROR"
	exit 1
fi
rm -f tmp.txt
fgrep "mi moku" toki-pona_deutsch.txt > /dev/null 2> /dev/null
if [ $? != 0  ]; then
	echo "ERROR"
	exit 1
fi
echo "Create Build directory and copy the pdf and html files in this directory."
rm -rf _build
mkdir -p _build
mv *.pdf _build
if [ ! -f _build/$TEX_FILE.pdf ]; then
	echo "ERROR"
	exit 1
fi
if [ ! -f _build/$TEX_FILE-booklet.pdf ]; then
	echo "ERROR"
	exit 1
fi
if [ ! -f _build/toki-pona-dictionary.pdf ]; then
	echo "ERROR"
	exit 1
fi
mv toki-pona_deutsch.txt _build
fgrep "mi moku" _build/toki-pona_deutsch.txt > /dev/null 2> /dev/null
if [ $? != 0  ]; then
	echo "ERROR"
	exit 1
fi
mv $TEX_FILE _build/
if [ ! -f _build/$TEX_FILE/index.html ]; then
	echo "ERROR"
	exit 1
fi
echo "make clear"
rm -f *.synctex.gz
rm -f *.tmp
rm -f tmp.*
rm -f *.swp
rm -f *.aux
rm -f *.lof
rm -f *.log
rm -f *.lot
rm -f *.fls
rm -f *.out
rm -f *.toc
rm -f *.fmt
rm -f *.fot
rm -f *.cb
rm -f *.cb2
rm -f *.dvi
rm -f *.ps
rm -f *.eps
rm -f *.pdf
rm -f *.bbl
rm -f *.blg
rm -f *.bcf
rm -f *.blg
rm -f *-blx.aux
rm -f *-blx.bib
rm -f *.run.xml
rm -f *.idx
rm -f *.ilg
rm -f *.ind
rm -f *.ist
echo " "
echo "The pdf, html and txt files are in the directory _build."
ls _build
echo " "
echo "Printing of the booklet: "
echo "Print the odd numbers first."
echo "Put the paper with the script on the top again in the printer."
echo " "
echo "end $0"
echo "########################################################################"
echo " "

#
###############################################################################
###############################################################################
# eof
