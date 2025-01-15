#!/bin/bash

# Název souboru, do kterého se ukládá výstup
OUTPUT_FILE="ping_traceroute_output.txt"

# Vymaž / vytvoř soubor s úvodní hláškou
echo "=== Ping + Traceroute Script ===" > "$OUTPUT_FILE"
echo "Spouštím ping na rozsah 45.138.106.101–255..." | tee -a "$OUTPUT_FILE"
echo "-------------------------------------------" | tee -a "$OUTPUT_FILE"

# 1) Otestuj dostupnost IP v rozsahu
for i in {101..255}; do
    if ping -c 1 -W 2 45.138.106.$i > /dev/null 2>&1; then
        echo "45.138.106.$i is reachable" | tee -a "$OUTPUT_FILE"
    fi
done

echo "" | tee -a "$OUTPUT_FILE"
echo "Dokončeno. Spouštím traceroute na 45.138.107.255..." | tee -a "$OUTPUT_FILE"
echo "-------------------------------------------" | tee -a "$OUTPUT_FILE"

# 2) Spusť traceroute a současně ukládej do souboru
traceroute 45.138.107.255 2>&1 | tee -a "$OUTPUT_FILE"

echo "" | tee -a "$OUTPUT_FILE"
echo "Hotovo! Výsledek je také uložen v $OUTPUT_FILE" | tee -a "$OUTPUT_FILE"
