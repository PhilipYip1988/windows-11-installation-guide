# Windows 11 Setup Guide

This is a Windows 11 Setup Guide for Dell Computers. In this guide I will look at installing Windows 11 on a Dell XPS 8960 equipped with a 13th Generation Intel Processor however the instructions in this guide will be applicable to other supported Dell Models.

## System Requirements

To install Windows 11 your Device should satisfy the following:

* 8th-15th Generation Intel Processor
* 256 GB Internal Drive (SSD SATA or SSD NVMe)
* 8 GB RAM (DDR4 or DDR5)
* BIOS Related Technologies which include UEFI, Secure Boot in Deployed Mode and TPM 2.0

<details>
<summary>Notes on Processors Generation</summary>

> The minimum generation of processor supported by Microsoft is 8th Generation (Q4 2017 and newer):

> * [Microsoft: Supported Processors for Windows 11 (22H2-24H2)](https://learn.microsoft.com/en-us/windows-hardware/design/minimum/supported/windows-11-22h2-supported-intel-processors).

> However Microsoft's Windows 11 supported processor list only accounts for the age of the processor and not the processors overall capabilities:

> * Windows 11 can therefore unofficially be installed on a system with an unsupported earlier generation of processor that has greater capabilities than the Intel Celeron N4000, which is a low end 8th Generation processor that is officially supported. For example a comparison can be made on Intel's website [Intel: N4000 vs i3-6100T](https://ark.intel.com/content/www/us/en/ark/compare.html?productIds=88200,128988).

> * Windows 11 can unofficially be clean installed on systems with a higher end 6th and 7th Generation processor without impediment and the upgrade install can be carried out after a minor change in the registry outlined by Microsoft [Microsoft: Other Ways to Install Windows 11](https://support.microsoft.com/en-gb/windows/ways-to-install-windows-11-e0edbbfb-cfc5-4011-868b-2ce77ac7c70e). 

> * I tested this out on an OptiPlex 7040 with a 6th Generation i5-6500. Windows 11 performs acceptably on this system and will likely run okay with an i7-7xxx, i5-7xxx, i3-7xxx, i7-6xxx, i5-6xxx and i3-6xxx core processor which all are fabricated using a 14 nm lithography. 

> * Performance is poor with an earlier generation of processor that uses a larger lithography. You can use the Intel website to compare your processor to the N4000.

> **In Microsoft's article, Microsoft state that they do not recommend installing Windows 11 on an unsupported device and that they are not liable if your device does not work properly. Essentially all of these systems are out of warranty and there is no official support by Microsoft or OEMs.**

</details>

<details>
<summary>Notes on Internal Drive</summary>

> In my testing Windows 11 performs acceptably on a system with a SSD internal drive and is practically unusable on a system with a HDD internal drive. 

> 500 GB SSDs are now very affordable and any HDD should be replaced before attempted installation of Windows 11.

</details>

<details>
<summary>Notes on RAM</summary>

> Any compatible system, including systems with an unsupported 6th or 7th Generation Intel processor should be using DDR4 or DDR5 RAM. Ideally the system should be equipped with 8 GB or RAM or superior, although the minimum requirement is 4 GB.

> A system with DDR3 or earlier will be too slow to run Windows 11.

</details>

<details>
<summary>Notes on BIOS Related Technologies</summary>

> The Basic Input Output System (BIOS) is a program that is pre-installed on a device motherboard. It is responsible for initialising and testing a device's components, loading the operating system, and managing data flow between the operating system and other devices.

> Unified Extensive Firmware Interface (UEFI) was first implemented in 2011 and is essentially a feature rich version of BIOS. The term BIOS and UEFI are normally used interchangeably and pre-UEFI systems have a "Legacy BIOS". Windows 11 won't run on a Legacy BIOS.

> A number of UEFI features were developed with Windows 8 in 2012:
> * The Advanced Configuration and Power Interface (ACPI) Table within the devices firmware is used to embed an OEM product key.
> * Secure Boot only allows a signed bootloader to Boot, greatly reducing the effect of preboot ransomware which previously commonly hijacked a Windows OS.
> * Trusted Platform Module (TPM) which is used to ensure that an operating system and firmware is authentic and is used to store device sensitive information like passwords, encryption keys, and fingerprints.

> In late 2020 a major BootHole vulnerability (CVE-2020-10713) was discovered which effectively allowed hackers to bypass SecureBoot: 
> * Devices with 5th Generation Intel Processors and newer were addressed BIOS Updates to address this security vulnerability. These systems should all have a BIOS Date that is in 2021 or later that addresses this exploit.
> * Devices with older firmware were end of life and never patched and so effectively no longer have Secure Boot. These devices are incompatible with Windows 11.

</details>

## Upgrade Install

* Performing an Upgrade Install

## Clean Install

### Creating Installation Media

* [Creating a Bootable USB (on Windows)](/bootable_usb_windows/readme.md)
* [Creating a Bootable USB (on Ubuntu)](/bootable_usb_ubuntu/readme.md)

### Updating the BIOS from USB

* [Update the BIOS from USB (Windows)](/bios_update_usb_windows/readme.md)
* Update the BIOS from USB (Ubuntu)

### BIOS Setup

* [Dell BIOS Setup](/bios_setup/readme.md)

### Clean Install

* [Performing a Clean Install from USB](/clean_install/readme.md)

## Autorestart

* Preventing Windows 11 from Automatically Restarting using Active Hours