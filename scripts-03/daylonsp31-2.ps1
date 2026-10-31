# Script daylonsp31-2.ps1 - Inicios de sesión con parámetros

# 1. Declarar los parámetros
param(
    [datetime]$inicio,
    [datetime]$fin
)

Write-Output "Buscando inicios de sesion entre $inicio y $fin..."

# 2. Buscar en Seguridad
$eventos = Get-WinEvent -LogName "Security" -MaxEvents 100 | Where-Object {
    $_.Id -eq 4624 -and $_.TimeCreated -ge $inicio -and $_.TimeCreated -le $fin
}

# 3. Mostrar fecha y usuario
foreach ($evento in $eventos) {
    # Extraer el nombre de usuario
    $usuario = $evento.Properties[5].Value

    # Filtrar para ocultar al sistema (SYSTEM) y a los propios equipos
    if ($usuario -ne "SYSTEM" -and $usuario -notlike "*$") {
        Write-Output "Fecha: $($evento.TimeCreated) | Usuario: $usuario"
    }
}