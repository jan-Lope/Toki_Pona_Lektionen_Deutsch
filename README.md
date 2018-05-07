<!--
  Description: Toki Pona, Das Ziel der von Sonja Lang (2001) künstlich geschaffene Sprache ist der Minimalismus. 
  -->
  
# Toki Pona - Lektionen und Wörterbuch 

Das Ziel der von Sonja Lang (2001) künstlich geschaffene Sprache toki pona ist der Minimalismus. toki pona besteht aus nur etwa 120 Wörtern, die in ihrer Form auch nicht verändert werden. 

Diese Lektionen basieren auf den Lektionen ((2015)) von jan Pije ( [tokipona.net/tp/janpije](http://tokipona.net/tp/janpije/) ) und dem offiziellen Toki Pona Buch (first English edition 2014) von Sonja Lang ( [tokipona.org](http://tokipona.org) ).  


## Lektionen 

Diese Lektionen können in unterschiedlichen Formaten herunter geladen werden. 
Drücke den "Download"-Button. Erscheint der Fehler 404, drücke die Shift-Taste und den Reload-Button des Browsers. 

[pdf (A4)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.pdf) | 
[pdf (letter)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de-letter.pdf) 


[pdf (booklet A5)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de-booklet.pdf) | 
[pdf (booklet letter)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de-booklet-letter.pdf) 
Bei der Booklet-Version werden jeweils zwei Seiten auf eine A4/Letter-Seite abgebildet, so dass ein daraus ein Booklet erstellt werden kann. Dazu werden erst alle ungeraden Seiten ausgedruckt. Dann legt man die Blätter wieder ins Papierfach zurück und druckt alle geraden Seiten in absteigender Reihenfolge aus. 

eBook [epub](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.epub) | 
[mobi](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.mobi) | 
[azw3](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.azw3)

[Online-Version](https://htmlpreview.github.io/?https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/toki-pona-lessons_de/index.html) Erscheint der Fehler 404, drücke die Shift-Taste und den Reload-Button des Browsers.  


## Toki Pona - Deutsch Wörterbuch

[Online-Version](https://htmlpreview.github.io/?https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/dictionary.html) 

[Text-Datei](https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/toki-pona_deutsch.txt) für die Software [ding](http://www-user.tu-chemnitz.de/~fri/ding/).

![ding](ding01.png?raw=true "ding")

![ding](ding02.png?raw=true "ding")

![ding](ding03.png?raw=true "ding")


## Source Codes

Die PDF-, HTML-, EBook- und TXT-Dateien werden automatisch aus den Latex-Dateien per [travis-ci.org](https://travis-ci.org/jan-Lope/Toki_Pona_Lektionen_Deutsch) generiert.

Die Latex-Datei und die anderen Dateien sind in [Github](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch) veröffentlicht.  

## Manuelles Generieren

Das manuelle Generieren der PDF- und HTML- und TXT-Dateien kann unter Ubuntu erfolgen. Dazu sind folgende Pakete zu installieren:


    sudo apt-get install texlive texlive-base texlive-latex-base texlive-extra-utils texlive-binaries texlive-extra-utils texlive-font-utils texlive-pictures texlive-pstricks texlive-latex-extra 
    sudo apt-get install latex2html latex-xcolor npm nodejs coffeescript calibre



Lade alle Dateien in ein Verzeichnis und wechsle in diese Verzeichis. Unter Linux (Ubuntu) starte folgendes Script:


    ./make.sh



  
[jan Lope](https://jan-lope.github.io)
