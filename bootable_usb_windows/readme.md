# Creating a Windows 11 Bootable USB on Windows

This guide looks at creating a Windows 11 Bootable USB with preinstallation drivers drivers using a Dell XPS 8960 as an example. The Bootable USB will be prepared on Windows 11 but instructions will be applicable to any Windows 10 or Windows 11 Build.

## Checking System Information

Press `⊞` and `r` and input:

```
msinfo32
```

<img src='./images/img_001.png' alt='img_001' width='900'/>

The system details will be shown which include:

* System Manufacturer: Dell
* System Model: XPS 8960
* Processor: 13th Generation intel Core i7-13700
* BIOS: 2.11.0
* SMBIOS: 3.4
* BIOS Mode: UEFI
* Secure Boot State: On

The minimum generation of processor supported by Microsoft is 8th generation, there is at least 8 GB of RAM and the internal drive is a SSD greater than 256 GB so this system is officially supported for Windows 11.

<img src='./images/img_002.png' alt='img_002' width='900'/>

## Downloading Windows 11

Windows 11 Installation Media can be downloaded from [Microsoft: Windows 11 Software Download Page](https://www.microsoft.com/en-gb/software-download/windows11). The first option is a Windows Application which is used for an in place upgrade. The second version uses the Windows Media Creation Tool and the third option (which is preferred and sued in this guide) is the direct ISO download.

<img src='./images/img_003.png' alt='img_003' width='900'/>

<details>
<summary>Media Creation VS Direct ISO Download</summary>

> The Windows 11 Media Creation Tool downloads Windows Installation Media as setup and then creates an ISO or Bootable USB on your machine. 

> Bootable USB creation with the Media Creation Tool isn't as reliable using the ISO directly with Rufus.

> Rufus also includes some additional fixes.

> The Media Creation Tool Installation Media is smaller and has a smaller number of editions than the Direct ISO Download.

</details>

Select *Windows 11 (multi-edition ISO for x64)*:

<img src='./images/img_004.png' alt='img_004' width='900'/>

Select *Download Now*:

<img src='./images/img_005.png' alt='img_005' width='900'/>

Select the Language:

<img src='./images/img_006.png' alt='img_006' width='900'/>

Note that for English there are two options:

* English (UK)
* English (USA)

Microsoft refer to English (UK) as English International.

<img src='./images/img_007.png' alt='img_007' width='900'/>

Select *Confirm*:

<img src='./images/img_008.png' alt='img_008' width='900'/>

Select 64 Bit Download:

<img src='./images/img_009.png' alt='img_009' width='900'/>

## Downloading Rufus

Rufus is a utility for formatting  USB. Go to the [Rufus Website](https://rufus.ie/en/) and download the latest version:

<img src='./images/img_010.png' alt='img_010' width='900'/>

## Checking the ISO sha256 Checksums and Creating a Bootable USB

Launch Rufus:

<img src='./images/img_011.png' alt='img_011' width='900'/>

Select *Yes* at the User Account Control Prompt:

<img src='./images/img_012.png' alt='img_012' width='900'/>

Select *Select*:

<img src='./images/img_013.png' alt='img_013' width='900'/>

Select the Windows 11 ISO and select *Open*:

<img src='./images/img_014.png' alt='img_014' width='900'/>

Select the Verify ISO Checksums button:

<img src='./images/img_015.png' alt='img_015' width='900'/>

Copy the *SHA256*:

<img src='./images/img_016.png' alt='img_016' width='900'/>

<img src='./images/img_017.png' alt='img_017' width='900'/>

On the Windows 11 Software Download Page, select *Verify your Download*:

<img src='./images/img_018.png' alt='img_018' width='900'/>

Press `Ctrl` + `f` and paste in the ISO Checksum, it should be found on this page meaning the ISO has been downloaded correctly:

<img src='./images/img_019.png' alt='img_019' width='900'/>

The 16 GB USB Drive is listed under *Device*, the ISO is listed under *Boot Selection*, *GPT* is listed under the *Partition Scheme* and *NTFS* listed under the *File System*. Select *Start*:

<img src='./images/img_020.png' alt='img_020' width='900'/>

Rufus gives additional options to:

* Remove the Hardware Requirements Check for unsupported Processors and TPM
* Remove the Requirement for an Online Account
* Disable Automatic Bitlocker Device Encryption

Select the desired options and select *OK*:

<img src='./images/img_021.png' alt='img_021' width='900'/>

Select *OK*:

<img src='./images/img_022.png' alt='img_022' width='900'/>

When finished Rufus will say *Ready*. Select *Close*:

<img src='./images/img_023.png' alt='img_023' width='900'/>

The Windows Installation Media is created using a NTFS Partition which is shown in Windows Explorer with a Drive Label: 

<img src='./images/img_024.png' alt='img_024' width='900'/>

To show up as a Boot Device a Boot FAT32 Partition is often required. This is created by Rufus but is instructed not to have a Drive letter. It can be viewed in *Disk Management*. Right click the Start Button and select *Disk Management*:

<img src='./images/img_025.png' alt='img_025' width='900'/>

The small Boot FAT32 partition is seen on the Bootable USB:

<img src='./images/img_026.png' alt='img_026' width='900'/>

## Downloading Dell Drivers

Windows 11 unfortunately lacks two important drivers for current Dell systems. These include:

* Storage Controller Driver - Required to access the internal drive to install windows
* Wireless Network Driver - Required to access the internet

Dell drivers can be downloaded from [Dell Drivers and Downloads](https://www.dell.com/support/home/en-uk?app=drivers).

Input your model, in this case XPS 8960:

<img src='./images/img_027.png' alt='img_027' width='900'/>

Select *Check for Updates*:

<img src='./images/img_028.png' alt='img_028' width='900'/>

Cancel the check for *SupportAssist*:

<img src='./images/img_029.png' alt='img_029' width='900'/>

This will list all the drivers. Select Windows 11 under Operating System and Storage under Category:

<img src='./images/img_030.png' alt='img_030' width='900'/>

Select Intel Rapid Storage Technology and select Download:

<img src='./images/img_031.png' alt='img_031' width='900'/>

Double click the Intel Rapid Storage Technology:

<img src='./images/img_032.png' alt='img_032' width='900'/>

Select *Yes* at the User Account Prompt:

<img src='./images/img_033.png' alt='img_033' width='900'/>

Select *Extract*:

<img src='./images/img_034.png' alt='img_034' width='900'/>

Extract to a subfolder in *Downloads* called *Extract*:

<img src='./images/img_035.png' alt='img_035' width='900'/>

<img src='./images/img_036.png' alt='img_036' width='900'/>

<img src='./images/img_037.png' alt='img_037' width='900'/>

<img src='./images/img_038.png' alt='img_038' width='900'/>

Select *Close*:

<img src='./images/img_039.png' alt='img_039' width='900'/>

Navigate through the *Extract* folder until a *Drivers* folder is found:

<img src='./images/img_040.png' alt='img_040' width='900'/>

<img src='./images/img_041.png' alt='img_041' width='900'/>

Rename it *DriversF6*: 

<img src='./images/img_042.png' alt='img_042' width='900'/>

Copy it to your NTFS Install Partition of your Bootable USB:

<img src='./images/img_043.png' alt='img_043' width='900'/>

Go back to the Dell Drivers and Downloads page. Select *Network, Ethernet, and Wireless* under *Category*:

<img src='./images/img_044.png' alt='img_044' width='900'/>

Download the WiFi driver:

<img src='./images/img_045.png' alt='img_045' width='900'/>

Double click the WiFi driver:

<img src='./images/img_046.png' alt='img_046' width='900'/>

Select *Yes* at the User Account Control:

<img src='./images/img_047.png' alt='img_047' width='900'/>

Select *Extract*:

<img src='./images/img_048.png' alt='img_048' width='900'/>

Select the *Downloads* folder and then select *Make New Folder* and call the folder Extract2:

<img src='./images/img_049.png' alt='img_049' width='900'/>

Select *OK*:

<img src='./images/img_050.png' alt='img_050' width='900'/>

Select *Close*:

<img src='./images/img_051.png' alt='img_051' width='900'/>

Navigate through the *Extract2* folder until a *Drivers* folder is found:

<img src='./images/img_052.png' alt='img_052' width='900'/>

<img src='./images/img_053.png' alt='img_053' width='900'/>

Rename this folder DriversNetwork:

<img src='./images/img_054.png' alt='img_054' width='900'/>

Copy it to your NTFS Install Partition of your Bootable USB:

<img src='./images/img_055.png' alt='img_055' width='900'/>

The Drivers folders should contain drivers in the form of *.inf*

<img src='./images/img_056.png' alt='img_056' width='900'/>
<img src='./images/img_057.png' alt='img_057' width='900'/>
<img src='./images/img_058.png' alt='img_058' width='900'/>
<img src='./images/img_059.png' alt='img_059' width='900'/>


<img src='./images/img_060.png' alt='img_060' width='900'/>

