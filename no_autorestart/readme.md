# Stopping Windows From Automatically Restarting

## Power Settings

## Windows Update Settings

## Active Hours

## Extended Active Hours

<details>
<summary>Acknowledgements</summary>

> [PowerShell Script and Solution Provided by Michael 'The Curate' on Microsoft Answers](https://answers.microsoft.com/en-us/windows/forum/all/how-to-disable-windows-11-automatic-reboots/d7766f02-59a1-48f4-af6e-761345704ead)

</details>


```powershell
for /f %%i in ('powershell "((get-date).Hour+18) %% 24"') do set startHour=%%i
for /f %%i in ('powershell "((get-date).Hour+12) %% 24"') do set endHour=%%i
 
reg add HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v ActiveHoursStart /t REG_DWORD /d %startHour% /f 
reg add HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v ActiveHoursEnd /t REG_DWORD /d %endHour% /f 
```


