<#
.SYNOPSIS
    Script nombresp31-3.ps1 - Menú de registros de eventos
#>

$ejecutando = 1

while ($ejecutando -eq 1) {
    Write-Output "========================================"
    Write-Output "       MENU DE REGISTROS DE EVENTOS     "
    Write-Output "========================================"
    Write-Output "1. Ver registro de Aplicacion (Application)"
    Write-Output "2. Ver registro de Sistema (System)"
    Write-Output "0. Salir"
    Write-Output "========================================"

    # Pedir la opción al usuario de forma interactiva
    $opcion = Read-Host "Introduce una opcion"

    if ($opcion -eq "0") {
        Write-Output "Saliendo del programa..."
        $ejecutando = 0
    }
    elseif ($opcion -eq "1") {
        Write-Output "--- Mostrando total y ultimos 12 eventos de Application ---"
        $logInfo = Get-WinEvent -ListLog "Application"
        Write-Output "Total de eventos: $($logInfo.RecordCount)"
        Get-WinEvent -LogName "Application" -MaxEvents 12
        Read-Host "`nPresiona ENTER para continuar"
    }
    elseif ($opcion -eq "2") {
        Write-Output "--- Mostrando total y ultimos 12 eventos de System ---"
        $logInfo = Get-WinEvent -ListLog "System"
        Write-Output "Total de eventos: $($logInfo.RecordCount)"
        Get-WinEvent -LogName "System" -MaxEvents 12
        Read-Host "`nPresiona ENTER para continuar"
    }
    else {
        # Aviso de opción no válida (requisito del ejercicio)
        Write-Output "¡Opcion no valida! Por favor, introduzca una opcion correcta."
        Start-Sleep -Seconds 2
    }
    Write-Output "`n"
}