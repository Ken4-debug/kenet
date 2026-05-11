function Task01 {
    param()

    $fileName = "laiendid.txt"

    if (-Not (Test-Path $fileName)) {
        Write-Output "Fail puudub!"
        return
    }

    $extensions = Get-Content $fileName

    # Lisame juhusliku laiendi random.txt
    $randomExtension = Get-Random $extensions
    Add-Content -Path "random.txt" -Value $randomExtension
    Write-Output "Lisatud: $randomExtension"
}

function Task02 {
    param(
        [string[]]$Extensions
    )

    $fileName = "random.txt"

    if (-Not (Test-Path $fileName)) {
        Write-Output "Fail 'random.txt' ei leidu. Käivita kõigepealt Task01."
        return
    }

    $lines = Get-Content $fileName

    foreach ($ext in $Extensions) {
        $count = ($lines | Where-Object { $_ -eq $ext }).Count
        if ($count -gt 0) {
            Write-Output "Laiend '$ext' esineb $count korda."
        } else {
            Write-Output "Laiend '$ext' ei leitud."
        }
    }
}