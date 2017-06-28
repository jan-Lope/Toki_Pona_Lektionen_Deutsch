# Toki Pona - Lektionen auf Deutsch
Das Ziel der von Sonja Lang (2001) künstlich geschaffene Sprache toki pona ist der Minimalismus. toki pona besteht aus nur etwa 120 Wörtern, die in ihrer Form auch nicht verändert werden. 


## Generierte PDF- und HTML-Dateien

[toki-pona-lessons_de.pdf](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/blob/gh-pages/toki-pona-lessons_de.pdf)  
Generiertes Buch (A4)  

[toki-pona-lessons_de-booklet.pdf](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/blob/gh-pages/toki-pona-lessons_de-booklet.pdf)  
Generieretes Booklet (A5). Bei der Booklet-Version werden jeweils zwei Seiten auf eine A4-Seite abgebildet, so dass ein daraus ein Booklet (A5) erstellt werden kann. Dazu werden erst alle ungeraden Seiten ausgedruckt. Dann legt man die Blätter wieder ins Papierfach zurück und druckt alle geraden Seiten in absteigender Reihenfolge aus. 

[toki-pona_deutsch.txt](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/blob/gh-pages/toki-pona_deutsch.txt)  
Generiertes Wörterbuch  
Dieses Wörterbuch kann mit der Software [ding](http://www-user.tu-chemnitz.de/~fri/ding/) verwendet werden.


### Source Codes

Die PDF- und HTML- und TXT-Dateien werden automatisch aus den Latex-Datei per [travis-ci.org](https://travis-ci.org/jan-Lope/Toki_Pona_Lektionen_Deutsch) generiert.

Die Latex-Datei und die anderen Dateien sind in [Github](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch) veröffentlicht.  


### Manuelles Generieren

Das manuelle Generieren der PDF- und HTML- und TXT-Dateien kann unter Ubuntu erfolgen. Dazu sind folgende Pakete zu installieren:


    sudo apt-get install texlive texlive-base texlive-latex-base texlive-extra-utils texlive-binaries texlive-extra-utils texlive-font-utils texlive-pictures texlive-pstricks texlive-latex-extra 
    sudo apt-get install latex2html latex-xcolor


Lade alle Dateien in ein Verzeichnis und wechsle in diese Verzeichis. Unter Linux (Ubuntu) starte folgendes Script:


    ./make_booklet.sh


  
[jan Lope](https://jan-lope.github.io)
