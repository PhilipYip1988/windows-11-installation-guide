<# Test for loop 
run code and check output #>
for($idx=1; $idx -le 3; $idx++)
{
echo "loop index is $idx"
}

<# Validate ISO, update with ISO file name #>
Get-FileHash "Downloads\Win11_24H2_EnglishInternational_x64.iso"

<# Change Directory to User Profile #>
chdir "~"
dir

<# Boot Drivers
Download Dell Command | Deploy WinPE Driver Pack
The WinPE contains Storage and Network Controllers
Update the name of your .CAB file and run #>
expand "Downloads\WinPE11.0-Drivers-A00-5DWN3.CAB" -f:* "Downloads\BootDriversExpanded"
<# Copy the contents of the x64 to Downloads\BootDrivers#>

<#boot.wim
Mount the ISO and go to the sources folder
Copy the boot.wim to Downloads
Right click select Properties and uncheck read only
#>

<# Details about the boot.wim indexes #>

Dism /Get-WimInfo /WimFile:"Downloads\boot.wim"

<# For loop to slipstream the drivers #>

for($idx=1; $idx -le 2; $idx++)
{
    Dism /Mount-WIM /WimFile:"Downloads\boot.wim" /index:$idx /MountDir:"Downloads\BootTemp"
    Dism /Image:"Downloads\BootTemp" /Add-Driver /Driver:"Downloads\BootDrivers" /Recurse
    Dism /Unmount-WIM /MountDir:"Downloads\BootTemp" /Commit
}

<# Install Drivers
Download Dell Command | Deploy Driver Pack
This pack contains All Drivers
Most are Dell Update Packages and run to extract. Older ones may eb CAB files.
Update the name of your .CAB file and run #>
expand "Downloads\WinPE10.0-Drivers-A25-F0XPX.CAB" -f:* "Downloads\InstallDriversExpanded"
<# Copy the contents of the x64 to Downloads\InstallDrivers#>

<#install.wim
Mount the ISO and go to the sources folder
Copy the boot.wim to Downloads
Right click select Properties and uncheck read only
#>

<# Details about install.wim indexes. #>

Dism /Get-WimInfo /WimFile:"Downloads\install.wim"

<# For loop to slipstream the drivers to a single index, update $idx to the index for desired edition. #>

$idx = 6
for($dummyvar=1; $dummyvar -le 1; $dummyvar++)
{
    Dism /Mount-WIM /WimFile:"Downloads\install.wim" /index:$idx /MountDir:"Downloads\InstallTemp"
    Dism /Image:"Downloads\InstallTemp" /Add-Driver /Driver:"Downloads\InstallDrivers" /Recurse
    Dism /Unmount-WIM /MountDir:"Downloads\InstallTemp" /Commit
}

<#
Download the latest 
Cumulative Update for Windows 11 for x64-based Systems
Cumulative Update for .NET Framework 3.5 and 4.8.1 for Windows 11 for x64-based Systems
https://www.catalog.update.microsoft.com/Search.aspx?q=cumulative%20update%20for%2023h2%20x64 
Copy the latest updates to Downloads\InstallUpdates 
Modify and add the line below to the for loop before unmounting the install.wim.
#>

Dism /Image:"Downloads\InstallTemp" /Add-Package /PackagePath="Downloads\InstallUpdates\windows11.0-kb5032190-x64_fdbd38c60e7ef2c6adab4bf5b508e751ccfbd525.msu" /PackagePath="Downloads\InstallUpdates\windows11.0-kb5032006-x64-ndp481_298da3126424149e3c1f488e964507ed1e7b2505.msu"

<# For loop to slipstream the drivers to all indexes. This may take a long time to run. #>

for($idx=1; $idx -le 11; $idx++)
{
    Dism /Mount-WIM /WimFile:"Downloads\install.wim" /index:$idx /MountDir:"Downloads\InstallTemp"
    Dism /Image:"Downloads\InstallTemp" /Add-Driver /Driver:"Downloads\InstallDrivers" /Recurse
    Dism /Unmount-WIM /MountDir:"Downloads\InstallTemp" /Commit
}

<# Partition a USB Flash Drive to create:
A FAT32 BOOT Partition (required for the USB to show as a BOOT Device on the UEFI Boot Menu for some systems)
A NTFS Install Partition #>
diskpart
<# Run each diskpart command individually in the PowerShell Terminal#>
list disk
<# change to disk number of USB Flash Drive #>
select disk 1
convert GPT
clean
<# create partitions #>
create partition primary size=1024
create partition primary
list partition
select Partition 1
format fs="FAT32" quick label="BOOT"
assign letter="H"
select Partition 2
format fs="NTFS" quick label="INSTALL"
assign letter="I"
exit

<# Creating an ISO File
Copy the ISO to Downloads\InstallationMedia
Replace Downloads\InstallationMedia\sources\boot.wim with updated version
Replace Downloads\InstallationMedia\sources\install.wim with updated version

Open newiso.ps1, follow the instructions and run the script #>

<# Run either, the first uses a more sensible title, the second uses the original #>
New-ISOFile -source "Downloads\InstallationMedia" -destinationIso "Downloads\Win11_24H2_EnglishInternational_x64_Drivers.iso" -bootFile "Downloads\InstallationMedia\efi\microsoft\boot\efisys.bin" -title "Win11_23H2_EnglishUK"
New-ISOFile -source "Downloads\InstallationMedia" -destinationIso "Downloads\Win11_24H2_EnglishInternational_x64_Drivers.iso" -bootFile "Downloads\InstallationMedia\efi\microsoft\boot\efisys.bin" -title "CCCOMA_X64FRE_EN-GB_DV9"
