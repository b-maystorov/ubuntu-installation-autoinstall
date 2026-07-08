# Autoinstall Grundlagen

In diesem Dokument erkläre ich, was eine Ubuntu-Autoinstall-Datei ist und welche Bereiche in meinem Beispiel wichtig sind.

Die passende Beispiel-Datei liegt hier:

```text
configs/autoinstall-example.yaml
```

---

## Was ist Autoinstall?

Autoinstall bedeutet, dass Ubuntu automatisch installiert werden kann.

Normalerweise klickt man sich Schritt für Schritt durch den Installer. Bei Autoinstall werden viele dieser Schritte vorher in einer YAML-Datei festgelegt.

Zum Beispiel:

- Sprache
- Tastatur
- Zeitzone
- Benutzer
- Hostname
- SSH
- Partitionierung
- Pakete
- Befehle am Ende der Installation

Das ist praktisch, wenn man ein System sauber und wiederholbar installieren möchte.

---

## Wann ist Autoinstall sinnvoll?

Autoinstall ist sinnvoll, wenn mehrere Systeme ähnlich eingerichtet werden sollen.

Beispiele:

- Schulungsrechner
- Testsysteme
- virtuelle Maschinen
- Server im Home Lab
- Systeme, die immer gleich vorbereitet werden sollen

Für einzelne Installationen kann man Ubuntu auch manuell installieren.  
Für wiederholbare Installationen ist Autoinstall aber deutlich sauberer.

---

## Warum YAML?

YAML ist ein Format für Konfigurationsdateien.

Es ist gut lesbar und wird oft für Automatisierung genutzt.

Wichtig bei YAML:

- Einrückungen sind wichtig
- Leerzeichen statt Tabs benutzen
- Listen beginnen mit `-`
- Schlüssel und Werte werden mit `:` geschrieben

Beispiel:

```yaml
packages:
  - git
  - curl
  - htop
```

Das bedeutet: Es gibt eine Paketliste mit `git`, `curl` und `htop`.

---

## Hauptstruktur

Die Datei beginnt mit:

```yaml
autoinstall:
  version: 1
```

Das bedeutet, dass es sich um eine Autoinstall-Konfiguration handelt.

`version: 1` gibt die Version des Autoinstall-Formats an.

Alles, was zur automatischen Installation gehört, steht eingerückt unter `autoinstall`.

---

## Sprache und Tastatur

```yaml
locale: de_DE.UTF-8
keyboard:
  layout: de
```

Damit wird das System auf deutsche Spracheinstellungen und deutsches Tastaturlayout vorbereitet.

Das ist wichtig, damit Sonderzeichen und Passwörter später richtig eingegeben werden können.

---

## Zeitzone

```yaml
timezone: Europe/Berlin
```

Damit wird die Zeitzone auf Deutschland gesetzt.

So stimmen Uhrzeit und Datum nach der Installation.

---

## Benutzer und Hostname

```yaml
identity:
  hostname: ubuntu-lab
  username: ubuntuadmin
  password: "$6$REPLACE_WITH_REAL_HASHED_PASSWORD"
```

Hier werden Hostname und Benutzer festgelegt.

Der Hostname ist der Name des Systems im Netzwerk.

Der Benutzername ist der Account, mit dem man sich später anmelden kann.

Wichtig:

Das Passwort darf nicht im Klartext in GitHub gespeichert werden.

Für echte Systeme muss hier ein Passwort-Hash stehen.

---

## SSH

```yaml
ssh:
  install-server: true
  allow-pw: true
  authorized-keys:
    - "ssh-ed25519 REPLACE_WITH_PUBLIC_SSH_KEY user@example"
```

Dieser Bereich installiert SSH.

SSH wird genutzt, um den Server später über das Netzwerk zu verwalten.

In diesem Beispiel ist der SSH-Key nur ein Platzhalter.

Für echte Systeme müsste hier ein echter öffentlicher SSH-Key eingetragen werden.

---

## Storage

```yaml
storage:
  layout:
    name: direct
```

Dieser Bereich beschreibt die Festplattenaufteilung.

`direct` steht hier für eine einfache automatische Aufteilung.

Für ein erstes Beispiel ist das gut, weil die Konfiguration dadurch übersichtlich bleibt.

Bei echten Servern sollte man vorher genau überlegen, ob man einfache Partitionierung, LVM oder eine andere Aufteilung nutzen möchte.

---

## Pakete

```yaml
packages:
  - openssh-server
  - curl
  - wget
  - git
  - vim
  - htop
  - net-tools
```

Diese Pakete werden während der Installation mitinstalliert.

Sie sind praktisch für erste Serverarbeiten.

Kurz erklärt:

| Paket | Zweck |
|---|---|
| openssh-server | SSH-Zugriff auf den Server |
| curl | Daten von URLs abrufen |
| wget | Dateien aus dem Internet herunterladen |
| git | Repositories klonen und verwalten |
| vim | Textdateien im Terminal bearbeiten |
| htop | Prozesse und Systemlast anzeigen |
| net-tools | ältere Netzwerktools wie ifconfig |

---

## Updates

```yaml
updates: security
```

Damit werden Sicherheitsupdates während der Installation berücksichtigt.

Das ist sinnvoll, weil das System direkt mit wichtigen Sicherheitsupdates installiert wird.

---

## Late Commands

```yaml
late-commands:
  - curtin in-target --target=/target -- systemctl enable ssh
  - curtin in-target --target=/target -- apt-get update
```

Late Commands sind Befehle, die am Ende der Installation ausgeführt werden.

In diesem Beispiel wird SSH aktiviert und die Paketliste aktualisiert.

`curtin in-target` bedeutet, dass der Befehl im neu installierten System ausgeführt wird und nicht nur im Installer.

---

## Unterschied zum Postinstall-Skript

Die Autoinstall-Datei wird während der Installation genutzt.

Das Postinstall-Skript wird erst nach der Installation ausgeführt.

| Datei | Zeitpunkt | Aufgabe |
|---|---|---|
| autoinstall-example.yaml | während der Installation | Ubuntu automatisch installieren und Grundeinstellungen setzen |
| postinstall-example.sh | nach der Installation | System aktualisieren, Pakete installieren und Dienste prüfen |

Beide Dateien können zusammen genutzt werden.

Die YAML-Datei bereitet das System vor.  
Das Skript macht danach weitere Schritte.

---

## Was vor echter Nutzung angepasst werden muss

Vor einer echten Installation müssten diese Werte angepasst werden:

- Hostname
- Benutzername
- Passwort-Hash
- öffentlicher SSH-Key
- Storage-Layout
- Paketliste
- Netzwerk-Einstellungen

Besonders wichtig:

Die Datei sollte zuerst in einer VM getestet werden, bevor man sie auf echter Hardware nutzt.

---

## Sicherheitshinweis

Diese Datei ist nur ein Beispiel.

Ich speichere keine echten Passwörter, privaten SSH-Keys oder sensiblen Daten in GitHub.

Nicht auf GitHub speichern:

- echte Passwörter
- private SSH-Keys
- API-Keys
- geheime Tokens
- interne Firmendaten

Platzhalter sind okay, echte Zugangsdaten nicht.

---

## Was ich gelernt habe

Durch diese Datei verstehe ich besser:

- wie Ubuntu-Autoinstall grundsätzlich aufgebaut ist
- warum YAML-Einrückungen wichtig sind
- wie Benutzer, SSH, Pakete und Storage konfiguriert werden
- warum man keine echten Passwörter in GitHub speichern darf
- wie Automatisierung bei Linux-Installationen helfen kann

---

## Fazit

Autoinstall ist ein guter Einstieg in Linux-Automatisierung.

Man lernt nicht nur die Ubuntu-Installation besser kennen, sondern auch, wie Systeme wiederholbar und sauber vorbereitet werden können.
