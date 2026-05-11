# task_01.py
import random
import sys

file_name = "laiendid.txt"

# Kontrollime, kas fail eksisteerib
try:
    with open(file_name, "r") as f:
        extensions = f.read().splitlines()
except FileNotFoundError:
    print("Fail puudub!")
    sys.exit(1)

# Valime juhusliku laiendi
random_extension = random.choice(extensions)

# Lisame random.txt faili
with open("random.txt", "a") as f:
    f.write(random_extension + "\n")

print(f"Lisatud: {random_extension}")
