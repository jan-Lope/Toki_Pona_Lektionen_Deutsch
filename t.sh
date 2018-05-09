#!/bin/bash

# Generiere ein UNIX manual page mit dem Wörterbuch

MAN_FILE="toki_pona.man"
TODAY=`date +"%Y-%m-%d"`

#


echo ".TH man 6 $TODAY Toki Pona - Dictionary"   > $MAN_FILE
echo ".SH NAME"                                 >> $MAN_FILE
echo "Toki Pona - Dictionary"                   >> $MAN_FILE
echo ".SH DESCRIPTION"                          >> $MAN_FILE
echo "Toki Pona is a constructed language that favors simplicity over clarity, and touts itself as 'the language of good. The simple way of life.' Toki Pona has only about 120 words."  >> $MAN_FILE
echo ".SH DICTIONARY"                           >> $MAN_FILE
#
fgrep "&&" dict.tex  | fgrep "\\" | fgrep -v "%" | sed -e 's#'\dots'#''#g' | sed -e 's#\\#''#g' 

exit

| \
	sed -e 's#'\textbf{'#'@'#g' | sed -e 's#'\textit{'#'@'#g' | sed -e 's#'}:'#'@'#g' | sed -e 's#'}'#'@'#g' | \
	sed -e 's#'@\ '#'@'#g' 	| sed -e 's#'\"'#'\'\''#g' | sed -e 's#'\&'#''#g' | \
	sed -e 's#'\ \ '#'\ '#g' | sed -e 's#'\ \ '#'\ '#g' | sed -e 's#'\ \ '#'\ '#g' | sed -e 's#'\ \ '#'\ '#g' | \
	awk -F\@ '{print "\n.PP\n.B " $2 "\n.br\n.SM\n" $4 ": " $5 "\n"}'  	>> $MAN_FILE


man ./$MAN_FILE
rm ./$MAN_FILE

exit

	awk -F\@ '{print "\n.PP\n.B " $2 "\n" $4 "\n.br\n" $5 "\n"}'


| sed -e 's#'\textbf{'#''#g' 

| awk -F\{ '{print $1 ":" $3 $4 $5 $6 $7 }' | \
 sed -e 's#'}'#''#g' | sed -e 's#'\textbf{'#''#g' | sed -e 's#'\textit{'#''#g' | \
 sed -e 's#'\dots '#'...'#g' | sed -e 's#\\#''#g' | sed -e 's#^ #''#g' | sed -e 's#^ #''#g' | sed -e 's#^ #''#g' | \
 sed -e 's#'\"'#'\'\''#g' | \
 awk -F\: '{print "\n.PP\n.B " $1 "\n" $2 "\n.br\n" $3 "\n"}' >> $MAN_FILE
#
echo ".SH AUTHOR"                               >> $MAN_FILE
echo "jan Lope ( https://jan-lope.github.io )"  >> $MAN_FILE




exit

LATEX_FILE_DICT="nimi_pi_toki_pona"

### http://www.linuxhowtos.org/System/creatingman.htm
### http://roperzh.github.io/grapse/


# Generiere ein einfaches Latex-File des Dictionaries
echo "\documentclass[10pt,a4paper]{article}"          > $LATEX_FILE_DICT.tex
echo "\usepackage[utf8]{inputenc}"                   >> $LATEX_FILE_DICT.tex
# echo "\usepackage{amsmath}"                        >> $LATEX_FILE_DICT.tex
# echo "\usepackage{amsfonts}"                       >> $LATEX_FILE_DICT.tex
# echo "\usepackage[fancy]{latex2man}"                        >> $LATEX_FILE_DICT.tex
echo "\usepackage{amssymb}"                          >> $LATEX_FILE_DICT.tex
echo "\begin{document}"                              >> $LATEX_FILE_DICT.tex


echo "\title{Toki Pona - Dictionary}"                >> $LATEX_FILE_DICT.tex
echo "\author{jan Lope https://jan-lope.github.io/}" >> $LATEX_FILE_DICT.tex
echo "\date"                                         >> $LATEX_FILE_DICT.tex
echo "\today"                                        >> $LATEX_FILE_DICT.tex
echo "\maketitle"                                    >> $LATEX_FILE_DICT.tex

echo "\begin{tabular}{lll}"                          >> $LATEX_FILE_DICT.tex





fgrep "&&" dict.tex   >> $LATEX_FILE_DICT.tex
                       



echo "\end{tabular}"                           >> $LATEX_FILE_DICT.tex
echo "\end{document}"                          >> $LATEX_FILE_DICT.tex


# less $LATEX_FILE_DICT.tex
# latex2html  $LATEX_FILE_DICT.tex 
# latex2man   $LATEX_FILE_DICT.tex $LATEX_FILE_DICT.man
latex2rtf $LATEX_FILE_DICT.tex 

#### sudo apt-get install pandoc

#Output formats: asciidoc, beamer, commonmark, context, docbook, docx, dokuwiki,
#                dzslides, epub, epub3, fb2, haddock, html, html5, icml, json*,
#                latex, man, markdown, markdown_github, markdown_mmd,
#                markdown_phpextra, markdown_strict, mediawiki, native, odt,
#                opendocument, opml, org, pdf**, plain, revealjs, rst, rtf, s5,
#                slideous, slidy, texinfo, textile




pandoc -r latex -w man $LATEX_FILE_DICT.tex -o $LATEX_FILE_DICT.man

# pandoc -r latex -w plain $LATEX_FILE_DICT.tex -o $LATEX_FILE_DICT.txt



# rm $LATEX_FILE.tex
