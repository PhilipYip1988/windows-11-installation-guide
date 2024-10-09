# Windows 11 Clean Install

This tutorial will instruct in clean installation of Windows 11 from a Bootable USB on a supported Dell XPS 8960

## Preinstallation Checks

Before clean installation you should make sure:

* The System BIOS is up to date
* The BIOS Setup is Optimized for Windows 11
    * UEFI Boot with Secure Boot in Deployed Mode
    * TPM Enabled
    * RAID (Intel VMD) Storage Controller
* Windows 11 Bootable USB
    * FAT32 Boot Partition with boot.wim to show as Boot Device
    * NTFS Install Partition with install.wim for installation
    * Extracted Storage Controllers 
    * Extracted Network Controllers
    
If you have not done so return to [Windows 11 Setup Guide](../readme.md)

## Booting from USB

Insert the Windows 11 Bootable USB. Power off your Dell PC and press `F12` to access the one time BIOS Boot Menu:

<img src='./images/img_001.png' alt='img_001' width='900'/>

The FAT32 Boot Partition of the Installation Media will be listed in the boot menu. Use the `↓` and `↑` keys to select it and press `↵` to boot from it:

<img src='./images/img_002.png' alt='img_002' width='900'/>

The Dell logo will display:

<img src='./images/img_003.png' alt='img_003' width='900'/>

Select your *Language to Install* and *Time Currency and Format* and then select Next:

<img src='./images/img_004.png' alt='img_004' width='900'/>

Select your *Keyboard or Input Method* and select Next:

<img src='./images/img_005.png' alt='img_005' width='900'/>

Select *Install Windows 11* and check *I agree everything will be deleted including files, apps and settings* and select Next:

<img src='./images/img_006.png' alt='img_006' width='900'/>

## Product Key

*We're Getting a Few Things Ready* and *Checking your PC* will display:

<img src='./images/img_007.png' alt='img_007' width='900'/>

<img src='./images/img_008.png' alt='img_008' width='900'/>

During this check, the Advanced Configuration and Power Interface (ACPI) Table within the devices firmware will be examined for an embedded OEM product key. When the embedded OEM Product is found, the corresponding edition of Windows is selected and you will be taken to the license agreement screen. Select Accept:

<details>
<summary>Retail Product Key</summary>

> Failure to find an OEM Embedded Product Key will display a prompt for a Retail Product Key. 

> * The Retail Key is only required for first time activation on a device. 

> * If Windows has previously been installed on the device, the device details are registered with a Microsoft Product Activation Server. 

> * The Microsoft Product Activation Server will automatically reactivate Windows 11 on a previously registered device when connected to the internet.

> Select Skip and select your Windows 11 Version. Then select accept:

</details>

<img src='./images/img_009.png' alt='img_009' width='900'/>

## Disks and Storage Controller

A search will be made for disks to install Windows on:

<img src='./images/img_010.png' alt='img_010' width='900'/>

The Windows 11 Setup displays the Bootable USB as Disk 0. 

**Windows should not be installed on the Bootable USB**

<img src='./images/img_011.png' alt='img_011' width='900'/>

On this system RAID is configured with an Intel VMD. The Intel VMD combines processor technologies with the M.2 attached to the NVMe port creating a higher performing virtualised drive. Windows 11 does not have the driver for this virtualised drive and it does not show in the Windows 11 setup menu. Select Load Driver:

<img src='./images/img_012.png' alt='img_012' width='900'/>

Select Browse:

<img src='./images/img_013.png' alt='img_013' width='900'/>

Select the Install Partition and within it select the F6Drivers folder. Within the F6 drivers folder select VMD then OK:

<img src='./images/img_014.png' alt='img_014' width='900'/>

Compatible drivers will be listed. Select the top driver and select Install:

<img src='./images/img_015.png' alt='img_015' width='900'/>

Another search will be made for disks to install Windows on:

<img src='./images/img_016.png' alt='img_016' width='900'/>

Now Disk 1: Unallocated Space should display, if it does not attempt to load any other drivers listed. Select Disk 1: Unallocated Space and select Next:

<details>
<summary>Disk 1: Displays with Partitions</summary>

> This guide assumes the drive has been wiped in the devices BIOS Setup which is more through than the format used by Windows Installation Media and is preferred. This will also be able to removed encrypted partitions on the drive which Windows may not recognise and not display during the Windows Setup.

> * If your system has never had Linux installed and lacks the data wipe feature. For each partition, select Delete Partition. You should delete any Recovery Partitions which refer to old Windows installs. Disk 1: Unallocated Space should now display and the unallocated space should match your drives capacity. **Ensure you do not delete any partitions on the Bootable USB.**

> * If some partitions on your drive do not display or Windows is unable to delete the partition. You may need to use the command line utility diskpart. Press `⇧` and `F10` to open up the command prompt. Type in:

```powershell
diskpart
> diskpart
list disk
> disk 0 32 GB

```


</details>


<img src='./images/img_017.png' alt='img_017' width='900'/>




## Installing Windows


## Connecting to the Internet


## User Account


## Privacy Settings


## Windows Update


## Dell Drivers and Downloads


## Microsoft Store Applications Update






























<img src='./images/img_018.png' alt='img_018' width='900'/>
<img src='./images/img_019.png' alt='img_019' width='900'/>
<img src='./images/img_020.png' alt='img_020' width='900'/>
<img src='./images/img_021.png' alt='img_021' width='900'/>
<img src='./images/img_022.png' alt='img_022' width='900'/>
<img src='./images/img_023.png' alt='img_023' width='900'/>
<img src='./images/img_024.png' alt='img_024' width='900'/>
<img src='./images/img_025.png' alt='img_025' width='900'/>
<img src='./images/img_026.png' alt='img_026' width='900'/>
<img src='./images/img_027.png' alt='img_027' width='900'/>
<img src='./images/img_028.png' alt='img_028' width='900'/>
<img src='./images/img_029.png' alt='img_029' width='900'/>
<img src='./images/img_030.png' alt='img_030' width='900'/>
<img src='./images/img_031.png' alt='img_031' width='900'/>
<img src='./images/img_032.png' alt='img_032' width='900'/>
<img src='./images/img_033.png' alt='img_033' width='900'/>
<img src='./images/img_034.png' alt='img_034' width='900'/>
<img src='./images/img_035.png' alt='img_035' width='900'/>
<img src='./images/img_036.png' alt='img_036' width='900'/>
<img src='./images/img_037.png' alt='img_037' width='900'/>
<img src='./images/img_038.png' alt='img_038' width='900'/>
<img src='./images/img_039.png' alt='img_039' width='900'/>
<img src='./images/img_040.png' alt='img_040' width='900'/>
<img src='./images/img_041.png' alt='img_041' width='900'/>
<img src='./images/img_042.png' alt='img_042' width='900'/>
<img src='./images/img_043.png' alt='img_043' width='900'/>
<img src='./images/img_044.png' alt='img_044' width='900'/>
<img src='./images/img_045.png' alt='img_045' width='900'/>
<img src='./images/img_046.png' alt='img_046' width='900'/>
<img src='./images/img_047.png' alt='img_047' width='900'/>
<img src='./images/img_048.png' alt='img_048' width='900'/>
<img src='./images/img_049.png' alt='img_049' width='900'/>
<img src='./images/img_050.png' alt='img_050' width='900'/>
<img src='./images/img_051.png' alt='img_051' width='900'/>
<img src='./images/img_052.png' alt='img_052' width='900'/>
<img src='./images/img_053.png' alt='img_053' width='900'/>
<img src='./images/img_054.png' alt='img_054' width='900'/>
<img src='./images/img_055.png' alt='img_055' width='900'/>
<img src='./images/img_056.png' alt='img_056' width='900'/>
<img src='./images/img_057.png' alt='img_057' width='900'/>
<img src='./images/img_058.png' alt='img_058' width='900'/>
<img src='./images/img_059.png' alt='img_059' width='900'/>
<img src='./images/img_060.png' alt='img_060' width='900'/>
<img src='./images/img_061.png' alt='img_061' width='900'/>
<img src='./images/img_062.png' alt='img_062' width='900'/>
<img src='./images/img_063.png' alt='img_063' width='900'/>
<img src='./images/img_064.png' alt='img_064' width='900'/>
<img src='./images/img_065.png' alt='img_065' width='900'/>
<img src='./images/img_066.png' alt='img_066' width='900'/>
<img src='./images/img_067.png' alt='img_067' width='900'/>
<img src='./images/img_068.png' alt='img_068' width='900'/>
<img src='./images/img_069.png' alt='img_069' width='900'/>
<img src='./images/img_070.png' alt='img_070' width='900'/>
<img src='./images/img_071.png' alt='img_071' width='900'/>
<img src='./images/img_072.png' alt='img_072' width='900'/>
<img src='./images/img_073.png' alt='img_073' width='900'/>
<img src='./images/img_074.png' alt='img_074' width='900'/>
<img src='./images/img_075.png' alt='img_075' width='900'/>
<img src='./images/img_076.png' alt='img_076' width='900'/>
<img src='./images/img_077.png' alt='img_077' width='900'/>
<img src='./images/img_078.png' alt='img_078' width='900'/>
<img src='./images/img_079.png' alt='img_079' width='900'/>
<img src='./images/img_080.png' alt='img_080' width='900'/>
<img src='./images/img_081.png' alt='img_081' width='900'/>