# EXEMPLO DE NOTIFICAÇÃO NO POWERSHELL
# COMO INSTALAR O BURNTTOAST: 
# Start-Process -Verb RunAs powershell.exe -Args "Install-Module -Name BurntToast" 

New-BurntToastNotification -AppLogo digifred.png -Text "$([char]::ConvertFromUtf32(0x2705)) Build Atualizada com Sucesso!"