# task_02.ps1
# Skript loeb random.txt faili ja ütleb, mitu korda kasutaja antud laiend failis esineb

param (
    [string]$extension
)

# Kontrollime, kas kasutaja andis laiendi argumendina
if (-Not $extension) {
    Write-Output "Palun sisesta otsitav laiend käsureal."
    Write-Output "Näide: .\task_02.ps1 txt"
    exit
}

$file_name = "random.txt"

# Faili kontroll
if (-Not (Test-Path $file_name)) {
    Write-Output "Fail '$file_name' ei leidu. Käivita kõigepealt task_01.ps1."
    exit
}

# Loeme faili read
$lines = Get-Content $file_name

# Arvutame, mitu korda laiend failis esineb
$count = ($lines | Where-Object { $_ -eq $extension }).Count

# Tulemuse kuvamine
if ($count -gt 0) {
    Write-Output "Laiend '$extension' esineb $count korda."
} else {
    Write-Output "Laiend '$extension' ei leitud."
}