<#
    MINHA CONFIGURAÇÃO DO PROMPT DE COMANDO DO POWERSHELL
    DEVE SER COLOCADO NO ARQUIVO Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
#>

function prompt{
    $p = Split-path -leaf -path (Get-Location)
    $promptString = "$([char]::ConvertFromUtf32(0x1F451))" + " $p "
    Write-Host $promptString -NoNewline -ForegroundColor Cyan
    $unicodeChar = "$([char]::ConvertFromUtf32(0x276F))"
    $branch = "$(git rev-parse --abbrev-ref HEAD)" 
    Write-Host " [" -NoNewline -ForegroundColor White
    Write-Host "$branch" -NoNewline -ForegroundColor Magenta
    Write-Host "]" -NoNewline -ForegroundColor White
    Write-Host " $unicodeChar " -NoNewline -ForegroundColor Cyan
    return " "
}