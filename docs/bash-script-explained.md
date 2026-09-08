# Bash-Postinstall-Skript erklärt

In diesem Dokument erkläre ich das Bash-Skript aus diesem Projekt.

Die Datei befindet sich hier:

```text
scripts/postinstall-example.sh
```

Das Skript wird nach der Ubuntu-Installation ausgeführt und übernimmt einige typische Aufgaben automatisch.

---

## Was ist Bash?

Bash steht für **Bourne Again Shell**.

Es ist eine Shell und gleichzeitig eine Skriptsprache, die auf vielen Linux-Systemen verwendet wird.

Mit Bash können Befehle nicht nur einzeln im Terminal ausgeführt, sondern auch in einer Datei gesammelt und automatisch nacheinander ausgeführt werden.

---

## Shebang

Ein Bash-Skript beginnt häufig mit:

```bash
#!/bin/bash
```

Diese erste Zeile nennt man **Shebang**.

Sie legt fest, mit welchem Interpreter das Skript ausgeführt werden soll.

In diesem Fall wird `/bin/bash` verwendet.

---

## Paketliste aktualisieren

```bash
sudo apt update
```

`apt` ist die Paketverwaltung von Ubuntu und Debian.

`update` lädt die aktuellen Informationen über verfügbare Pakete aus den konfigurierten Paketquellen.

Dabei werden noch keine installierten Programme aktualisiert.

`sudo` führt den Befehl mit Administratorrechten aus.

---

## Installierte Pakete aktualisieren

```bash
sudo apt upgrade -y
```

`upgrade` installiert verfügbare Aktualisierungen für bereits installierte Pakete.

Die Option:

```text
-y
```

beantwortet Rückfragen automatisch mit `yes`.

Dadurch kann das Skript ohne manuelle Bestätigung weiterlaufen.

---

## Pakete installieren

Ein Beispiel:

```bash
sudo apt install -y curl wget git vim htop net-tools openssh-server
```

Mit `apt install` werden neue Pakete installiert.

In diesem Projekt werden unter anderem folgende Werkzeuge verwendet:

| Paket          | Zweck                                  |
| -------------- | -------------------------------------- |
| curl           | Daten über URLs abrufen                |
| wget           | Dateien herunterladen                  |
| git            | Git-Repositories verwalten             |
| vim            | Textdateien im Terminal bearbeiten     |
| htop           | Prozesse und Systemauslastung anzeigen |
| net-tools      | ältere Netzwerkwerkzeuge bereitstellen |
| openssh-server | SSH-Zugriff auf das System ermöglichen |

---

## SSH aktivieren und starten

```bash
sudo systemctl enable --now ssh
```

`systemctl` wird genutzt, um Dienste unter `systemd` zu verwalten.

`enable` bedeutet, dass der SSH-Dienst beim Systemstart automatisch gestartet wird.

`--now` sorgt dafür, dass der Dienst sofort gestartet wird.

`ssh` ist der Name des Dienstes.

---

## Netzwerk anzeigen

```bash
ip a
```

Der Befehl zeigt die Netzwerkinterfaces und ihre IP-Adressen an.

Damit kann geprüft werden, ob das System eine funktionierende Netzwerkkonfiguration besitzt.

---

## Festplattenbelegung anzeigen

```bash
df -h
```

`df` zeigt die Nutzung der eingebundenen Dateisysteme.

Die Option:

```text
-h
```

steht für **human readable**.

Dadurch werden Größen zum Beispiel in MB oder GB angezeigt.

---

## Arbeitsspeicher anzeigen

```bash
free -h
```

`free` zeigt Informationen über den Arbeitsspeicher an.

Auch hier sorgt `-h` für eine besser lesbare Darstellung.

Damit kann geprüft werden, wie viel RAM verwendet und noch verfügbar ist.

---

## Warum ein Postinstall-Skript?

Viele dieser Befehle könnten auch manuell ausgeführt werden.

Ein Skript hat aber mehrere Vorteile:

* gleiche Schritte bei jeder Installation
* weniger manuelle Arbeit
* geringere Fehlergefahr
* schnellere Einrichtung
* bessere Wiederholbarkeit

Gerade bei mehreren Systemen ist Automatisierung deshalb sehr nützlich.

---

## Ablauf des Skripts

Vereinfacht läuft das Skript so ab:

```text
Skript starten
    ↓
Paketlisten aktualisieren
    ↓
System aktualisieren
    ↓
Pakete installieren
    ↓
SSH aktivieren
    ↓
Netzwerk prüfen
    ↓
Festplatte prüfen
    ↓
RAM prüfen
    ↓
Fertig
```

---

## Was ich daraus gelernt habe

Durch das Postinstall-Skript habe ich gelernt:

* wie ein Bash-Skript grundsätzlich aufgebaut ist
* wofür eine Shebang genutzt wird
* wie APT funktioniert
* wie Pakete automatisch installiert werden
* wie Dienste mit systemctl verwaltet werden
* wie SSH aktiviert wird
* wie Netzwerk, Festplatte und RAM geprüft werden
* warum Automatisierung in der Systemadministration wichtig ist
