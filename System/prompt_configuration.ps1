<#
    MINHA CONFIGURAÇÃO DO PROMPT DE COMANDO DO POWERSHELL
    DEVE SER COLOCADO NO ARQUIVO Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
#>



function prompt{
    $p = Split-path -leaf -path (Get-Location)
    $promptString = "$([char]::ConvertFromUtf32(0x1F451))" + " $p "
    Write-Host $promptString -NoNewline -ForegroundColor Cyan
    $branch_verification = git rev-parse --git-dir
    $unicodeChar = "$([char]::ConvertFromUtf32(0x276F))"
    
    If($branch_verification -eq '.git'){
        $modifications = (git diff-index --name-status HEAD)
        $branch = "$(git rev-parse --abbrev-ref HEAD)"
        $update_git = "$([regex]::matches($modifications, "M`t").count)"
        $create_git = "$([regex]::matches($modifications, "A`t").count)"
        $delete_git = "$([regex]::matches($modifications, "D`t").count)"    
        Write-Host " [" -NoNewline -ForegroundColor White
        Write-Host $branch + " " -NoNewline -ForegroundColor Magenta
        Write-Host "U:$update_git " -NoNewline -ForegroundColor Yellow
        Write-Host "C:$create_git " -NoNewline -ForegroundColor Green
        Write-Host "D:$delete_git" -NoNewline -ForegroundColor Red
        Write-Host "]" -NoNewline -ForegroundColor White
    }
    Write-Host " $unicodeChar " -NoNewline -ForegroundColor Cyan
    return " "
}