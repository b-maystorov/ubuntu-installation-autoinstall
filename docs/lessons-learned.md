# Lessons Learned

In diesem Dokument sammle ich die wichtigsten Dinge, die ich bei der Ubuntu-Installation und der Dokumentation gelernt habe.

---

## Installation ist mehr als nur “Weiter klicken”

Bei einer Ubuntu-Installation geht es nicht nur darum, das System irgendwie zum Laufen zu bringen.

Wichtige Entscheidungen sind zum Beispiel:

- Welche Ubuntu-Version nutze ich?
- Installiere ich Desktop oder Server?
- Wie wird die Festplatte aufgeteilt?
- Wie bekommt das System Netzwerk?
- Soll SSH direkt genutzt werden?
- Welche Benutzer werden angelegt?

Diese Punkte wirken am Anfang klein, sind aber später wichtig für ein sauberes System.

---

## Dokumentation hilft beim Verstehen

Beim Aufschreiben merke ich besser, ob ich ein Thema wirklich verstanden habe.

Wenn ich einen Schritt erklären kann, verstehe ich ihn meistens auch besser.

Deshalb ist GitHub für mich nicht nur zum Hochladen von Code da, sondern auch als Lern- und Dokumentationsplattform.

---

## Netzwerk ist ein wichtiges Grundthema

Ohne Netzwerk funktionieren viele Dinge nicht richtig.

Zum Beispiel:

- Updates
- Paketinstallation
- SSH
- Serverdienste
- Verbindung zu anderen Geräten

Ich habe gelernt, dass DHCP für den Anfang einfach ist, aber feste IP-Adressen bei Servern oft sinnvoller sind.

---

## Partitionierung sollte man nicht ignorieren

Am Anfang ist automatische Partitionierung meistens okay.

Trotzdem sollte man die wichtigsten Begriffe kennen:

- EFI
- Root `/`
- Swap
- `/home`
- LVM

Gerade bei Servern ist es wichtig zu wissen, wie Speicher aufgebaut ist.

---

## SSH ist wichtig für Server

SSH ist wichtig, weil Server oft ohne Bildschirm und Tastatur verwaltet werden.

Mit SSH kann man sich von einem anderen Rechner verbinden und den Server über die Konsole bedienen.

Das ist ein typischer Teil von Systemadministration.

---

## Fehler sind Teil des Lernprozesses

Bei Installationen können viele kleine Probleme auftreten.

Zum Beispiel:

- falscher Netzwerkmodus in der VM
- keine IP-Adresse
- falsches Tastaturlayout
- SSH nicht aktiv
- Bootprobleme
- zu wenig RAM oder Speicher

Wichtig ist, die Fehler nicht nur zu beheben, sondern auch zu verstehen, warum sie passiert sind.

---

## Was ich als Nächstes verbessern möchte

Als Nächstes möchte ich dieses Projekt erweitern mit:

- mehr Screenshots
- einer Beispiel-Konfiguration für Autoinstall
- einem kleinen Post-Install-Skript
- besserer Erklärung von LVM
- Vergleich zwischen NAT und Bridge
- Verbindung zum Home-Lab-Projekt

---

## Fazit

Dieses Projekt hilft mir, Ubuntu-Installation, Linux-Grundlagen und technische Dokumentation besser zu verstehen.

Es ist ein guter erster Schritt, um später größere Themen wie Serverdienste, Virtualisierung, Docker und Home Lab sauber aufzubauen.
