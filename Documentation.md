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

# ToDo

1. Contributions (alles implementiert, Vergleichsframework)
2. Motivation (Introduction)
3. stärker auf Kontext eingehen (War Stories, Viele Konfigurationsformate, um 2000: XML), Arbeit abgrenzen
4. Methoden vollständig beschreiben
5. Results und Analyse trennen
6. Kleinigkeiten (Zeiten bei Implementierung)
7. Umfrage (löschen)
8. Struktur von Arbeit beschreiben

# Contributions

- Integration of 4 parsing engines (ANTLR, Bison, YAEP, PEGTL) and YAML library into Elektra parser framework
- Easy addition of additional parsers based on this work
- Benchmark framework to compare YAML based parsers in Elektra
- Addition of plugin to handle directory values in node (leaf) based configuration format

# Differences Config-/Language-Parser

| Area       | Programming Language                  | Configuration Language      |
| ---------- | ------------------------------------- | --------------------------- |
| Comments   | Throw away                            | Should be kept in file      |
| Structure  | Describes data and data manipulation  | Only describes data         |
| Complexity | Medium to High                        | Low to Medium               |
| Updates    | Manually done by programmer           | Manual/Tools (CLI, GUI)     |
| Errors     | - Program does not compile            | - Possibly incorrect config |
|            | - Programmer/Expert                   | - Normal User               |
| Text       | Explicit Markers (usually `"` or `'`) | Explicit Markers/No Markers |

## Documents

- https://stackoverflow.com/questions/648246/at-what-point-does-a-config-file-become-a-programming-language

# Results

## Why ANTLR?

- More support code (direct support for parse tree)
- Grammar supports repetition (unlike Bison)
