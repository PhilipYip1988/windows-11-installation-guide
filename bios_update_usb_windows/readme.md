# Creating a BIOS USB on Windows

This guide looks at creating a BIOS USB using a Dell XPS 8960 as an example. The Bootable USB will be prepared on Windows 11.

## Checking System Information

Press `⊞` and `r` and input:

```
msinfo32
```

<img src='./images/img_001.png' alt='img_001' width='650'/>

The system details will be shown which include:

* System Manufacturer: Dell
* System Model: XPS 8960
* Processor: 13th Generation intel Core i7-13700
* BIOS: 2.11.0
* SMBIOS: 3.4
* BIOS Mode: UEFI
* Secure Boot State: On

The System Management Basic Input Output System (SMBIOS) version has the form `Major.Minor` and is essentially the motherboards generation describing the technologies at the time of manufacturer and cannot be updated. A Major version of 3 is required for Windows 11.

The Basic Input Output System (BIOS) has the form `Major.Minor.Patch`, however in general the version numbers are only used for internal development and the latest version should be installed. 

* Intel have identifier an industry-wide issue with Intel Core 13th and 14th Generation Processors and delivered a microcode update that Dell has incorporated into the latest BIOS Update (August/September 2024). 

* BIOS Update usually include other fixes which address boot issues with new Operating Systems and protect the firmware from security exploits. A major security hole was found (September 2020) which allowed bypass of Secure Boot and any system with a 6th Generation Processor and later as issued a BIOS Update to address this security issue.

<img src='./images/img_002.png' alt='img_002' width='650'/>

## Downloading BIOS Update

Navigate to [Dell Drivers and Downloads](https://www.dell.com/support/home/en-uk?app=drivers&lwp=rt)

Input your model number, in this case *XPS 8960* and select the corresponding model:

<img src='./images/img_003.png' alt='img_003' width='650'/>

To view the full list of drivers and updates, select *Check for Updates*:

<img src='./images/img_004.png' alt='img_004' width='650'/>

Then close the *SupportAssist* prompt:

<img src='./images/img_005.png' alt='img_005' width='650'/>

This will take you to the full list of drivers and updates. Under *Operating System*, select *BIOS*:

<img src='./images/img_006.png' alt='img_006' width='650'/>

Download the BIOS Update:

<img src='./images/img_007.png' alt='img_007' width='650'/>

## Downloading Rufus

Rufus is a utility for formatting  USB. Go to the [Rufus Website](https://rufus.ie/en/) and download the latest version:

<img src='./images/img_008.png' alt='img_008' width='650'/>

## Preparing the USB

Insert the >16 GB USB Flash Drive and launch Rufus:

<img src='./images/img_009.png' alt='img_009' width='650'/>

Select *Yes* at the User Account Control Prompt:

<img src='./images/img_010.png' alt='img_010' width='650'/>

Select *Yes*:

<img src='./images/img_011.png' alt='img_011' width='650'/>

Select the 16 GB USB Flash Drive under *Device*. Select *Non Bootable* under *Boot Selection*. Under *Volume Label* input *BIOSUPDATE* and under *File System* select *FAT32*. 

<details>
<summary><b>FAT32 File System</b></summary>

The File system should be FAT32. USBs with the NTFS do not populate the BIOS Boot Menu in some systems such as this XPS 8960.

</details>

Select *Start*:

<img src='./images/img_012.png' alt='img_012' width='650'/>

Select *OK*:

<img src='./images/img_013.png' alt='img_013' width='650'/>

Select *OK*:

<img src='./images/img_014.png' alt='img_014' width='650'/>

The format should be relatively fast, Rufus will say *Ready*. Select *Close*:

<img src='./images/img_015.png' alt='img_015' width='650'/>

Copy the BIOS Update:

<img src='./images/img_016.png' alt='img_016' width='650'/>

To the FAT32 Partition on the USB:

<img src='./images/img_017.png' alt='img_017' width='650'/>

Select *Yes*:

<img src='./images/img_018.png' alt='img_018' width='650'/>

The BIOS Update USB is now ready:

<img src='./images/img_019.png' alt='img_019' width='650'/>

## Updating the BIOS From USB

Shut down your Dell Device. Insert the BIOS USB into your Dell Device. Power it up and press *F12* to get to the BIOS Boot Menu:

<img src='./images/img_020.png' alt='img_020' width='650'/>

Use `↓` and `↑` to navigate to *BIOS Update* and press `↵` to select the option:

<img src='./images/img_021.png' alt='img_021' width='650'/>

The FAT32 Partition on the USB should be recognised as File System 0 *FS0* and the BIOS Update should be listed. Highlight it and select Flash Upgrade:

<img src='./images/img_022.png' alt='img_022' width='650'/>

Select *Yes*:

<img src='./images/img_023.png' alt='img_023' width='650'/>

Select *Yes*:

<img src='./images/img_024.png' alt='img_024' width='650'/>

The system will reboot and update the BIOS:

<img src='./images/img_025.png' alt='img_025' width='650'/>

The BIOS is now updated. Return to [Windows 11 Setup Guide](../readme.md).