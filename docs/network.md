# Netzwerk Grundlagen

In diesem Dokument beschreibe ich die wichtigsten Netzwerkpunkte, die bei einer Ubuntu-Installation oder bei einem Ubuntu-Server wichtig sind.

Das Ziel ist, zu verstehen, wie das System eine IP-Adresse bekommt und wie man die Verbindung prüft.

---

## Warum Netzwerk wichtig ist

Ein Ubuntu-System braucht Netzwerkzugriff für viele Aufgaben:

- Updates herunterladen
- Pakete installieren
- SSH-Verbindung nutzen
- Serverdienste bereitstellen
- Verbindung zu anderen Geräten testen

Besonders bei Servern ist Netzwerk ein wichtiges Thema, weil man sie oft remote verwaltet.

---

## DHCP

DHCP bedeutet, dass das System automatisch eine IP-Adresse bekommt.

Dabei werden meistens auch diese Daten automatisch gesetzt:

- IP-Adresse
- Subnetzmaske
- Gateway
- DNS-Server

Für einfache Installationen und VMs ist DHCP meistens die beste Wahl.

Vorteile:

- schnell eingerichtet
- weniger Fehler
- gut für erste Tests

---

## Statische IP-Adresse

Eine statische IP-Adresse wird manuell festgelegt.

Das ist bei Servern oft sinnvoll, weil der Server immer unter derselben Adresse erreichbar sein soll.

Beispiel:

```text
IP-Adresse: 192.168.1.50
Subnetz:    255.255.255.0
Gateway:    192.168.1.1
DNS:        1.1.1.1 oder 8.8.8.8
