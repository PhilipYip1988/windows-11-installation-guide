# Using the Windows 11 Upgrade Assistant

This tutorial will instruct in using the Windows 11 Upgrade Assistant to Upgrade to the latest Windows 11 Mainstream Build on a supported Dell XPS 8960. The Upgrade Assistant will work on any previous Mainstream Build of Windows 10 or WIndows 11.

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

<details>
<summary>Processor Generation</summary>

> The minimum generation of Intel processor supported by Microsoft is 8th Generation (Q4 2017 and newer) or 2nd Generation Ryzen (2018 and newer).

> Microsoft do not allow Upgrade of an Unsupported Device using the Windows 11 Upgrade Assistant:

<img src='./images/img_005.png' alt='img_005' width='900'/>

<img src='./images/img_006.png' alt='img_006' width='900'/>

> Microsoft have instead detailed a workaround to perform an in place upgrade from Installation Media. For more details see [In Place Upgrade from Windows 11 Installation Media](../upgrade_from_installation_media/readme.md)

</details>

## Dell Drivers and Downloads

Before using the Windows 11 Upgrade Assistant it is recommended to Upgrade your Device's System Drivers and to ensure the Device has the latest BIOS Update. Go to [Dell Drivers and Downloads](https://www.dell.com/support/home/en-uk?app=drivers) and select *Download & Install SupportAssist*:

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

## Using the Windows 11 Upgrade Assistant

The Windows 11 Upgrade Assistant can be downloaded from [Microsoft: Windows 11 Software Download Page](https://www.microsoft.com/en-gb/software-download/windows11). Select *Download Now*:

<img src='./images/img_018.png' alt='img_018' width='900'/>

Launch the Windows 11 Upgrade Assistant:

<img src='./images/img_019.png' alt='img_019' width='900'/>

Select *Yes* at the User Account Control Prompt:

<img src='./images/img_020.png' alt='img_020' width='900'/>

The Upgrade Assistant will not proceed, until the PC Health Check App ha been installed and generated a compatibility report for your Device. Select *Get PC Health Check App*:

<img src='./images/img_021.png' alt='img_021' width='900'/>

Launch the PC Health Check App Installer:

<img src='./images/img_022.png' alt='img_022' width='900'/>

Select *I accept the terms of the license agreement* and select *Install*:

<img src='./images/img_023.png' alt='img_023' width='900'/>

Select *Open Windows PC Health Check* and select *Finish*:

<img src='./images/img_024.png' alt='img_024' width='900'/>

Select *Check Now*:

<img src='./images/img_025.png' alt='img_025' width='900'/>

Select *See All Results*:

<img src='./images/img_026.png' alt='img_026' width='900'/>

<img src='./images/img_027.png' alt='img_027' width='900'/>

Return to the Windows 11 Upgrade Assistant and select *Refresh*:

<img src='./images/img_028.png' alt='img_028' width='900'/>

Select *Accept and Install*:

<img src='./images/img_029.png' alt='img_029' width='900'/>

The Windows 11 Upgrade Assistant will Download Windows 11 Setup Files:

<img src='./images/img_030.png' alt='img_030' width='900'/>

Then Verify the Downloaded Files:

<img src='./images/img_031.png' alt='img_031' width='900'/>

Then begin to Install:

<img src='./images/img_032.png' alt='img_032' width='900'/>

# Update from Here


<img src='./images/img_033.png' alt='img_033' width='900'/>
<img src='./images/img_034.png' alt='img_034' width='900'/>

Windows 11 is now setup. Return to [Windows 11 Setup Guide](../readme.md).