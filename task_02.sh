#!/bin/bash

# Kontrollime, kas kasutaja andis laiendi argumendina
if [ -z "$1" ]; then
    echo "Palun sisesta otsitav laiend käsureal."
    echo "Näide: ./task_02.sh txt"
    exit 1
fi

# Laiendi salvestamine muutujasse
extension="$1"

# Faili kontroll
file="random.txt"
if [ ! -f "$file" ]; then
    echo "Fail '$file' ei leidu. Käivita kõigepealt task_01.sh."
    exit 1
fi

# Arvutame, mitu korda laiend failis esineb
count=$(grep -c -w "$extension" "$file")

# Tulemuse kuvamine
if [ "$count" -gt 0 ]; then
    echo "Laiend '$extension' esineb $count korda."
else
    echo "Laiend '$extension' ei leitud."
fi
