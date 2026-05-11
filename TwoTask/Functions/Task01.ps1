# task_01.ps1
# Skript valib juhusliku laiendi failist laiendid.txt ja lisab selle random.txt faili

$file_name = "laiendid.txt"

# Kontrollime, kas fail eksisteerib
if (-Not (Test-Path $file_name)) {
    Write-Output "Fail puudub!"
    exit
}

# Loeme kõik laiendid faili
$extensions = Get-Content $file_name

# Valime juhusliku laiendi
$random_index = Get-Random -Maximum $extensions.Count
$random_extension = $extensions[$random_index]

# Lisame random.txt faili
Add-Content -Path "random.txt" -Value $random_extension

Write-Output "Lisatud: $random_extension"