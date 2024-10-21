<!--
  Description: Toki Pona, Das Ziel der von Sonja Lang (2001) künstlich geschaffene Sprache ist der Minimalismus. 
  -->

[English](https://jan-lope.github.io/Toki_Pona_lessons_English/)

# Toki Pona - Lektionen und Wörterbuch 

Das Ziel der von Sonja Lang (2001) künstlich geschaffenen Sprache toki pona ist der Minimalismus. toki pona besteht aus nur etwa 120 Wörtern, die in ihrer Form auch nicht verändert werden. 

Diese Lektionen (Erstausgabe 2004) basieren auf den Lektionen (2003) von jan Pije ( [tokipona.net/tp/janpije](http://tokipona.net/tp/janpije/) ) und dem offiziellen Toki Pona Buch (first English edition 2014) von Sonja Lang ( [tokipona.org](http://tokipona.org) ).  


## Lektionen 

Diese Lektionen können in unterschiedlichen Formaten herunter geladen werden. 
Erscheint der Fehler 404, drücke die Shift-Taste und den Reload-Button des Browsers. 

[pdf (A4)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.pdf) | 
[pdf (letter)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de-letter.pdf) 


[pdf (booklet A5)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de-booklet.pdf) | 
[pdf (booklet letter)](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de-booklet-letter.pdf) 
Bei der Booklet-Version werden jeweils zwei Seiten auf eine A4/Letter-Seite abgebildet, so dass ein daraus ein Booklet erstellt werden kann. Dazu werden erst alle ungeraden Seiten ausgedruckt. Dann legt man die Blätter wieder ins Papierfach zurück und druckt alle geraden Seiten in absteigender Reihenfolge aus. 


eBook [epub](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.epub) | 
[mobi](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.mobi) | 
[azw3](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona-lessons_de.azw3)

[Online-Version](https://htmlpreview.github.io/?https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/toki-pona-lessons_de/index.html) Erscheint der Fehler 404, drücke die Shift-Taste und den Reload-Button des Browsers.  


## Liste der offiziellen Toki Pona Wörter

[txt](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/nimi_pi_toki_pona.txt)  | 
[csv](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/nimi_pi_toki_pona.csv)  | 
[rtf](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/nimi_pi_toki_pona.rtf)  |
[otm-json](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/nimi_pi_toki_pona.json) 

[dict](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/nimi_pi_toki_pona-dict.dict)  | 
[index](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/nimi_pi_toki_pona-dict.index) 
DICT Dateiformat

[unix man page](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/raw/gh-pages/toki-pona.6.gz) 
Unix, Linux und Mac OS X: sudo cp toki-pona.6* /usr/share/man/man6/ ; man toki-pona


## Toki Pona - Deutsch Wörterbuch

[Online-Version](https://htmlpreview.github.io/?https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/dictionary.html) 

[csv](https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/toki-pona_deutsch.csv) 

[otm-json](https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/toki-pona-lessons_de.json) 

[txt](https://raw.githubusercontent.com/jan-Lope/Toki_Pona_Lektionen_Deutsch/gh-pages/toki-pona_deutsch.txt) für die Software [ding](http://www-user.tu-chemnitz.de/~fri/ding/).

![ding](ding01.png?raw=true "ding")



## Source Codes

Die PDF-, HTML-, EBook- und TXT-Dateien werden automatisch aus den Latex-Dateien per [travis-ci.org](https://travis-ci.org/jan-Lope/Toki_Pona_Lektionen_Deutsch) generiert.

Die Latex-Datei und die anderen Dateien sind in [Github](https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch) veröffentlicht.  

Mit dem Git-Client holte man sich die Quellen.

	git clone https://github.com/jan-Lope/Toki_Pona_Lektionen_Deutsch.git
	

## Manuelles Generieren

Das manuelle Generieren der Dateien kann unter Ubuntu erfolgen. Dazu sind folgende Pakete zu installieren:


    sudo apt-get install texlive texlive-base texlive-latex-base texlive-extra-utils texlive-binaries texlive-extra-utils texlive-font-utils texlive-pictures texlive-pstricks texlive-latex-extra 
    sudo apt-get install latex2html latex-xcolor npm nodejs coffeescript calibre latex2rtf dictfmt



Lade alle Dateien in ein Verzeichnis und wechsle in diese Verzeichis. Unter Linux (Ubuntu) starte folgendes Script:


    ./make.sh


# Meine Ideen

## Niveaus künstlicher Sprachen

Ich denke, dass es mehrere Niveaus künstlicher Sprachen gibt. Diese Niveaus hängen von der Anzahl aktiver Sprecher, dem Niveau der Sprecher, der Anzahl guter Lehrer und der Anzahl guter Texte ab.

### 1. Ebene

Die Sprache ist unbekannt. Vielleicht diskutieren wenige Leute über diese Sprache. Eine sinnvolle Anwendung dieser Sprache ist nicht möglich. Es gibt keine guten Lehrer und keiner schreibt gute Texte. Die meisten künstlichen Sprachen haben dieses Niveau.

### 2. Ebene

Hunderte bis Tausende Laien diskutieren über die korrekte Anwendung dieser Sprache. Eine sinnvolle Anwendung dieser Sprache ist jedoch nicht möglich. Es gibt keine guten Lehrer und keiner schreibt gute Texte. Ein Beispiel für dieses Niveau ist die „Sprache“ Toki Pona.

### 3. Ebene

Tausende Amateure diskutieren über die Vorteile dieser Sprache. Es werden Organisationen gegründet, um die Sprache zu verbreiten. Aber diese Organisationen befassen sich mit mit sich selber. Der Grund ist: Es gibt nicht genügend gute Lehrer und es gibt keine Strategie zur Verbreitung der Sprache. Es gibt einige gute Texte, aber das reicht nicht aus. Die Anzahl guter Redner unzureichend. Man spricht über diese Sprache, aber nicht in dieser Sprache. Gespräche über alltägliche Themen sind nicht üblich. Interlingua hat dieses Niveau.

### 4. Ebene

Hunderttausende Menschen sprechen diese Sprache. Man spricht auch über alltägliche Themen. Es gibt viele Organisationen, die diese Sprache verbreiten möchten. Die Zahl guter Texte und guter Lehrer steigt. Die Sprache hat eine lange Tradition. Ich denke, nur Esperanto hat dieses Niveau.

### 5. Ebene

Die Sprache ist eine normale Sprache geworden. Gute Texte und gute Lehrer gibt es genug. Die Organisationen zur Verbreitung dieser Sprache werden überflüüsig. Man genügend Partner finden, um diese Sprache zu üben. Es entstehen Dialekte dieser Sprache. Sie können diese Sprache in Hotels und Flughäfen in mindestens einem Land verwenden. Ich glaube nicht, dass jemals eine künstliche Sprache dieses Niveau erreichen könnte.

  
[jan Lope](https://jan-lope.github.io)
