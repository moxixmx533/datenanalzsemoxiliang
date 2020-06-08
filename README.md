# team-Project-data-analysis-

Es gibt insgesamt 16 Excel-Datei, die zur Datenanalyse verwendet werden können.
Über der Datenvorverarbeitung werden folgende Schritte durchgeführt:

1. Zuordnung der Aktivitätsdaten in Maschinendaten anhand Zeittempel. Jede Zeile der Maschinendaten entspricht einen Zeitpunkt.

2. Hier werde Moving-Mean Verfahren(Gleitender Mittelwert) verwendet, um Geräusche zu filtern und Daten glatter nach Zeit zu werden. 
da Matlab schnell und einfach bei diesem Verfahren ist, benutzt man hier direkt Matlab-Funktion.

3. Jetzt kommt es zu die reine Daten, die nur fünf Hauptprozesse(Leeren, Ablassen, Bohren, Verrohrung eindrehen, Ziehen) beschreiben.
wir wollen die Ausreißer für jeden einzelnen Prozess detektieren und bearbeiten, deshalb werden Vier Verfahren für Detektierung der Ausreißer 
eingesetzt: Box-Verfahren; LOF-Verfahren; Isolotion Forest Verfahren; One SVM Verfahren.
Ergebnisse: Box Verfahren hat viele Datenpunkte als Ausreißer behandelt. Bei anderen Verfahren kann man die Proportion der Ausreißer in Gesamtdaten einstellen(hier:0.1).
Nach der Ergebnisse kommt es zu folgende Aussage: 
Box Verfahren ist nicht geeignet für unsere reine Maschinendaten, sie ist meistens für eindimensionale Daten. 
Andere Verfahren sind geeignet für unsere reine Maschinendaten. Sie zeigen verschiedene Ergebnisse. 


