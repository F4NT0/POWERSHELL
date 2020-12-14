Write-Host "--------------"
Write-Host "Emoji de Check"
Write-Host "--------------"
Write-Host "$([char]::ConvertFromUtf32(0x2705)) OK"
Write-Host "--------------"
Write-Host "Emoji de Error"
Write-Host "--------------"
Write-Host "$([char]::ConvertFromUtf32(0x274C)) ERROR"
Write-Host "--------------------"
Write-Host "Outros Emojis Soltos"
Write-Host "--------------------"
[char]::ConvertFromUtf32(0x1F60A)
[char]::ConvertFromUtf32(0x1F610)
[char]::ConvertFromUtf32(0x1F615)
[char]::ConvertFromUtf32(0x1F44D)
[char]::ConvertFromUtf32(0x1F44E)
[char]::ConvertFromUtf32(0x1F451)


