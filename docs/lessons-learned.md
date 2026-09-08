## Was ich durch das Projekt gelernt habe

Durch das Projekt habe ich nicht nur eine Ubuntu-Installation durchgeführt, sondern auch besser verstanden, welche Bereiche bei der Bereitstellung eines Linux-Systems zusammenspielen.

Dazu gehören unter anderem:

* Installation und Grundkonfiguration von Ubuntu
* Netzwerk und IP-Konfiguration
* SSH für die entfernte Administration
* Partitionierung und Storage-Grundlagen
* Paketverwaltung mit APT
* Automatisierung mit Bash
* automatisierte Installation mit Ubuntu Autoinstall
* Konfiguration mit YAML
* Dokumentation mit Markdown
* Versionsverwaltung mit Git und GitHub

Besonders wichtig war für mich zu verstehen, dass viele Aufgaben, die man zuerst manuell ausführt, später automatisiert werden können.

---

## Von manueller Installation zu Automatisierung

Am Anfang des Projekts lag der Fokus auf der normalen Ubuntu-Installation.

Später wurde die Installation durch eine Autoinstall-Konfiguration ergänzt.

Dadurch konnte ich den Unterschied zwischen manueller und automatisierter Bereitstellung besser verstehen.

Zusätzlich wurde ein Postinstall-Skript erstellt, das nach der Installation weitere Aufgaben übernimmt.

Dadurch ergibt sich ungefähr dieser Ablauf:

```text
Ubuntu-ISO
    ↓
Autoinstall-Konfiguration
    ↓
Ubuntu wird installiert
    ↓
Postinstall-Skript
    ↓
Pakete, SSH und Systeminformationen
    ↓
Fertig vorbereitetes System
```

---

## Automatisierung spart Arbeit

Ein wichtiger Punkt aus dem Projekt war zu verstehen, warum Administratoren Skripte und Konfigurationsdateien verwenden.

Bei einem einzelnen System kann man viele Schritte noch manuell durchführen.

Wenn aber mehrere Systeme eingerichtet werden sollen, müsste man dieselben Schritte immer wieder durchführen.

Eine automatisierte Installation sorgt dafür, dass die Systeme möglichst gleich eingerichtet werden.

Das spart Zeit und reduziert Fehler.

---

## Sicherheit bei Automatisierung

Bei automatisierten Installationen können sensible Daten vorkommen.

Zum Beispiel:

* Passwörter
* SSH-Keys
* Tokens
* interne Serverdaten

Deshalb dürfen solche Daten nicht einfach in ein öffentliches GitHub-Repository hochgeladen werden.

In diesem Projekt werden deshalb nur Platzhalter und Beispielwerte verwendet.

---

## Fehleranalyse gehört dazu

Während einer Installation oder Konfiguration können Probleme auftreten.

Zum Beispiel:

* keine Netzwerkverbindung
* falsche IP-Konfiguration
* SSH nicht erreichbar
* Paketinstallation schlägt fehl
* falsches Tastaturlayout
* zu wenig Speicher oder RAM
* Fehler in einer YAML-Datei

Ich habe gelernt, dass es wichtig ist, nicht nur eine Lösung zu finden, sondern auch die Ursache des Problems zu verstehen.

---

## Mögliche spätere Erweiterungen

Das Projekt ist in seinem aktuellen Umfang abgeschlossen.

Später könnte es trotzdem erweitert werden, zum Beispiel mit:

* einer statischen Netzwerkkonfiguration
* erweiterten Storage-Beispielen mit LVM
* automatischer Ausführung des Postinstall-Skripts
* mehreren Autoinstall-Profilen
* Integration in ein größeres Home-Lab
* automatischen Tests der Konfiguration

Diese Punkte sind Erweiterungen und keine Voraussetzung für den aktuellen Projektabschluss.

---

## Fazit

Dieses Projekt hat mir geholfen, Ubuntu-Installation, Linux-Grundlagen und Automatisierung miteinander zu verbinden.

Ich habe verstanden, wie aus einer normalen manuellen Installation Schritt für Schritt eine wiederholbare und teilweise automatisierte Bereitstellung werden kann.

Das Projekt ist gleichzeitig eine Dokumentation meines Lernprozesses und ein praktisches Beispiel für grundlegende Aufgaben in der Linux-Systemadministration.
