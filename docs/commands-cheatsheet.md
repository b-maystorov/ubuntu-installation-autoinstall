# Linux Commands Cheat Sheet

Diese Datei enthält die wichtigsten Befehle aus diesem Projekt als kurze Übersicht.

---

## Paketverwaltung

```bash
sudo apt update
```

Aktualisiert die Paketlisten.

```bash
sudo apt upgrade -y
```

Installiert verfügbare Updates automatisch.

```bash
sudo apt install paketname
```

Installiert ein Paket.

Beispiel:

```bash
sudo apt install git
```

---

## Dienste

```bash
systemctl status ssh
```

Zeigt den Status des SSH-Dienstes.

```bash
sudo systemctl start ssh
```

Startet den SSH-Dienst.

```bash
sudo systemctl stop ssh
```

Stoppt den SSH-Dienst.

```bash
sudo systemctl restart ssh
```

Startet den SSH-Dienst neu.

```bash
sudo systemctl enable ssh
```

Aktiviert den automatischen Start beim Booten.

```bash
sudo systemctl enable --now ssh
```

Aktiviert SSH beim Booten und startet den Dienst sofort.

---

## Netzwerk

```bash
ip a
```

Zeigt Netzwerkinterfaces und IP-Adressen.

```bash
ip route
```

Zeigt die Routing-Tabelle.

```bash
ping 8.8.8.8
```

Testet die Netzwerkverbindung zu einer IP-Adresse.

```bash
ping google.com
```

Testet Netzwerk und DNS-Auflösung.

---

## Speicher

```bash
df -h
```

Zeigt die Festplattenbelegung.

```bash
free -h
```

Zeigt die RAM-Nutzung.

---

## Systeminformationen

```bash
hostname
```

Zeigt den Hostnamen.

```bash
whoami
```

Zeigt den aktuell angemeldeten Benutzer.

```bash
uname -a
```

Zeigt Informationen über Kernel und System.

---

## Dateien und Verzeichnisse

```bash
pwd
```

Zeigt das aktuelle Verzeichnis.

```bash
ls
```

Zeigt Dateien und Ordner.

```bash
ls -la
```

Zeigt auch versteckte Dateien und weitere Details.

```bash
cd ordnername
```

Wechselt in ein Verzeichnis.

---

## Bash-Skripte

```bash
chmod +x script.sh
```

Macht ein Skript ausführbar.

```bash
./script.sh
```

Führt ein ausführbares Skript aus dem aktuellen Verzeichnis aus.

```bash
bash script.sh
```

Führt ein Skript direkt mit Bash aus.

---

## Git

```bash
git status
```

Zeigt den aktuellen Stand des Repositories.

```bash
git add .
```

Fügt alle Änderungen zum Staging-Bereich hinzu.

```bash
git commit -m "Nachricht"
```

Erstellt einen Commit.

```bash
git push
```

Überträgt die Commits zu GitHub.

---

## Kurz merken

```text
apt        → Pakete
systemctl  → Dienste
ip         → Netzwerk
df         → Festplatte
free       → RAM
chmod      → Berechtigungen
git        → Versionsverwaltung
```
