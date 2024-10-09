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
    
If you have not done so return to [Windows 11 Setup Guide](../readme.md).

## Booting from USB

Insert the Windows 11 Bootable USB. Power off your Dell PC and press `F12` to access the one time BIOS Boot Menu:

<img src='./images/img_001.png' alt='img_001' width='900'/>

The FAT32 Boot Partition of the Installation Media will be listed in the boot menu. Use the `↓` and `↑` keys to select it and press `↵` to boot from it:

<img src='./images/img_002.png' alt='img_002' width='900'/>

The Dell logo will display:

<img src='./images/img_003.png' alt='img_003' width='900'/>

Select your *Language to Install* and *Time Currency and Format* and then select *Next*:

<img src='./images/img_004.png' alt='img_004' width='900'/>

Select your *Keyboard or Input Method* and select Next:

<img src='./images/img_005.png' alt='img_005' width='900'/>

Select *Install Windows 11* and check *I agree everything will be deleted including files, apps and settings* and select *Next*:

<img src='./images/img_006.png' alt='img_006' width='900'/>

## Product Key

*We're Getting a Few Things Ready* and *Checking your PC* will display:

<img src='./images/img_007.png' alt='img_007' width='900'/>

<img src='./images/img_008.png' alt='img_008' width='900'/>

During this check, the Advanced Configuration and Power Interface (ACPI) Table within the devices firmware will be examined for an embedded OEM product key. When the embedded OEM Product is found, the corresponding edition of Windows is selected and you will be taken to the license agreement screen. Select *Accept*:

<details>
<summary>Retail Product Key</summary>

> Failure to find an OEM Embedded Product Key will display a prompt for a Retail Product Key. 

> * The Retail Key is only required for first time activation on a device. 

> * If Windows has previously been installed on the device, the device details are registered with a Microsoft Product Activation Server. 

> * The Microsoft Product Activation Server will automatically reactivate Windows 11 on a previously registered device when connected to the internet.

> Select *Skip* and select your Windows 11 Version. Then select *Accept*:

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

Select the Install Partition and within it select the F6Drivers folder. Within the F6 drivers folder select VMD then *OK*:

<img src='./images/img_014.png' alt='img_014' width='900'/>

Compatible drivers will be listed. Select the top driver and select Install:

<img src='./images/img_015.png' alt='img_015' width='900'/>

Another search will be made for disks to install Windows on:

<img src='./images/img_016.png' alt='img_016' width='900'/>

Now Disk 1: Unallocated Space should display, if it does not attempt to load any other drivers listed. Select *Disk 1: Unallocated Space* and select *Next*:

<img src='./images/img_017.png' alt='img_017' width='900'/>

<details>
<summary>Disk 1: Displays with Partitions</summary>

> This guide assumes the drive has been wiped in the devices BIOS Setup which is more through than the format used by Windows Installation Media and is preferred. This will also be able to removed encrypted partitions on the drive which Windows may not recognise and not display during the Windows Setup. Return to [Windows 11 Setup Guide: BIOS Setup](../readme.md) for more details.

> If a data wipe has not been installed. The disk will look like the following with old partitions from the previous Operating System install:

<img src='./images/img_018.png' alt='img_018' width='900'/>

> Select each partition in turn and select Delete Partition

<img src='./images/img_019.png' alt='img_019' width='900'/>

<img src='./images/img_020.png' alt='img_020' width='900'/>

<img src='./images/img_021.png' alt='img_021' width='900'/>


> If some partitions on your drive do not display or Windows is unable to delete the partition. You may need to use the command line utility diskpart. Press `⇧` and `F10` to open up the command prompt. Type in:

<img src='./images/img_022.png' alt='img_022' width='900'/>

```powershell
diskpart
```

<img src='./images/img_023.png' alt='img_023' width='900'/>

To list the disks input:

```powershell
list disk
```

<img src='./images/img_024.png' alt='img_024' width='900'/>

In this example Disk 0 is the Bootable USB and Disk 1 is the internal drive. To select the internal drive input:

```powershell
select disk N
```
<img src='./images/img_025.png' alt='img_025' width='900'/>

To clean the disk input:

```powershell
clean
```

<img src='./images/img_026.png' alt='img_026' width='900'/>

To exit input:

```powershell
exit
exit
```

<img src='./images/img_027.png' alt='img_027' width='900'/>

Exit the Windows setup and Boot from the USB again:

<img src='./images/img_028.png' alt='img_028' width='900'/>

Select *Disk 1: Unallocated Space* and select *Next*:

<img src='./images/img_029.png' alt='img_029' width='900'/>

</details>

## Installing Windows

Select Install:

<img src='./images/img_029.png' alt='img_029' width='900'/>

Windows 11 will install:

<img src='./images/img_030.png' alt='img_030' width='900'/>

The computer will then reboot:

<img src='./images/img_031.png' alt='img_031' width='500'/>

<img src='./images/img_032.png' alt='img_032' width='500'/>

<img src='./images/img_033.png' alt='img_033' width='500'/>

<img src='./images/img_034.png' alt='img_034' width='500'/>

<img src='./images/img_035.png' alt='img_035' width='500'/>

## Out of the Box Experience (OOBE)

Select your *Region* and then select *Yes*:

<img src='./images/img_036.png' alt='img_036' width='900'/>

Select your *Keyboard Layout* and select *Yes*:

<img src='./images/img_037.png' alt='img_037' width='900'/>

Select Skip:

<img src='./images/img_038.png' alt='img_038' width='900'/>

## Connecting to the Internet

Windows 11 does not have the wireless driver for this XPS 8960. Select *Install Driver*:

<img src='./images/img_039.png' alt='img_039' width='900'/>

Select the Install Partition:

<img src='./images/img_040.png' alt='img_040' width='900'/>

Select the NetworkDrivers folder:

<img src='./images/img_041.png' alt='img_041' width='900'/>

Scroll down to the folder with the driver and then select *Select Folder*:

<img src='./images/img_042.png' alt='img_042' width='900'/>

The Driver is then installed:

<img src='./images/img_043.png' alt='img_043' width='900'/>

<img src='./images/img_044.png' alt='img_044' width='900'/>

Select *Connect*:

<img src='./images/img_045.png' alt='img_045' width='900'/>

Input the WiFi password and select *Next*:

<img src='./images/img_046.png' alt='img_046' width='900'/>

Select *Next*:

<img src='./images/img_047.png' alt='img_047' width='900'/>

The setup will check for updates:

<img src='./images/img_048.png' alt='img_048' width='900'/>

## User Account

Input your Computer Name and select *Next*

<img src='./images/img_049.png' alt='img_049' width='900'/>

Your computer will reboot:

<img src='./images/img_050.png' alt='img_050' width='900'/>

There will be another check for Updates:

<img src='./images/img_051.png' alt='img_051' width='900'/>

Select Sign In:

<img src='./images/img_052.png' alt='img_052' width='900'/>

Note the *Sign-In Options* do not include a *Local Account*. Microsoft have moved this option but it can be added using the Command Prompt.

<img src='./images/img_053.png' alt='img_053' width='900'/>

<details>
<summary>Logging In with a Local Account</summary>

> **A Microsoft Account is recommended in order to use all available Microsoft Services such as OneDrive and Office 365.**

> However there are some cases where a Local Account is required. For example as an OEM, we setup up specialised software on the customer PC on a Local Account as we don't have the customers Microsoft Account Details.

> The default accessibility settings in the setup are limited and do not allow for disconnection from the internet:

<img src='./images/img_054.png' alt='img_054' width='900'/>

> Press `⇧` and `F10` to open up the command prompt:

<img src='./images/img_055.png' alt='img_055' width='900'/>

> Once the command prompt is open, the accessibility settings button opens the full settings. Here Network and Internet can be selected:

<img src='./images/img_056.png' alt='img_056' width='900'/>

> And Wi-Fi can be turned off:

<img src='./images/img_057.png' alt='img_057' width='900'/>

> Settings can be closed:

<img src='./images/img_058.png' alt='img_058' width='900'/>

> Press `⇧` and `F10` to open up the command prompt:

<img src='./images/img_059.png' alt='img_059' width='900'/>

> Press `⇧` and `F10` to open up the command prompt:

<img src='./images/img_060.png' alt='img_060' width='900'/>

> To bypass the Network Required Option input:

```powershell
OOBE\BYPASSNRO
```

> The computer will reboot, restarting the OOBE:

<img src='./images/img_061.png' alt='img_061' width='900'/>

> Select *I don't have internet*:

<img src='./images/img_062.png' alt='img_062' width='900'/>

> Input your username and select *Next*:

<img src='./images/img_063.png' alt='img_063' width='900'/>

> Input your password and select *Next*:

<img src='./images/img_064.png' alt='img_064' width='900'/>

</details>

Input your email and select *Next*:

<img src='./images/img_065.png' alt='img_065' width='900'/>

Input your password and select *Sign In*:

<img src='./images/img_066.png' alt='img_066' width='900'/>

Select *Create Pin*:

<img src='./images/img_067.png' alt='img_067' width='900'/>

Input your pin and confirm it and select *Next*:

<img src='./images/img_068.png' alt='img_068' width='900'/>

## Privacy Settings

In the next screens select your privacy option and select *Accept*:

<img src='./images/img_069.png' alt='img_069' width='900'/>

<img src='./images/img_070.png' alt='img_070' width='900'/>

<img src='./images/img_071.png' alt='img_071' width='900'/>

<img src='./images/img_072.png' alt='img_072' width='900'/>

## OneDrive Integration

If logging into a Microsoft Account and you have had Windows 11 previously installed on another Device. You will be given the option to Restore Apps and Files from the most recent Device you were logged into:

<img src='./images/img_073.png' alt='img_073' width='900'/>

More options will allow you to Restore from other PCs you were logged into:

<img src='./images/img_074.png' alt='img_074' width='900'/>

In this example, I will select *Set Up as a New PC*:

<img src='./images/img_075.png' alt='img_075' width='900'/>

You will also be asked whether you want to customise your Device. In this example, I will select *Development* and then select *Accept*:

<img src='./images/img_076.png' alt='img_076' width='900'/>

You will be given the option to Link your Phone:

<img src='./images/img_077.png' alt='img_077' width='900'/>

You will be given the option to Integrate Desktop, Documents and Pictures with OneDrive:

<img src='./images/img_078.png' alt='img_078' width='900'/>

You will be given the option to back up your Phones Photos to OneDrive:

<img src='./images/img_079.png' alt='img_079' width='900'/>

You will be given the option to import from another browser:

<img src='./images/img_080.png' alt='img_080' width='900'/>

Windows 11 will now be installed:

<img src='./images/img_081.png' alt='img_081' width='900'/>

If OneDrive integration was enabled, your OneDrive files should display:

<img src='./images/img_082.png' alt='img_082' width='900'/>

## Windows Update

Right click the Start Button and select *Settings*:

<img src='./images/img_083.png' alt='img_083' width='900'/>

<details>
<summary>If Logged in with a Local Account</summary>

> If logged in with a Local Account, you will still be Offline:

<img src='./images/img_084.png' alt='img_084' width='900'/>

Select the *Network and Internet* and reconnect to the Internet:

<img src='./images/img_085.png' alt='img_085' width='900'/>

> You should now be Online:

<img src='./images/img_086.png' alt='img_086' width='900'/>

</details>

Select the *Windows Update* tab and *Download & Install All*:

<img src='./images/img_087.png' alt='img_087' width='900'/>

Select *Restart Now*:

<img src='./images/img_088.png' alt='img_088' width='900'/>

## Dell Drivers and Downloads

Right click the Start Button and select *Device Manager*:

<img src='./images/img_089.png' alt='img_089' width='900'/>

There may be Unknown Devices if Windows hasn't found all the Device Drivers:

<img src='./images/img_090.png' alt='img_090' width='900'/>

Go to [Dell Drivers and Downloads](https://www.dell.com/support/home/en-uk?app=drivers) and select *Download & Install SupportAssist*:

<img src='./images/img_091.png' alt='img_091' width='900'/>

Select *Download*:

<img src='./images/img_092.png' alt='img_092' width='900'/>

Launch the downloaded *SupportAssistLauncher.exe*:

<img src='./images/img_093.png' alt='img_093' width='900'/>

Accept the User Account Control Prompt:

<img src='./images/img_094.png' alt='img_094' width='900'/>

SupportAssist will setup:

<img src='./images/img_095.png' alt='img_095' width='900'/>

It will then identify your product:

<img src='./images/img_096.png' alt='img_096' width='900'/>

Select *Check for Updates*:

<img src='./images/img_097.png' alt='img_097' width='900'/>

Select *Download & Install*:

<img src='./images/img_098.png' alt='img_098' width='900'/>

Some drivers may require a Restart:

<img src='./images/img_099.png' alt='img_099' width='900'/>

Right click the Start Button and select *Shut down or sign out* → *Restart*:

<img src='./images/img_100.png' alt='img_100' width='900'/>

If a BIOS Update has been downloaded it will install when the Device reboots:

<img src='./images/img_101.png' alt='img_101' width='900'/>

## Microsoft Store Applications Update

Open up the *Microsoft Store*:

<img src='./images/img_102.png' alt='img_102' width='900'/>

Select the Library tab and then *Get Updates*:

<img src='./images/img_103.png' alt='img_103' width='900'/>

This will ensure Windows Applicaitons are at the current version:

<img src='./images/img_104.png' alt='img_104' width='900'/>

Windows 11 is now setup. Return to [Windows 11 Setup Guide](../readme.md).