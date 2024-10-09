# BIOS Setup for Windows 11

This guide looks at configuring the BIOS Setup in a Dell XPS 8960 for Windows 11.
Power up your Dell and press `F2` to enter the BIOS Setup:

<img src='./images/img_001.png' alt='img_001' width='900'/>

## Main Tab: System Information

This will take you to the Main tab which will give you details about your system such as:

* Model Number: XPS 8960
* BIOS Version: 2.9.1
* Processor: i7-13700 (13th Generation)
* Video: NVIDIA GeForce
* Storage: M.2 SSD 1024 GB
* System Memory: 16384 GB (DDR5)

<img src='./images/img_002.png' alt='img_002' width='900'/>

Navigation around the BIOS Setup uses the arrow keys `↑`, `↓`, `←`, and `→`.

## Advanced Tab: SATA/NVMe Operation Mode

Press `→` to get to the Advanced tab. In the Advanced Tab, the device configuration can be changed. In the vast majority of cases (unless another Operating System has been installed), the settings should be optimised for Windows 11 by default:

<img src='./images/img_003.png' alt='img_003' width='900'/>

Press `↓` until the SATA/NVMe Operation Mode is highlighted. Press `↵` to enter the field:

<img src='./images/img_004.png' alt='img_004' width='900'/>

The SATA/NVMe Operation Mode also known as the Storage Controller Operation is a setting that is often amended when installing another Operating System. 

For Windows the optimal setting is RAID which enables Intel VMD however this often requires loading of an Intel VMD preinstallation driver in order for the Operating System to recognise the Storage Controller. Note that a VMD driver is not available for Linux, so AHCI/NVMe has to be used for Linux.

<details>
<summary>Storage Controller Operation More Details...</summary>

The Storage Controllers are:

**AHCI/NVMe Operation (Independent Storage Controllers)**

The AHCI/NVMe configuration essentially allows each port to act independently and does not need an additional driver.

Advanced Host Controller Interface (AHCI)

* 2.5" Drives are attached to a system using a SATA Port.

Non Volatile Memory Express (NVMe)

* M.2 SSDs are attached to the NVMe Port. 

**RAID On (Combined Storage Controllers)**

Redundant Array of Independent Disks (RAID)

* RAID is essentially a generic term for combining two or more independent disks into one or more virtualised drives.

Intel have a number of technologies which allow the motherboard to group together with the system drives creating a virtual storage controller and a virtualised drive. This virtualised drive usually requires an additional driver. The name of this technology differs from generation to generation:

* Intel Rapid Storage Technology (RST)
    * Intel Volume Management Device (VMD)
    * Intel Optane

The main idea for example with Intel Optane was to combine a large capacity SATA HDD and low capacity M.2 SSD together into a single virtualised drive. This virtualised drive can use the larger capacity of the HDD and the speed of the SSD for caching purposes. The lower capacity cache SSD was referred to as an Optane Memory Module.

The Intel Volume Management Device combines newer processor technologies with virtualisation of the NVMe port. the virtual port and virtual drive has better performance over the M.2 port and NVMe SSD acting independently.

Note that Intel Optane was adopted when the price of high capacity SSDs were very high. It is recommended to replace an Intel Optane Cache SSD and HDD with a high capacity M.2 or SATA SSD which will give markedly improved performance.

</details>

Press `↓` until RAID On is selected. Press `↵` to make the change:

<img src='./images/img_005.png' alt='img_005' width='900'/>

Use `←` and `→` to highlight Yes and press `↵` to confirm the change:

<img src='./images/img_006.png' alt='img_006' width='900'/>

## Advanced Tab (Maintainance): Data Wipe

On some other models Dell Data Wipe may be in the Security Tab.

Press `↓` until Maintainance is highlighted. Press `↵` to enter the field:

<img src='./images/img_007.png' alt='img_007' width='900'/>

Highlight Data Wipe on Next Boot and press `↵` to enter the field:

<img src='./images/img_008.png' alt='img_008' width='900'/>

Press `↓` until Enabled is selected. Press `↵` to make the change:

<img src='./images/img_009.png' alt='img_009' width='900'/>

Press `↓` and highlight Data Wipe. Press `↵` to enter the field:

<img src='./images/img_010.png' alt='img_010' width='900'/>

Highlight your internal SSD. Press `↵` to begin the Dell Data Wipe:

<img src='./images/img_011.png' alt='img_011' width='900'/>

Press `↵` to Start the Drives Data Wipe:

<img src='./images/img_012.png' alt='img_012' width='900'/>

Use `←` and `→` to highlight Yes and press `↵` to confirm the data wipe

<img src='./images/img_013.png' alt='img_013' width='900'/>

The data wipe will proceed:

<img src='./images/img_014.png' alt='img_014' width='900'/>

The Data Wipe will be finished. Select OK:

<img src='./images/img_015.png' alt='img_015' width='900'/>

Press `Esc` to return to the previous field:

<img src='./images/img_016.png' alt='img_016' width='900'/>

Press `↑` and highlight Data Wipe on Next Boot. Press `↵` to enter the field:

<img src='./images/img_017.png' alt='img_017' width='900'/>

Press `↑` until Disabled is selected. Press `↵` to make the change:

<img src='./images/img_018.png' alt='img_018' width='900'/>

Press `Esc` to return to the previous field:

<img src='./images/img_019.png' alt='img_019' width='900'/>

<img src='./images/img_020.png' alt='img_020' width='900'/>

## Security Tab: TPM

Press `→` to get to the Security Tab. Windows 11 requires the Trusted Platform Module (TPM) to be enabled.

Press `↓` until Firmware TPM is highlighted, make sure it is enabled:

<img src='./images/img_021.png' alt='img_021' width='900'/>

## Security Tab: 

Windows 11 requires Secure Boot. Press `↓` until Secure Boot is highlighted and press `↵` to enter the field:

<img src='./images/img_022.png' alt='img_022' width='900'/>

Secure Boot should be Enabled and Secure Boot Mode should be in Deployed Mode:

<img src='./images/img_023.png' alt='img_023' width='900'/>

Press `Esc` to return to the previous field:

<img src='./images/img_024.png' alt='img_024' width='900'/>

## Boot Tab: Remove Old Boot Entries

Press `→` to get to the Boot Tab:

<img src='./images/img_025.png' alt='img_025' width='900'/>

Press `↓` until File Browser Del Boot Option is selected and press `↵` to enter the field:

<img src='./images/img_026.png' alt='img_026' width='900'/>

Press `↵` to remove any entries that correspond to Operating Systems that are no longer installed:

<img src='./images/img_027.png' alt='img_027' width='900'/>

Press `↵` to continue:

<img src='./images/img_028.png' alt='img_028' width='900'/>

Repeat the procedure for any other Operating SYstem no longer installed:

<img src='./images/img_029.png' alt='img_029' width='900'/>

<img src='./images/img_030.png' alt='img_030' width='900'/>

<img src='./images/img_031.png' alt='img_031' width='900'/>

## Exit

Press `F10` to Save and Exit:

<img src='./images/img_032.png' alt='img_032' width='900'/>

Use `←` and `→` to highlight Yes and press `↵` to confirm:

<img src='./images/img_033.png' alt='img_033' width='900'/>

The BIOS is now setup for Windows 11. Return to [Windows 11 Setup Guide](../readme.md).