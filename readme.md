# Dell Systems Windows 11 Setup Guide

This is a Windows 11 Setup Guide for Dell Computers. This guide looks at installing Windows 11 on a Dell XPS 8960 equipped with a 13th Generation Intel Processor however the instructions in this guide will be applicable to other supported Dell Models.

<details>
<summary>About This Guide</summary>

> This guide is **NOT** official Dell or Microsoft Documentation. I do not work for either company however have been recognised by both companies for my expertise. I was recognised by Dell as a Dell Community Rockstar and by Microsoft as a Microsoft MVP.

> If you found this GitHub repository useful. Please star it on GitHub so it gets promoted to more people.

</details>

## System Requirements

The following table shows the relative performance for an i5 processor across generations:

| Generation | Model        | Release Year | Windows Version Support                 | Single-Core Score | Multi-Core Score | Single-Core Increase | Multi-Core Increase |
|------------|-------------|-------------|----------------------------------------|-----------------|-----------------|-------------------|------------------|
| 1st Gen    | i5-650      | 2010        | Windows XP (unofficial)<br>Windows 7<br>Windows 8 | 456             | 934             | —                 | —                |
| 2nd Gen    | i5-2500K    | 2011        | Windows 7<br>Windows 8<br>Windows 10  | 1,017           | 3,496           | 2.23x             | 3.74x            |
| 3rd Gen    | i5-3570K    | 2012        | Windows 7<br>Windows 8<br>Windows 10  | 1,428           | 4,657           | 3.13x             | 4.98x            |
| 4th Gen    | i5-4670K    | 2013        | Windows 7<br>Windows 8<br>Windows 10  | 1,696           | 5,532           | 3.72x             | 5.92x            |
| 5th Gen    | i5-5675C    | 2015        | Windows 7<br>Windows 8<br>Windows 10  | 1,825           | 6,208           | 4.00x             | 6.64x            |
| 6th Gen    | i5-6600K    | 2015        | Windows 7<br>Windows 8<br>Windows 10  | 1,926           | 6,963           | 4.23x             | 7.45x            |
| 7th Gen    | i5-7600K    | 2017        | Windows 10<br>Windows 11              | 2,092           | 7,871           | 4.59x             | 8.43x            |
| 8th Gen    | i5-8600K    | 2017        | Windows 10<br>Windows 11              | 2,291           | 9,309           | 5.02x             | 9.96x            |
| 9th Gen    | i5-9600K    | 2018        | Windows 10<br>Windows 11              | 2,591           | 10,430          | 5.68x             | 11.16x           |
| 10th Gen   | i5-10600K   | 2020        | Windows 10<br>Windows 11              | 3,294           | 12,606          | 7.23x             | 13.50x           |
| 11th Gen   | i5-11600K   | 2021        | Windows 10<br>Windows 11              | 3,623           | 13,556          | 7.96x             | 14.52x           |
| 12th Gen   | i5-12600K   | 2021        | Windows 10<br>Windows 11              | 3,936           | 15,213          | 8.63x             | 16.28x           |
| 13th Gen   | i5-13600K   | 2022        | Windows 10<br>Windows 11              | 4,426           | 16,913          | 9.70x             | 18.09x           |
| 14th Gen   | i5-14600K   | 2024        | Windows 11                            | 5,000           | 18,000          | 10.96x            | 19.28x           |

Windows 11 was originally meant to support only 10th and 11th Generation Processors and newer but Microsoft scaled back the system requirements to allow 8th and 9th Generation Processors. The relative performance of lower end 8th and 9th generation processors isn't significantly higher than upper end 6th and 7th generation processors and many users have reported Windows 11 to work okay on an i5 or i7 6th or 7th Generation Processor.

To install Windows 11 your Device should satisfy the following **Soft** System Requirements:

* 8th-15th Generation Intel Core or 2nd-7th Generation AMD Ryzen Processor
* 256 GB Internal Drive (SSD SATA or SSD NVMe)
* 8 GB RAM (DDR4 or DDR5)
* BIOS Related Technologies which include UEFI, Secure Boot in Deployed Mode and TPM 2.0

<details>
<summary><b>Soft</b> and <b>Hard</b> System Requirements</summary>

> Microsoft have two levels of System Requirements for Windows 11 *Soft* and *Hard*.

> The **Soft** System Requirements are:

> * 8th-15th Generation Intel Core or 2nd-7th Generation AMD Ryzen Processor
> * 256 GB Internal Drive (SSD SATA or SSD NVMe)
> * 8 GB RAM (DDR4 or DDR5)
> * BIOS Related Technologies which include UEFI, Secure Boot in Deployed Mode and TPM 2.0

> The **Hard** System Requirements relax the processor, memory and TPM requirement:

> * 6th-7th Generation Intel Core or 1st Generation AMD Ryzen Processor
> * 4 GB RAM (DDR4 or DDR5)
> * BIOS Related Technologies which include UEFI, Secure Boot in Deployed Mode with TPM 1.2

> Microsoft have set up Windows 11 Installation Media to allow Clean Installation on a Device that meets **Hard** requirements, as a user who is performing a Clean installation usually has more technical knowledge and acknowledge the risks.

> Microsoft have set up the Windows 11 Upgrade Install to block an Upgrade Installation on a Device that meets **Hard** requirements as Clean installation which prevents accidental upgrades on Devices that Microsoft don't fully support.The upgrade install can be carried out after the user applies a registry edit outlined by Microsoft [Microsoft: Other Ways to Install Windows 11](https://support.microsoft.com/en-gb/windows/ways-to-install-windows-11-e0edbbfb-cfc5-4011-868b-2ce77ac7c70e). Once again a user that can edit the registry usually has more technical knowledge and acknowledge the risks.

> **In Microsoft's article, Microsoft state that they do not recommend installing Windows 11 on an unsupported device and that they are not liable if your device does not work properly. Essentially all of these systems are out of warranty and there is no official support offered by Microsoft or Device Manufacturers.**

</details>

<details>
<summary>Notes on Supported Processors</summary>

> The minimum generation of Intel processor in Microsoft's *Soft* Requirement is an 8th Generation (Q4 2017 and newer):

> * [Microsoft: Supported Intel Processors for Windows 11 (22H2-24H2)](https://learn.microsoft.com/en-us/windows-hardware/design/minimum/supported/windows-11-22h2-supported-intel-processors).

> The minimum generation of AMD processor in Microsoft's *Hard* Requirement is 2nd Generation Ryzen (2018 and newer):

> * [Microsoft: Supported AMD Processors for Windows 11 (22H2-24H2)](https://learn.microsoft.com/en-us/windows-hardware/design/minimum/supported/windows-11-supported-amd-processors).

> The *Soft* Requirement processor list only accounts for the date of manufacturer of the processor and not the processors overall capabilities:

> * The Intel Celeron N4000 manufactured at the same time as 8th Core Generation Processors for example is a low end processor that is listed in Microsoft's *Soft* Requirements. This processor as a consequence has worse specifications than a high end 6th or 7th Generation Processor. A comparison can be made on Intel's website [Intel: N4000 vs i3-6100T](https://ark.intel.com/content/www/us/en/ark/compare.html?productIds=88200,128988). It therefore passes the *Hard* System Requirements.

</details>

<details>
<summary>Notes on Internal Drive</summary>

> In my testing Windows 11 performs acceptably on a system with a SSD internal drive and is so slow that it is practically unusable on a system with a HDD internal drive because a HDD has a much slower access time. 

> 500 GB SSDs are now very affordable and any HDD should be replaced before attempted installation of Windows 11.

> Look at your Device's Service Manual, to see how hard it is to access the internal drive and to check if the internal drive is replaceable or soldered onto the motherboard (this is not normally done with hard drives which are bulkier). [Dell: Manuals](https://www.dell.com/support/home/en-uk?app=manuals).

</details>

<details>
<summary>Notes on RAM</summary>

> Any Device, including Device's which only satisfy *Hard* System Requirements should be using DDR4 or DDR5 RAM. Ideally the Device should be equipped with 8 GB or RAM or superior, satisfying the *Soft* requirement, although the *Hard* minimum requirement is 4 GB.

> A Device with DDR3 or earlier will be too slow to run Windows 11.

> Look at your Device's Service Manual, to see how hard it is to access the memory module and to check if the memory module is replaceable or soldered onto the motherboard. [Dell: Manuals](https://www.dell.com/support/home/en-uk?app=manuals).

</details>

<details>
<summary>Notes on BIOS Related Technologies</summary>

> The Basic Input Output System (BIOS) is a program that is pre-installed on a device motherboard. It is responsible for initialising and testing a device's components, loading the operating system, and managing data flow between the operating system and other devices.

> Unified Extensive Firmware Interface (UEFI) was first implemented in 2011 and is essentially a feature rich version of BIOS. The term BIOS and UEFI are normally used interchangeably and pre-UEFI Device's have a "Legacy BIOS" which is below Windows 11 *Hard* System Requirements. 

> A number of UEFI features were developed with Windows 8 in 2012:
> * The Advanced Configuration and Power Interface (ACPI) Table within the devices firmware is used to embed an OEM product key.
> * Secure Boot only allows a signed bootloader to Boot, greatly reducing the effect of preboot ransomware which previously commonly hijacked a Windows OS.
> * Trusted Platform Module (TPM) which is used to ensure that an operating system and firmware is authentic and is used to store device sensitive information like passwords, encryption keys, and fingerprints.

> In late 2020 a major BootHole vulnerability (CVE-2020-10713) was discovered which effectively allowed hackers to bypass SecureBoot: 
> * Devices with 5th Generation Intel Processors and newer were addressed BIOS Updates to address this security vulnerability. These Device's should all have a BIOS Date that is in 2021 or later that addresses this exploit.
> * Devices with older firmware were end of life and never patched and so effectively no longer have Secure Boot. These devices are incompatible with Windows 11 *Hard* System Requirements.

</details>

## Upgrade Install

* [Windows 11 Upgrade Assistant](./upgrade_assistant/readme.md)
* [Performing an Upgrade Install from Installation ISO or USB](./upgrade_from_installation_media/readme.md)

## Clean Install

### Creating Installation Media

* [Creating a Bootable USB (on Windows)](./bootable_usb_windows/readme.md)
    * [Slipstreaming the Dell Driver Pack](./bootable_usb_windows/slipstream_powershell)
* [Creating a Bootable USB (on Ubuntu)](./bootable_usb_ubuntu/readme.md)

### Updating the BIOS from USB

* [Update the BIOS from USB (on Windows)](./bios_update_usb_windows/readme.md)
* [Update the BIOS from USB (on Ubuntu)](./bios_update_usb_ubuntu/readme.md)

### BIOS Setup

* [Dell BIOS Setup](./bios_setup/readme.md)

### Clean Install

* [Performing a Clean Install from USB](./clean_install/readme.md)
