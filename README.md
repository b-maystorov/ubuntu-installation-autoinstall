# Ubuntu Installation & Autoinstall

Ein praxisorientiertes Linux-Systemadministrationsprojekt zur Installation, Konfiguration und Automatisierung von Ubuntu-Systemen.

Das Projekt dokumentiert sowohl eine klassische Ubuntu-Installation als auch die grundlegende Automatisierung einer Ubuntu-Server-Installation mit einer Autoinstall-Konfiguration. Zusätzlich enthält das Repository ein Bash-Postinstallationsskript, mit dem typische Konfigurationsschritte nach der Installation automatisiert werden können.

Das Repository wurde als Lern- und Portfolio-Projekt im Rahmen der Ausbildung zum **Fachinformatiker für Systemintegration (FISI)** erstellt.

---

## Projektziel

Das Ziel des Projekts war es, den gesamten Ablauf einer Linux-Systeminstallation besser zu verstehen und erste Schritte in Richtung automatisierter Systembereitstellung zu machen.

Dabei wurden unter anderem folgende Themen behandelt:

* Ubuntu installieren und grundlegend konfigurieren
* Ubuntu Server Autoinstall verwenden
* Automatisierung mit Bash
* Paketverwaltung mit APT
* Benutzer- und Berechtigungskonzepte
* SSH einrichten
* Grundlagen der Linux-Netzwerkkonfiguration
* Partitionierung und Speicherverwaltung
* Dienste mit `systemd` verwalten
* Dokumentation mit Markdown
* Versionsverwaltung mit Git und GitHub

---

## Funktionsweise des Projekts

Das Projekt besteht hauptsächlich aus zwei Bereichen.

### 1. Ubuntu Autoinstall

Die Datei

```text
configs/autoinstall-example.yaml
```

enthält eine beispielhafte Ubuntu-Autoinstall-Konfiguration.

Darüber können unter anderem folgende Einstellungen automatisch festgelegt werden:

* Sprache und Locale
* Tastaturlayout
* Zeitzone
* Hostname
* Benutzerkonto
* SSH-Konfiguration
* Speicherlayout
* zu installierende Pakete
* Sicherheitsupdates
* Befehle am Ende der Installation
* automatischer Neustart

Die Datei dient als Lernbeispiel und verwendet Platzhalter für sensible Daten wie Passwörter oder SSH-Schlüssel.

---

### 2. Bash-Postinstallationsskript

Die Datei

```text
scripts/postinstall-example.sh
```

zeigt, wie typische Aufgaben nach einer Ubuntu-Installation mit Bash automatisiert werden können.

Das Skript führt unter anderem folgende Schritte aus:

1. APT-Paketquellen aktualisieren
2. installierte Pakete aktualisieren
3. wichtige Administrationswerkzeuge installieren
4. den OpenSSH-Server installieren
5. den SSH-Dienst aktivieren und starten
6. Netzwerkinformationen anzeigen
7. Festplattenbelegung anzeigen
8. Arbeitsspeichernutzung anzeigen

Beispiel:

```bash
sudo apt update
sudo apt upgrade -y
```

Anstatt diese Schritte bei jedem neuen System einzeln auszuführen, können sie über ein Skript automatisch und einheitlich durchgeführt werden.

---

## Repository-Struktur

```text
ubuntu-installation-autoinstall/
│
├── configs/
│   └── autoinstall-example.yaml
│
├── scripts/
│   └── postinstall-example.sh
│
├── docs/
│   ├── autoinstall.md
│   ├── installation.md
│   ├── lessons-learned.md
│   ├── network.md
│   └── partitioning.md
│
├── screenshots/
│
├── .gitignore
└── README.md
```

---

## Verwendete Technologien

| Bereich                     | Technologie                    |
| --------------------------- | ------------------------------ |
| Betriebssystem              | Ubuntu / Ubuntu Server         |
| Automatisierung             | Bash                           |
| Automatisierte Installation | Ubuntu Autoinstall / YAML      |
| Paketverwaltung             | APT                            |
| Remote-Zugriff              | SSH                            |
| Dienstverwaltung            | systemd / systemctl            |
| Netzwerk                    | Linux-Netzwerkwerkzeuge        |
| Virtualisierung             | QEMU/KVM / virtuelle Maschinen |
| Dokumentation               | Markdown                       |
| Versionsverwaltung          | Git / GitHub                   |

---

## Dokumentation

Weitere Erklärungen befinden sich im Ordner `docs/`.

### Installation

`docs/installation.md`

Dokumentiert den Installationsablauf und wichtige Entscheidungen während der Einrichtung.

### Autoinstall

`docs/autoinstall.md`

Erklärt das Ubuntu-Autoinstall-Konzept und die verwendete YAML-Konfiguration.

### Partitionierung

`docs/partitioning.md`

Behandelt die Speicher- und Partitionierungskonzepte des Projekts.

### Netzwerk

`docs/network.md`

Dokumentiert wichtige Grundlagen der Linux-Netzwerkkonfiguration.

### Lessons Learned

`docs/lessons-learned.md`

Fasst die wichtigsten Erkenntnisse aus dem Projekt zusammen.

---

## Sicherheitshinweis

Die Autoinstall-Datei in diesem Repository ist nur ein Beispiel.

Echte Passwörter, private SSH-Schlüssel oder andere sensible Daten sollten niemals in einem öffentlichen GitHub-Repository gespeichert werden.

Deshalb werden in der Beispielkonfiguration Platzhalter verwendet, die vor einem echten Einsatz ersetzt werden müssten.

---

## Was ich durch das Projekt gelernt habe

Durch dieses Projekt habe ich gelernt, wie eine Linux-Installation Schritt für Schritt von einer manuellen Einrichtung zu einer teilweise automatisierten Bereitstellung weiterentwickelt werden kann.

Dabei wurde mir besonders klar, dass Systemadministration nicht nur daraus besteht, einzelne Linux-Befehle zu kennen. Man muss auch verstehen, wie Installation, Konfiguration, Netzwerk, Sicherheit, Dienste und Automatisierung zusammenarbeiten.

Das Repository dient deshalb sowohl als praktisches Linux-Projekt als auch als Dokumentation meines Lernfortschritts.
