# Upgrading from Windows 11 Installation Media

This tutorial will instruct in using Windows Installation Media to Upgrade to the latest Windows 11 Mainstream Build on a supported Dell XPS 8960. The Upgrade Assistant will work on any previous Mainstream Build of Windows 10 or WIndows 11.

## Gathering System Information

Right click the Start Button and select *System*:

<img src='./images/img_001.png' alt='img_001' width='900'/>

System details such as the Processor and Windows Version will be listed:

<img src='./images/img_002.png' alt='img_002' width='900'/>


For more details press `⊞` and `r` and input:

```
msinfo32
```

<img src='./images/img_003.png' alt='img_003' width='900'/>

The system details will be shown which include:

* System Manufacturer: Dell
* System Model: XPS 8960
* Processor: 13th Generation intel Core i7-13700
* BIOS: 2.6.0
* SMBIOS: 3.4
* BIOS Mode: UEFI
* Secure Boot State: On

<img src='./images/img_004.png' alt='img_004' width='900'/>


<details>
<summary>About BIOS and SMBIOS Version</summary>

> The System Management Basic Input Output System (SMBIOS) version has the form `Major.Minor` and is essentially the motherboards generation describing the technologies at the time of manufacturer and cannot be updated. A Major version of 3 is required for Windows 11.

> The Basic Input Output System (BIOS) has the form `Major.Minor.Patch`, however in general the version numbers are only used for internal development and the latest version should be installed. 

> * Intel have identifier an industry-wide issue with Intel Core 13th and 14th Generation Processors and delivered a microcode update that Dell has incorporated into the latest BIOS Update (August/September 2024). 

> * BIOS Update usually include other fixes which address boot issues with new Operating Systems and protect the firmware from security exploits. A major security hole was found (September 2020) which allowed bypass of Secure Boot and any system with a 6th Generation Processor and later as issued a BIOS Update to address this security issue.

</details>

## Dell Drivers and Downloads

Before updating to the latest mainstream build of Windows 11 it is recommended to Upgrade your Device's System Drivers and to ensure the Device has the latest BIOS Update. Go to [Dell Drivers and Downloads](https://www.dell.com/support/home/en-uk?app=drivers) and select *Download & Install SupportAssist*:

<img src='./images/img_007.png' alt='img_007' width='900'/>

Select *Download*:

<img src='./images/img_008.png' alt='img_008' width='900'/>

Launch the downloaded *SupportAssistLauncher.exe*:

<img src='./images/img_009.png' alt='img_009' width='900'/>

Accept the User Account Control Prompt:

<img src='./images/img_010.png' alt='img_010' width='900'/>

SupportAssist will setup:

<img src='./images/img_011.png' alt='img_011' width='900'/>

It will then identify your product:

<img src='./images/img_012.png' alt='img_012' width='900'/>

Select *Check for Updates*:

<img src='./images/img_013.png' alt='img_013' width='900'/>

Select *Download & Install*:

<img src='./images/img_014.png' alt='img_014' width='900'/>

Some drivers may require a Restart:

<img src='./images/img_015.png' alt='img_015' width='900'/>

Right click the Start Button and select *Shut down or sign out* → *Restart*:

<img src='./images/img_016.png' alt='img_016' width='900'/>

If a BIOS Update has been downloaded it will install when the Device reboots:

<img src='./images/img_017.png' alt='img_017' width='900'/>

## Downloading Installation Media

Windows 11 Installation Media can be downloaded from [Microsoft: Windows 11 Software Download Page](https://www.microsoft.com/en-gb/software-download/windows11):

<img src='./images/img_018.png' alt='img_018' width='900'/>

The first option, the Windows 11 Upgrade Assistant is a Windows Application which is used for an in place upgrade. To use the Windows 11 Upgrade Assistant see the alternative tutorial [Upgrading to the Latest Mainstream Windows 11 Build Using the Windows 11 Upgrade Assistant](../upgrade_assistant/readme.md). Note that the Windows 11 Upgrade Assistant is an Upgrade Route that allows only Supported Devices. 

The second option uses the Windows Media Creation Tool which can be used to Download Setup Files and Create an ISO. The third option (which is preferred and used in this guide) is the direct ISO download. 

<details>
<summary>Notes on Bootable USB</summary>

> This guide will not create a Bootable USB from the ISO as the ISO can be mounted in Window Explorer and used to begin an in place Upgrade. To create a Bootable USB see the tutorials:

> * [Creating a Bootable USB (on Windows)](../bootable_usb_windows/readme.md)
> * [Creating a Bootable USB (on Ubuntu)](../bootable_usb_ubuntu/readme.md)

> If a Bootable USB has been created, the *setup.exe* file on the USB can be used to begin the in place upgrade instead of the *setup.exe* on the mounted ISO.

</details>

Select *Windows 11 (multi-edition ISO for x64)*:

<img src='./images/img_019.png' alt='img_019' width='900'/>

Select *Download Now*:

<img src='./images/img_020.png' alt='img_020' width='900'/>

Select the Language:

<img src='./images/img_021.png' alt='img_021' width='900'/>

Note that for English there are two options:

* English (UK)
* English (USA)

Microsoft refer to English (UK) as English International.

<img src='./images/img_022.png' alt='img_022' width='900'/>

Select *Confirm*:

<img src='./images/img_023.png' alt='img_023' width='900'/>

Select 64 Bit Download:

<img src='./images/img_024.png' alt='img_024' width='900'/>

## Checking ISO Checksums

Right click the ISO and select *Copy as Path*:

<img src='./images/img_025.png' alt='img_025' width='900'/>

<img src='./images/img_026.png' alt='img_026' width='900'/>

Right click the Start Button and select *Terminal*:

<img src='./images/img_027.png' alt='img_027' width='900'/>

Input:

```powershell
Get-FileHash path_to_windows.iso
```

To paste into the Terminal use `Ctrl` + `⇧` + `v`:

<img src='./images/img_028.png' alt='img_028' width='900'/>

<img src='./images/img_029.png' alt='img_029' width='900'/>

Highlight and copy the ISO Checksum. To copy from the Terminal use `Ctrl` + `⇧` + `c`:

<img src='./images/img_030.png' alt='img_030' width='900'/>

On the Windows 11 Software Download Page, select *Verify Your Download*:

<img src='./images/img_031.png' alt='img_031' width='900'/>

Press 'Ctrl' + 'f' and paste in the ISO Checksum. A match should found meaning the ISO has been downloaded without corruption:

<img src='./images/img_032.png' alt='img_032' width='900'/>

## Upgrading Install From ISO

Right click the ISO and select *Mount*:

<img src='./images/img_033.png' alt='img_033' width='900'/>

Double click the *setup.exe*:

<img src='./images/img_034.png' alt='img_034' width='900'/>

Select *Yes* at the User Account Control Prompt:

<img src='./images/img_035.png' alt='img_035' width='900'/>

Check *Yes* and select *Next*:

<img src='./images/img_036.png' alt='img_036' width='900'/>

The Windows Setup will Get Updates:

<img src='./images/img_037.png' alt='img_037' width='900'/>

The Windows Setup will Check Your PC:

<img src='./images/img_038.png' alt='img_038' width='900'/>

<details>

<summary>Unsupported Processors or TPM Version</summary>

> If attempting to upgrade a Device with an Unsupported Processor (for example in this case, in an OptiPlex 7040 with a 6th Generation Core i5-9000T) or a Device without a TPM 2.0. *This Device doesn't currently meet Windows 11 System Requirements* will display. Select *Close*:

<img src='./images/img_039.png' alt='img_039' width='900'/>

> Microsoft by default block a Windows 11 Upgrade Installation on Devices that don't satisfy Windows 11 **soft** system requirements however document a registry edit that can be used to bypass this block. This bypass will work on systems that do not satisfy the *soft* system requirements but otherwise satisfy the **hard** system requirements. [Microsoft: Other Ways to Install Windows 11](https://support.microsoft.com/en-gb/windows/ways-to-install-windows-11-e0edbbfb-cfc5-4011-868b-2ce77ac7c70e). 

> To open the Registry Editor, press `⊞` and `r` and input:

```
regedit
```

<img src='./images/img_040.png' alt='img_040' width='900'/>

> Select *Yes* at the User Account Control Prompt:

<img src='./images/img_041.png' alt='img_041' width='900'/>

> Navigate to the registry key:

```
HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup
```

> This can be done by copying the above address in the Registry Editors Address Bar or by navigating through the folders (similar to Windows Explorer) as shown below.

> Navigate to the *HKEY_LOCAL_MACHINE* folder:

<img src='./images/img_042.png' alt='img_042' width='900'/>

> Then to the *System* subfolder:

<img src='./images/img_043.png' alt='img_043' width='900'/>

> Then to the *Setup* subfolder:

<img src='./images/img_044.png' alt='img_044' width='900'/>

> Then to the *MoSetup* subfolder:

<img src='./images/img_045.png' alt='img_045' width='900'/>

> Copy the following:

```
AllowUpgradesWithUnsupportedTPMOrCPU
```

<img src='./images/img_046.png' alt='img_046' width='900'/>

> In the open directory right click to display the right click context menu. Select *New* → *DWORD (32 Bit) Value*: 

<img src='./images/img_047.png' alt='img_047' width='900'/>

> Paste in *AllowUpgradesWithUnsupportedTPMOrCPU*:

<img src='./images/img_048.png' alt='img_048' width='900'/>

> Double click this *DWORD* value to edit it:

<img src='./images/img_049.png' alt='img_049' width='900'/>

> Change the value to `1` and press *OK*. Then close down the Registry Editor:

<img src='./images/img_050.png' alt='img_050' width='900'/>

> Restart the *setup.exe* from the ISO. The *soft* system requirements message should should be bypassed and as this system satisfies the *hard* system requirement, the installation should proceed as normal:

<img src='./images/img_051.png' alt='img_051' width='900'/>

</details>

Once the Check is Complete you will be taken to the License Agreement Screen. Select *Accept*:

<img src='./images/img_052.png' alt='img_052' width='900'/>

The Windows Setup will check if the Device is Ready for the Install:

<img src='./images/img_053.png' alt='img_053' width='900'/>


The Windows Setup will check if the Internal Storage Drive on your Device has enough free space for the Upgrade Install:

<img src='./images/img_054.png' alt='img_054' width='900'/>

The in place Upgrade Install will by default upgrade the Operating System Files, Retain Files and Applications. If there is an incompatible Application it may be removed and details will be listed here. Select *Install* to proceed:

<img src='./images/img_055.png' alt='img_055' width='900'/>

Windows 11 will Install:

<img src='./images/img_056.png' alt='img_056' width='900'/>

Restart the Device:

<img src='./images/img_057.png' alt='img_057' width='900'/>

<img src='./images/img_058.png' alt='img_058' width='900'/>

<img src='./images/img_059.png' alt='img_059' width='900'/>

Continue to Update:

<img src='./images/img_060.png' alt='img_060' width='900'/>

Some privacy options will now display. Review each setting and select *Accept*:

<img src='./images/img_061.png' alt='img_061' width='900'/>

<img src='./images/img_062.png' alt='img_062' width='900'/>

<img src='./images/img_063.png' alt='img_063' width='900'/>

<img src='./images/img_064.png' alt='img_064' width='900'/>

<img src='./images/img_065.png' alt='img_065' width='900'/>

Once these are reviewed, you will return to the Windows Desktop:

<img src='./images/img_066.png' alt='img_066' width='900'/>

Right click the Start Button and select *System*:

<img src='./images/img_067.png' alt='img_067' width='900'/>

The Windows Version is now up to date:

<img src='./images/img_068.png' alt='img_068' width='900'/>

<details>
<summary>Unsupported Processors or TPM Version Example</summary>

<img src='./images/img_069.png' alt='img_069' width='900'/>

</details>

Windows 11 is now setup. Return to [Windows 11 Setup Guide](../readme.md).