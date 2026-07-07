# Partitionierung Grundlagen

In diesem Dokument erkläre ich die wichtigsten Grundlagen zur Partitionierung bei einer Ubuntu-Installation.

Partitionierung bedeutet, dass eine Festplatte oder virtuelle Festplatte in verschiedene Bereiche aufgeteilt wird. Jeder Bereich hat eine bestimmte Aufgabe.

---

## Warum Partitionierung wichtig ist

Bei einer Ubuntu-Installation braucht das System Speicherplatz für verschiedene Dinge:

- Boot-Dateien
- das Linux-System selbst
- Benutzerdaten
- eventuell Swap-Speicher

Für einfache Testsysteme oder virtuelle Maschinen reicht meistens die automatische Partitionierung.

Bei Servern oder echten Systemen ist es aber wichtig zu verstehen, was der Installer im Hintergrund macht.

---

## Häufige Partitionen

| Partition / Bereich | Aufgabe |
|---|---|
| EFI | Wird für das Starten des Systems bei UEFI gebraucht |
| / | Hauptbereich des Linux-Systems, auch Root-Dateisystem genannt |
| /home | Bereich für Benutzerdaten |
| swap | Auslagerungsspeicher auf der Festplatte |
| /boot | Bereich für Boot-Dateien, manchmal separat |

---

## EFI-Partition

Die EFI-Partition wird bei modernen Systemen mit UEFI verwendet.

Sie enthält wichtige Boot-Dateien, damit der Computer das Betriebssystem starten kann.

Ohne eine korrekt eingerichtete EFI-Partition kann es passieren, dass das System nicht startet.

Typische Größe:

```text
512 MB
