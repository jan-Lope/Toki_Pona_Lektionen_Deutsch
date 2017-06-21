#!/bin/bash
###############################################################################
#
# Make booklet for the toki pona lessons.
# Robert Warnke
# Nov 2003
#
###############################################################################
#
clear
TODAY=`date +"%Y-%m-%d"`
#
###############################################################################
#
echo "Make dvi files"
echo "------------------------------------------------------------------"
latex toki-pona-lessons_de.tex > /dev/null
echo " "
#
###############################################################################
#
echo "Make Bibliography"
echo "------------------------------------------------------------------"
bibtex toki-pona-lessons_de > /dev/null
echo " "
#
###############################################################################
#
echo "Make dvi files again"
echo "------------------------------------------------------------------"
latex toki-pona-lessons_de.tex > /dev/null
echo " "
#
###############################################################################
#
echo "Make index"
echo "------------------------------------------------------------------"
makeindex toki-pona-lessons_de.idx > /dev/null
ls -l toki-pona-lessons_de.idx
echo " "
#
###############################################################################
#
echo "Make content index"
echo "------------------------------------------------------------------"
latex toki-pona-lessons_de.tex > /dev/null
ls -l toki-pona-lessons_de.dvi
echo " "
#
###############################################################################
#
echo "Make html files"
echo "------------------------------------------------------------------"
echo "Configuration file: .latex2html-init"
latex2html toki-pona-lessons_de.tex > /dev/null
cp toki-pona-lessons.css toki-pona-lessons
cp tokipona-logo.gif toki-pona-lessons
ls toki-pona-lessons_de
echo " "
#
# Make a better view for tables:
for i in `ls toki-pona-lessons_de/*.html` ; do
          sed -e '1,$s/ BORDER=\"1\"/ BORDER=\"0\"/g' $i > $i.neu && mv $i.neu $i
          sed -e '1,$s/ VALIGN=\"TOP\" WIDTH=5/ VALIGN=\"TOP\" WIDTH=\"300\"/g' $i > $i.neu && mv $i.neu $i
done
###############################################################################
#
echo "Make word list for ding dictionary"
echo "------------------------------------------------------------------"
echo "http://www-user.tu-chemnitz.de/~fri/ding/"
fgrep "&&" *.tex | fgrep "\\" | fgrep -v "%" | fgrep -v "% no-dictionary" | fgrep -v "% & English - Toki Pona" | cut -d: -f2- | awk -F\& '{
print $1 "::" $3 $4 $5 $6 $7 }'  > tmp.txt
fgrep "&&" *.tex | fgrep "\\" | fgrep "% & English - Toki Pona" | cut -d: -f2- | awk -F\& '{print $3 ":: " $1 }'  >> tmp.txt
#
# quick 'n' dirty
#
sed -e 's#'%'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'*'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'}'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\textbf{'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\textit{'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\textsc{'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\dots'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\glqq'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt
sed -e 's#'\grqq'#''#g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt

# search="\sd"
# echo "$search"
# exit
# sed -e '1,$s/$search/ bla /g' tmp.txt > tmp.neu && mv tmp.neu tmp.txt

echo "## $TODAY http://rowa.giso.de/languages/toki-pona/" > toki-pona-lessons_de/toki-pona_deutsch.txt
cat tmp.txt | sort >> toki-pona-lessons_de/toki-pona_deutsch.txt

rm -f tmp.txt
wc -l toki-pona-lessons_de/toki-pona_english.txt
echo " "
# exit
cp toki-pona-lessons_de/* /home/robert/public_html/rowa/rowa.giso.de/languages/toki-pona/german/latex/
geany /home/robert/public_html/rowa/rowa.giso.de/languages/toki-pona/german/latex/toki-pona_deutsch.txt &
#
###############################################################################
#
echo "Make pdf file"
echo "------------------------------------------------------------------"
pdflatex toki-pona-lessons_de.tex > /dev/null
ls -l latex toki-pona-lessons_de.pdf
evince toki-pona-lessons_de.pdf
#
###############################################################################
#
echo "Make ps file"
echo "------------------------------------------------------------------"
rm -f *.ps
dvips toki-pona-lessons_de.dvi > /dev/null
ls -l toki-pona-lessons_de.ps
echo " "
#
###############################################################################
#
echo "Make booklet ps-file"
echo "------------------------------------------------------------------"
pstops 4:-3L@.7\(21cm,0\)+0L@.7\(21cm,14.85cm\),1L@.7\(21cm,0\)+-2L@.7\(21cm,14.85cm\) toki-pona-lessons_de.ps toki-pona-lessons-booklet_de.ps
echo " "
#
###############################################################################
#
echo "Make booklet pdf-file"
echo "------------------------------------------------------------------"
ps2pdf toki-pona-lessons-booklet_de.ps
ls -l toki-pona-lessons-booklet_de.*
echo " "
#
###############################################################################
#
echo "Make toki-pona-dictionary"
latex toki-pona-dictionary.tex /dev/null
pdflatex toki-pona-dictionary.tex > /dev/null
echo " "
#
###############################################################################
#
rm -rf toki-pona-tex-files_de
rm -f toki-pona-tex-files_de.tar.gz
mkdir -p toki-pona-tex-files_de
cp *.tex toki-pona-tex-files_de
cp *.sh toki-pona-tex-files_de
cp *.bib toki-pona-tex-files_de
cp .latex2html-init toki-pona-tex-files_de
cp *.css toki-pona-tex-files_de
tar czf toki-pona-tex-files_de.tar.gz toki-pona-tex-files_de
rm -r toki-pona-tex-files_de
#
###############################################################################
#
# acroread toki-pona-lessons.pdf &
# acroread toki-pona-lessons-booklet.pdf &
# ghostview -landscape toki-pona-lessons-booklet.ps &
# kghostview toki-pona-lessons-booklet.ps &
echo "------------------------------------------------------------------"
echo "pona!"
echo "------------------------------------------------------------------"
echo "Print the odd numbers first."
echo "Put the paper with the script on the top again in the printer."
echo "------------------------------------------------------------------"
#
###############################################################################
###############################################################################
# eof
