# Feedback

## Franz Puntigam

Die Arbeit ist zwar irgendwie "brav" gemacht, hinterlässt aber den
Eindruck, recht oberflächlich zu sein. Ein paar Messungen (Laufzeit,
etc.) ist noch keine Diplomarbeit. Was meiner Meinung nach viel zu kurz
kommt ist eine Antwort auf die Frage, welche Besonderheiten beim Parsen
von Konfigurationsdateien auftreten (im Gegensatz zum Parsen von
Programmtexten) und wie sich diese Besonderheiten auswirken. Wie wirkt
sich z.B. der Umgang mit Syntaxfehlern aus? Der erste Teil mit
Umfrageergebnissen möchte auch nicht gut zum Rest der Arbeit passen.
Meiner Meinung nach ist also schon noch viel zu tun.

## Markus Raab

Ich denke (von wie weit ich es bis jetzt gelesen habe), dass du dich nur
ziemlich schlecht verkaufst. Du musst noch viel prominenter schreiben,
was jetzt deine Contributions sind. Diese musst du dann mehrmals in der
Arbeit schreiben (Abstract, Introduction, Conclusion), so dass Sie
unmöglich übersehen werden können. Franz gibt dir schon einen Tipp
welche Contribution du haben könntest: "welche Besonderheiten beim
Parsen von Konfigurationsdateien auftreten". Eine andere Contribution
wäre, dass so viele Techniken in einem gemeinsamen Framework fair
verglichen werden. Und eine andere Contribution, dass du ein Framework
entwickelt hast, mit dem man einfach(er) Support für neue
Konfigurationsformate entwickeln kann. Denke bis Freitag darüber nach,
was deine Contributions sind. Ich sage dir dann wie du das in der Arbeit
gut verkaufen kannst.

Ich denke, es wird nicht so viel zu tun sein. Deine Arbeit ist nämlich
(so weit ich bis jetzt gelesen habe) fast ohne Fehler und gut leserlich.
Mit dem Schreiben von ein paar zusätzlichen Seiten (wo du dich verkaufst
bzw. ein wenig mehr vergleichst) sollte die Arbeit gut werden.

# Fragen/Kommentare

- Weiterer Parser für INI-Files (und Property-Files)? Erstellen eines ANTLR-Templates/Plugins für andere Storage-Formate? Zeiten

Ein eigenes ANTLR-Plugin wäre wahrscheinlich zu restriktiv, da die Zuordnung von Konfigurationsformat zu `Key` und `KeySet` im Allgemeinen nicht eindeutig festlegbar ist.

- Feature: Kommentare erhalten (Yan LR, Zusätzliches Property-File/INI-Plugin)?
- State of the Art: Hinzufügen einer Abschnitts der Parsen von Config-Daten und vollständigen Programmiersprachen vergleicht?
- Syntax-Fehler
- Tipps zum Finden von Papers zu bestimmten Thema?
- Parsing Framework auch für andere Parsergeneratoren/Libraries?
- Allgemeine Frage: `-Wconversion` als Standard-Compiler-Flag sinnvoll?

1. Contributions (alles implementiert, Vergleichsframework)
2. Motivation (Introduction)
3. stärker auf Kontext eingehen (War Stories, Viele Konfigurationsformate), Arbeit abgrenzen
4. Methoden vollständig beschreiben
5. Results und Analyse trennen
6. Kleinigkeiten
7. Umfrage (löschen)