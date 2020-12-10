<#
CAPACIDADE DE MEMÓRIA RAM DO COMPUTADOR EM GB
#>

Write-Host "----------------"
Write-Host "RAM memory in Gb"
Write-Host "----------------"
(Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum).sum /1gb