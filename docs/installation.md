# Ubuntu Installation Guide

In diesem Dokument beschreibe ich, wie ich Ubuntu installiert und die ersten Grundeinstellungen gemacht habe.

Das Ziel ist nicht nur die Installation selbst, sondern auch zu verstehen, welche Entscheidungen dabei wichtig sind.

---

## Ziel

Ich möchte ein Ubuntu-System sauber installieren und danach so vorbereiten, dass ich es für weitere Übungen nutzen kann.

Zum Beispiel für:

- Linux-Grundlagen
- SSH
- Benutzer und Rechte
- Netzwerkübungen
- Serverdienste
- spätere Home-Lab-Projekte

---

## Vorbereitung

Vor der Installation sollte klar sein:

- Welche Ubuntu-Version wird genutzt?
- Installiere ich Ubuntu Desktop oder Ubuntu Server?
- Nutze ich eine VM oder echte Hardware?
- Wie viel RAM und Speicher bekommt das System?
- Soll SSH direkt aktiviert werden?
- Nutze ich DHCP oder später eine feste IP-Adresse?

Für eine einfache VM reichen zum Beispiel:

| Ressource | Beispiel |
|---|---|
| CPU | 2 Kerne |
| RAM | 2–4 GB |
| Festplatte | 20–40 GB |
| Netzwerk | NAT oder Bridge |

---

## Installation starten

Die Ubuntu-ISO wird entweder über einen USB-Stick gestartet oder in einer VM eingebunden.

Bei einer VM wähle ich die ISO-Datei als virtuelles Laufwerk aus und starte danach die Maschine.

---

## Sprache und Tastatur

Am Anfang der Installation wähle ich Sprache und Tastaturlayout aus.

Meistens nutze ich:

- Sprache: Deutsch oder Englisch
- Tastatur: Deutsch

Das ist wichtig, damit später Sonderzeichen und Passwörter richtig eingegeben werden können.

---

## Netzwerk

Für den Anfang nutze ich meistens DHCP.

Das bedeutet:

- IP-Adresse wird automatisch vergeben
- DNS wird automatisch gesetzt
- Gateway wird automatisch gesetzt

Für einen Server kann später eine feste IP-Adresse sinnvoller sein, damit man das System immer unter derselben Adresse erreicht.

---

## Partitionierung

Für einfache Testsysteme reicht meistens die automatische Partitionierung.

Wichtige Begriffe:

| Bereich | Bedeutung |
|---|---|
| EFI | Wird für das Booten bei UEFI-Systemen gebraucht |
| / | Das Hauptverzeichnis des Linux-Systems |
| swap | Auslagerungsspeicher |
| /home | Optionaler Bereich für Benutzerdaten |

Bei meinen ersten Installationen nutze ich meistens die automatische Variante, damit ich mich auf das System selbst konzentrieren kann.

---

## Benutzer anlegen

Während der Installation wird ein Benutzer erstellt.

Wichtig dabei:

- Benutzername sauber wählen
- starkes Passwort verwenden
- Passwort nicht in GitHub oder Dokumentationen schreiben
- Adminrechte nur nutzen, wenn man sie wirklich braucht

---

## SSH installieren oder aktivieren

Bei Ubuntu Server kann SSH direkt während der Installation aktiviert werden.

SSH ist wichtig, weil man den Server später von einem anderen Rechner aus verwalten kann.

Nach der Installation kann man SSH so installieren:

```bash
sudo apt update
sudo apt install openssh-server
sudo systemctl enable --now ssh
