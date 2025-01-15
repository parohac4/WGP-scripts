Ping + Traceroute Script
=====================================

Tento skript slouží k otestování dostupnosti IP adres WGP https://wedos.global v rozsahu 45.138.106.101-255 a provedení traceroute na cílovou IP adresu 45.138.107.255.

## Funkce skriptu
1. **Otestování dostupnosti IP** - Skript projde rozsah IP adres 45.138.106.101-255 a otestuje dostupnost každé adresy pomocí příkazu ping. Pokud je adresa dostupná, výsledek se zapíše do souboru ping_traceroute_output.txt.

2. **Traceroute** - Po dokončení otestování dostupnosti IP adres spustí skript příkaz traceroute na cílovou IP adresu 45.138.107.255 a výsledek uloží do stejného souboru.

### Použití
Spusťte skript v terminálu pomocí příkazu bash **nazev_skriptu.sh**.
Výsledek bude uložen v souboru **ping_traceroute_output.txt** ve stejném adresáři.

**Poznámky**

*Skript vyžaduje práva roota k provedení.
Výstupní soubor ping_traceroute_output.txt bude vytvořen nebo přepsán při každém spuštění skriptu.*