# Creating a Windows 11 Bootable USB on Ubuntu

This guide looks at creating a Windows 11 Bootable USB with preinstallation drivers drivers using a Dell XPS 8960 as an example. The Bootable USB will be prepared on Ubuntu 24.04 LTS.

## System Information

To view system details. Open up Settings from the Start Screen:

<img src='./images/img_001.png' alt='img_001' width='900'/>

To the left, select the System tab and then select About:

<img src='./images/img_002.png' alt='img_002' width='900'/>

The hardware model and processor will be listed. In this case:

* Dell XPS 8960
* 13th Generation Intel Core i7-13700
* 16 GB RAM
* 1 TB SSD

The minimum generation of processor supported by Microsoft is 8th generation, there is at least 8 GB of RAM and the internal drive is a SSD greater than 256 GB so this system is officially supported for Windows 11.

<img src='./images/img_003.png' alt='img_003' width='900'/>

For more information, select system details:

<img src='./images/img_004.png' alt='img_004' width='900'/>

##  Downloading Installation Media

Windows 11 Installation Media can be downloaded from [Microsoft: Windows 11 Software Download Page](https://www.microsoft.com/en-gb/software-download/windows11). The first wo options are Windows Applications which cannot be run on Linux. Select the third option:

<img src='./images/img_005.png' alt='img_005' width='900'/>

Select Windows 11:

<img src='./images/img_006.png' alt='img_006' width='900'/>

Select the Language:

<img src='./images/img_007.png' alt='img_007' width='900'/>

Note that for English there are two options:

* English (UK)
* English (USA)

Microsoft refer to English (UK) as English International.

<img src='./images/img_008.png' alt='img_008' width='900'/>

Select Confirm:

<img src='./images/img_009.png' alt='img_009' width='900'/>

Select 64-Bit Download:

<img src='./images/img_010.png' alt='img_010' width='900'/>

The ISO will be downloaded and saved in Downloads:

<img src='./images/img_011.png' alt='img_011' width='900'/>

## Checking the ISO sha256 Checksums

Open up the Terminal and input:

```bash
sha256sum path_to_windows.iso
```

Replacing `path_to_windows.iso` with the path of your installation image. For convenience the ISO can be dragged into the terminal to retrieve the path:

<img src='./images/img_012.png' alt='img_012' width='900'/>

<img src='./images/img_013.png' alt='img_013' width='900'/>

Copy the sha256 checksum. Note to copy from the terminal use `Ctrl`, `↹` + `c` instead of `Ctrl` + `c` as the latter keyboard shortcut is mapped to cancel an operation. `Ctrl`, `↹` + `v` is used for pasting:

<img src='./images/img_014.png' alt='img_014' width='900'/>

On the Windows 11 software download page, select verify your download:

<img src='./images/img_015.png' alt='img_015' width='900'/>

Press `Ctrl` + `f` to open the find prompt in FireFox and press `Ctrl` + `v` to paste the sha256 checksum:

<img src='./images/img_016.png' alt='img_016' width='900'/>

If the ISO has been correctly downloaded these should match:

<img src='./images/img_017.png' alt='img_017' width='900'/>

## Downloading Dell Drivers

Windows 11 unfortunately lacks two important drivers for current Dell systems. These include:

* Storage Controller Driver - Required to access the internal drive to install windows
* Wireless Network Driver - Required to access the internet

Dell drivers can be downloaded from [Dell Drivers and Downloads](https://www.dell.com/support/home/en-uk?app=drivers).

Input your model, in this case XPS 8960:

<img src='./images/img_018.png' alt='img_018' width='900'/>

Select Windows 11 under Operating System and Storage under Category:

<img src='./images/img_019.png' alt='img_019' width='900'/>

Select Intel Rapid Storage Technology and select Download:

<img src='./images/img_020.png' alt='img_020' width='900'/>

Select Windows 11 under Operating System and Network under Category:

<img src='./images/img_021.png' alt='img_021' width='900'/>

Select Wireless Driver and select Download:

<img src='./images/img_022.png' alt='img_022' width='900'/>

The Drivers are in the form of a Dell Update Package. The Dell Update Package is a Windows Application that gives the option to install or extract a driver. Linux cannot run the Windows Application. Changing the file extension from `.exe.` to `.zip` allows it to be extracted. Right click the storage controller driver file and select Rename:

<img src='./images/img_023.png' alt='img_023' width='900'/>

Change the `.exe` to `.zip`:

<img src='./images/img_024.png' alt='img_024' width='900'/>

<img src='./images/img_025.png' alt='img_025' width='900'/>

Right click the `.zip` file and select Extract:

<img src='./images/img_026.png' alt='img_026' width='900'/>

<img src='./images/img_027.png' alt='img_027' width='900'/>

Navigate through the extracted folder to find the driver:

<img src='./images/img_028.png' alt='img_028' width='900'/>

In this case there is a production, windows, windows build and then drivers subfolder:

<img src='./images/img_029.png' alt='img_029' width='600'/>

<img src='./images/img_030.png' alt='img_030' width='600'/>

<img src='./images/img_031.png' alt='img_031' width='600'/>

<img src='./images/img_032.png' alt='img_032' width='600'/>

The drivers folder contains the VMD folder:

<img src='./images/img_033.png' alt='img_033' width='900'/>

And the raw drivers look like the following:

<img src='./images/img_034.png' alt='img_034' width='900'/>

Go back up two levels and rename Drivers to F6Drivers:

<img src='./images/img_035.png' alt='img_035' width='900'/>

<details>
<summary><b>F6 Drivers</b></summary>

F6 is a historical term as legacy Windows Versions prompted to press F6 during the Windows Setup to install a storage controller driver from a Floppy Disk. We no longer need to press F6 and thankfully do not need to use a floppy disk.

</details>

Move F6Drivers to Downloads:

<img src='./images/img_036.png' alt='img_036' width='900'/>

The `.exe` and rest of the extracted folder can be deleted:

<img src='./images/img_037.png' alt='img_037' width='900'/>

Right click the wireless network driver file and select Rename:

<img src='./images/img_038.png' alt='img_038' width='900'/>

Change the `.exe` to `.zip`:

<img src='./images/img_039.png' alt='img_039' width='900'/>

<img src='./images/img_040.png' alt='img_040' width='900'/>

Right click the `.zip` file and select Extract:

<img src='./images/img_041.png' alt='img_041' width='900'/>

Navigate through the extracted folder to find the driver:

<img src='./images/img_042.png' alt='img_042' width='900'/>

In this case there is a production, windows, windows build and then drivers subfolder:

<img src='./images/img_043.png' alt='img_043' width='600'/>

<img src='./images/img_044.png' alt='img_044' width='600'/>

<img src='./images/img_045.png' alt='img_045' width='600'/>

<img src='./images/img_046.png' alt='img_046' width='600'/>

This contains a folder wth the model of wireless card:

<img src='./images/img_047.png' alt='img_047' width='900'/>

And the raw drivers look like the following:

<img src='./images/img_048.png' alt='img_048' width='900'/>

Go back up two levels and rename Drivers to NetworkDrivers:

<img src='./images/img_049.png' alt='img_049' width='900'/>

<img src='./images/img_050.png' alt='img_050' width='900'/>

Move NetworkDrivers to Downloads

<img src='./images/img_051.png' alt='img_051' width='900'/>

The `.exe` and rest of the extracted folder can be deleted:

<img src='./images/img_052.png' alt='img_052' width='900'/>

Right click the ISO file and select Mount:

<img src='./images/img_053.png' alt='img_053' width='900'/>

It's contents looks a follows:

<img src='./images/img_054.png' alt='img_054' width='900'/>

## Install GParted

GParted will be used to manually partition a Bootable USB. Open up Software and search for GParted:

<img src='./images/img_055.png' alt='img_055' width='900'/>

Select Install:

<img src='./images/img_056.png' alt='img_056' width='900'/>

Installation requires superuser privileges. Input your password and select authenticate:

<img src='./images/img_057.png' alt='img_057' width='600'/>

GParted is now installed:

<img src='./images/img_058.png' alt='img_058' width='900'/>

## Partitioning the USB Flash Dive

Launch GParted from the Start Screen:

<img src='./images/img_059.png' alt='img_059' width='900'/>

To repartition a USB requires superuser privileges. Input your password and select authenticate:

<img src='./images/img_060.png' alt='img_060' width='600'/>

The Bootable USB requires a FAT32 Boot Partition as some systems require a FAT32 Partition in order to display a Bootable Device in the BIOS Boot Menu. Unfortunately the maximum file size for the FAT32 file system is 4.0 GB and the install.wim exceeds this, so we need to make a NTFS partition also.

In the dropdown to the left, select the USB Flash Drive:

<img src='./images/img_061.png' alt='img_061' width='900'/>

Right click all partitions on the USB Flash Drive and select Unmount:

<img src='./images/img_062.png' alt='img_062' width='900'/>

Select Device → Create Partition Table:

<img src='./images/img_063.png' alt='img_063' width='900'/>

Select GPT and apply:

<img src='./images/img_064.png' alt='img_064' width='900'/>

Right click the unallocated space and select New:

<img src='./images/img_065.png' alt='img_065' width='900'/>

Change the options to:

* New Size: 1024
* Partition Name: BOOT
* File System: FAT32
* Label: Boot

Select Add:

<img src='./images/img_066.png' alt='img_066' width='900'/>

Right click the unallocated space and select New:

<img src='./images/img_067.png' alt='img_067' width='900'/>

Change the options to:

* Partition Name: INSTALL
* File System: NTFS
* Label: INSTALL

The new size should automatically populate the rest of the USB. Select Add:

<img src='./images/img_068.png' alt='img_068' width='900'/>

Select apply all operations:

<img src='./images/img_069.png' alt='img_069' width='900'/>

Select apply:

<img src='./images/img_070.png' alt='img_070' width='900'/>

Select Close:

<img src='./images/img_071.png' alt='img_071' width='900'/>

## Copying Files to USB

From the ISO copy everything except `sources` to the `BOOT` partition:

<img src='./images/img_072.png' alt='img_072' width='900'/>

<img src='./images/img_073.png' alt='img_073' width='900'/>

Create a new folder on the `BOOT` partition called `sources`:

<img src='./images/img_074.png' alt='img_074' width='900'/>

Open up `sources` on the ISO and in `BOOT`:

<img src='./images/img_075.png' alt='img_075' width='900'/>

Copy the `boot.wim` to the `BOOT` partitions `sources` folder:

<img src='./images/img_076.png' alt='img_076' width='900'/>

<img src='./images/img_077.png' alt='img_077' width='900'/>

From the ISO copy everything to the `INSTALL` partition:

<img src='./images/img_078.png' alt='img_078' width='900'/>

<img src='./images/img_079.png' alt='img_079' width='900'/>

From `downloads` copy `F6Drivers` and `NetworkDrivers` to the `INSTALL` Partition:

<img src='./images/img_080.png' alt='img_080' width='900'/>

<img src='./images/img_081.png' alt='img_081' width='900'/>

The installation media is now ready. Return to [Windows 11 Setup Guide](../readme.md).