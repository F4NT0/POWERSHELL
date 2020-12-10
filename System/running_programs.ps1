<#
TESTE DE VERIFICAÇÃO DE LEITURA DE PROGRAMAS RODANDO NO WINDOWS
#>

Write-Host "-------------------------------------------"
Write-Host "Verificando Programas rodando nesse momento"
Write-Host "-------------------------------------------"
Get-Service | Where-Object {$_.status -eq "running"}