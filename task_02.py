# task_02.py
# Skript loeb random.txt faili ja ütleb, mitu korda kasutaja antud laiend failis esineb.
# Vajalik argument käsurealt (nt txt)

import sys

# Kontrollime, kas kasutaja andis laiendi argumendina
if len(sys.argv) < 2:
    print("Palun sisesta otsitav laiend käsureal.")
    print("Näide: python task_02.py txt")
    sys.exit(1)

# Laiendi salvestamine muutujasse
extension = sys.argv[1]

# Faili kontroll
file_name = "random.txt"
try:
    with open(file_name, "r") as f:
        lines = f.read().splitlines()
except FileNotFoundError:
    print(f"Fail '{file_name}' ei leidu. Käivita kõigepealt task_01.py.")
    sys.exit(1)

# Arvutame, mitu korda laiend failis esineb
count = lines.count(extension)

# Tulemuse kuvamine
if count > 0:
    print(f"Laiend '{extension}' esineb {count} korda.")
else:
    print(f"Laiend '{extension}' ei leitud.")