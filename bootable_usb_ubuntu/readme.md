# Creating a Windows 11 Bootable USB on Ubuntu

This guide looks at creating a Windows 11 Bootable USB with preinstallation drivers drivers using a Dell XPS 8960 as an example. The Bootable USB will be prepared on Ubuntu 24.04 LTS.

## System Information

To view system details. Open up Settings from the Start Screen:

<img src='./images/img_001.png' alt='img_001' width='650'/>

To the left, select the System tab and then select About:

<img src='./images/img_002.png' alt='img_002' width='650'/>

The hardware model and processor will be listed. In this case:

* Dell XPS 8960
* 13th Generation Intel Core i7-13700
* 16 GB RAM
* 1 TB SSD

The minimum generation of processor supported by Microsoft is 8th generation, there is at least 8 GB of RAM and the internal drive is a SSD greater than 256 GB so this system is officially supported for Windows 11:

<img src='./images/img_003.png' alt='img_003' width='650'/>

<details>
<summary>Note On Unsupported Dell Systems</summary>

The minimum generation of processor supported by Microsoft is 8th generation (Q4 2017 and newer):

[Microsoft: Supported Processors for Windows 11](https://learn.microsoft.com/en-us/windows-hardware/design/minimum/supported/windows-11-22h2-supported-intel-processors)

Microsoft's list only accounts for the age of the processor and not the processors overall capabilities. Windows 11 can therefore unofficially be installed on a system with an unsupported earlier generation of processor that has greater capabilities than the Intel Celeron N4000, which is a low end 8th generation processor that is officially supported. For example a comparison can be made on Intel's website [Intel: N4000 vs i3-6100T](https://ark.intel.com/content/www/us/en/ark/compare.html?productIds=88200,128988).

Windows 11 can unofficially be clean installed on systems with a higher end 7th and 6th generation processor without impediment and the upgrade install can be carried out after a minor change in the registry outlined by Microsoft [Microsoft: Other Ways to Install Windows 11](https://support.microsoft.com/en-gb/windows/ways-to-install-windows-11-e0edbbfb-cfc5-4011-868b-2ce77ac7c70e). 

I tested this out on an OptiPlex 7040 with a 6th Generation i5-6500. Windows 11 performs acceptably on this system and will likely run okay with an i7-7xxx, i5-7xxx, i3-7xxx, i7-6xxx, i5-6xxx and i3-6xxx processor which all have a 14 nm lithography. Performance is poor with an earlier generation of processor that has a 22 nm lithography. You can use the Intel website to compare your processor to the N4000.

**In Microsoft's article, Microsoft state that they do not recommend installing Windows 11 on an unsupported device and that they are not liable if your device does not work properly. Essentially all of these systems are out of warranty and there is no official support by Microsoft or OEMs.**

In my testing Windows 11 performs acceptably on a system with a SSD internal drive and abysmally on a system with a HDD internal drive. 500 GB SATA SSDs are now very affordable and any HDD should be replaced before attempted installation of Windows 11.

</details>

</details>

For more information, select system details:

<img src='./images/img_004.png' alt='img_004' width='650'/>

##  Downloading Installation Media

Windows 11 Installation Media can be downloaded from [Microsoft: Windows 11 Software Download Page](https://www.microsoft.com/en-gb/software-download/windows11). The first wo options are Windows Applications which cannot be run on Linux. Select the third option:

<img src='./images/img_005.png' alt='img_005' width='650'/>

Select Windows 11:

<img src='./images/img_006.png' alt='img_006' width='650'/>

Select the Language:

<img src='./images/img_007.png' alt='img_007' width='650'/>

Note that for English there are two options:

* English (UK)
* English (USA)

Microsoft refer to English (UK) as English International.

<img src='./images/img_008.png' alt='img_008' width='650'/>

Select Confirm:

<img src='./images/img_009.png' alt='img_009' width='650'/>

Select 64-Bit Download:

<img src='./images/img_010.png' alt='img_010' width='650'/>

The ISO will be downloaded and saved in Downloads:

<img src='./images/img_011.png' alt='img_011' width='650'/>

## Checking the ISO sha256 Checksums

Open up the Terminal and input:

```bash
sha256sum path_to_windows.iso
```

Replacing `path_to_windows.iso` with the path of your installation image. For convenience the ISO can be dragged into the terminal to retrieve the path:

<img src='./images/img_012.png' alt='img_012' width='650'/>

<img src='./images/img_013.png' alt='img_013' width='650'/>

Copy the sha256 checksum. Note to copy from the terminal use `Ctrl`, `↹` + `c` instead of `Ctrl` + `c` as the latter keyboard shortcut is mapped to cancel an operation. `Ctrl`, `↹` + `v` is used for pasting:

<img src='./images/img_014.png' alt='img_014' width='650'/>

On the Windows 11 software download page, select verify your download:

<img src='./images/img_015.png' alt='img_015' width='650'/>

Press `Ctrl` + `f` to open the find prompt in FireFox and press `Ctrl` + `v` to paste the sha256 checksum:

<img src='./images/img_016.png' alt='img_016' width='650'/>

If the ISO has been correctly downloaded these should match:

<img src='./images/img_017.png' alt='img_017' width='650'/>

## Downloading Dell Drivers

Windows 11 unfortunately lacks two important drivers for current Dell systems. These include:

* Storage Controller Driver - Required to access the internal drive to install windows
* Wireless Network Driver - Required to access the internet

Dell drivers can e downloaded from [Dell Drivers and Downloads](https://www.dell.com/support/home/en-uk?app=drivers).

Input your model, in this case XPS 8960:

<img src='./images/img_018.png' alt='img_018' width='650'/>

Select Windows 11 under Operating System and Storage under Category:

<img src='./images/img_019.png' alt='img_019' width='650'/>

Select Intel Rapid Storage Technology and select Download:

<img src='./images/img_020.png' alt='img_020' width='650'/>

Select Windows 11 under Operating System and Network under Category:

<img src='./images/img_021.png' alt='img_021' width='650'/>

Select Wireless Driver and select Download:

<img src='./images/img_022.png' alt='img_022' width='650'/>

The Drivers are in the form of a Dell Update Package. The Dell Update Package is a Windows Application that gives the option to install or extract a driver. Linux cannot run the Windows Application. Changing the file extension from `.exe.` to `.zip` allows it to be extracted. Right click the storage controller driver file and select Rename:

<img src='./images/img_023.png' alt='img_023' width='650'/>

Change the `.exe` to `.zip`:

<img src='./images/img_024.png' alt='img_024' width='650'/>

<img src='./images/img_025.png' alt='img_025' width='650'/>

Right click the `.zip` file and select Extract:

<img src='./images/img_026.png' alt='img_026' width='650'/>

<img src='./images/img_027.png' alt='img_027' width='650'/>

Navigate through the extracted folder to find the driver:

<img src='./images/img_028.png' alt='img_028' width='650'/>

In this case there is a production, windows, windows build and then drivers subfolder:

<img src='./images/img_029.png' alt='img_029' width='650'/>

<img src='./images/img_030.png' alt='img_030' width='650'/>

<img src='./images/img_031.png' alt='img_031' width='650'/>

<img src='./images/img_032.png' alt='img_032' width='650'/>

the drivers folder contains the VMD folder:

<img src='./images/img_033.png' alt='img_033' width='650'/>

And the raw drivers look like the following:

<img src='./images/img_034.png' alt='img_034' width='650'/>

Go back up two levels and rename Drivers to F6Drivers:

<img src='./images/img_035.png' alt='img_035' width='650'/>

<details>
<summary><b>F6 Drivers</b></summary>

F6 is a historical term as legacy Windows Versions prompted to press F6 during the Windows Setup to install a storage controller driver from a Floppy Disk. We no longer need to press F6 and thankfully do not need to use a floppy disk.

</details>

Move F6Drivers to Downloads

<img src='./images/img_036.png' alt='img_036' width='650'/>

The `.exe` and rest of the extracted folder can be deleted:

<img src='./images/img_037.png' alt='img_037' width='650'/>

Right click the wireless network driver file and select Rename:

<img src='./images/img_038.png' alt='img_038' width='650'/>

Change the `.exe` to `.zip`:

<img src='./images/img_039.png' alt='img_039' width='650'/>

<img src='./images/img_040.png' alt='img_040' width='650'/>

Right click the `.zip` file and select Extract:

<img src='./images/img_041.png' alt='img_041' width='650'/>

Navigate through the extracted folder to find the driver:

<img src='./images/img_042.png' alt='img_042' width='650'/>

In this case there is a production, windows, windows build and then drivers subfolder:

<img src='./images/img_043.png' alt='img_043' width='650'/>

<img src='./images/img_044.png' alt='img_044' width='650'/>

<img src='./images/img_045.png' alt='img_045' width='650'/>

<img src='./images/img_046.png' alt='img_046' width='650'/>

This contains a folder wth the model of wireless card:

<img src='./images/img_047.png' alt='img_047' width='650'/>

And the raw drivers look like the following:

<img src='./images/img_048.png' alt='img_048' width='650'/>

Go back up two levels and rename Drivers to NetworkDrivers:

<img src='./images/img_049.png' alt='img_049' width='650'/>

<img src='./images/img_050.png' alt='img_050' width='650'/>

Move NetworkDrivers to Downloads

<img src='./images/img_051.png' alt='img_051' width='650'/>

The `.exe` and rest of the extracted folder can be deleted:

<img src='./images/img_052.png' alt='img_052' width='650'/>

Right click the ISO file and select Mount:

<img src='./images/img_053.png' alt='img_053' width='650'/>

It's contents looks a follows:

<img src='./images/img_054.png' alt='img_054' width='650'/>

## Install GParted

GParted will be used to manually partition a Bootable USB. Open up Software and search for GParted:

<img src='./images/img_055.png' alt='img_055' width='650'/>

Select Install:

<img src='./images/img_056.png' alt='img_056' width='650'/>

Installation requires superuser privileges. Input your password and select authenticate:

<img src='./images/img_057.png' alt='img_057' width='650'/>

GParted is now installed:

<img src='./images/img_058.png' alt='img_058' width='650'/>

## Partitioning the USB Flash Dive

Launch GParted from the Start Screen:

<img src='./images/img_059.png' alt='img_059' width='650'/>

To repartition a USB requires superuser privileges. Input your password and select authenticate:

<img src='./images/img_060.png' alt='img_060' width='650'/>

The Bootable USB requires a FAT32 Boot Partition as some systems require a FAT32 Partition in order to display a Bootable Device in the BIOS Boot Menu. Unfortunately the maximum file size for the FAT32 file system is 4.0 GB and the install.wim exceeds this, so we need to make a NTFS partition also.

In the dropdown to the left, select the USB Flash Drive:

<img src='./images/img_061.png' alt='img_061' width='650'/>

Right click all partitions on the USB Flash Drive and select Unmount:

<img src='./images/img_062.png' alt='img_062' width='650'/>

Select Device → Create Partition Table:

<img src='./images/img_063.png' alt='img_063' width='650'/>

Select GPT and apply:

<img src='./images/img_064.png' alt='img_064' width='650'/>

Right click the unallocated space and select New:

<img src='./images/img_065.png' alt='img_065' width='650'/>

Change the options to:

* New Size: 1024
* Partition Name: BOOT
* File System: FAT32
* Label: Boot

Select Add:

<img src='./images/img_066.png' alt='img_066' width='650'/>

Right click the unallocated space and select New:

<img src='./images/img_067.png' alt='img_067' width='650'/>

Change the options to:

* Partition Name: INSTALL
* File System: NTFS
* Label: INSTALL

The new size should automatically populate the rest of the USB. Select Add:

<img src='./images/img_068.png' alt='img_068' width='650'/>

Select apply all operations:

<img src='./images/img_069.png' alt='img_069' width='650'/>

Select apply:

<img src='./images/img_070.png' alt='img_070' width='650'/>

Select Close:

<img src='./images/img_071.png' alt='img_071' width='650'/>

## Copying Files to USB

From the ISO copy everything except `sources` to the `BOOT` partition:

<img src='./images/img_072.png' alt='img_072' width='650'/>

<img src='./images/img_073.png' alt='img_073' width='650'/>

Create a new folder on the `BOOT` partition called `sources`:

<img src='./images/img_074.png' alt='img_074' width='650'/>

Open up `sources` on the ISO and in `BOOT`:

<img src='./images/img_075.png' alt='img_075' width='650'/>

Copy the `boot.wim` to the `BOOT` partitions `sources` folder:

<img src='./images/img_076.png' alt='img_076' width='650'/>

<img src='./images/img_077.png' alt='img_077' width='650'/>

From the ISO copy everything to the `INSTALL` partition:

<img src='./images/img_078.png' alt='img_078' width='650'/>

<img src='./images/img_079.png' alt='img_079' width='650'/>

From `downloads` copy `F6Drivers` and `NetworkDrivers` to the `INSTALL` Partition:

<img src='./images/img_080.png' alt='img_080' width='650'/>

<img src='./images/img_081.png' alt='img_081' width='650'/>

The installation media is now ready. Return to [Windows 11 Setup Guide](../readme.md).