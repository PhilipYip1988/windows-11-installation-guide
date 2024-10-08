# Windows 11 Setup Guide

This is a Windows 11 Setup Guide for Dell Computers. In this guide I will look at installing Windows 11 on a Dell XPS 8960 equipped with a 13th Generation Intel Processor however the instrutions will be applicable to other supported Dell Models.

<details>
<summary>Note On Unsupported Dell Systems</summary>

> The minimum generation of processor supported by Microsoft is 8th generation (Q4 2017 and newer):

> [Microsoft: Supported Processors for Windows 11](https://learn.microsoft.com/en-us/windows-hardware/design/minimum/supported/windows-11-22h2-supported-intel-processors)

> Microsoft's list only accounts for the age of the processor and not the processors overall capabilities. Windows 11 can therefore unofficially be installed on a system with an unsupported earlier generation of processor that has greater capabilities than the Intel Celeron N4000, which is a low end 8th generation processor that is officially supported. For example a comparison can be made on Intel's website [Intel: N4000 vs i3-6100T](https://ark.intel.com/content/www/us/en/ark/compare.html?productIds=88200,128988).

> Windows 11 can unofficially be clean installed on systems with a higher end 7th and 6th generation processor without impediment and the upgrade install can be carried out after a minor change in the registry outlined by Microsoft [Microsoft: Other Ways to Install Windows 11](https://support.microsoft.com/en-gb/windows/ways-to-install-windows-11-e0edbbfb-cfc5-4011-868b-2ce77ac7c70e). 

> I tested this out on an OptiPlex 7040 with a 6th Generation i5-6500. Windows 11 performs acceptably on this system and will likely run okay with an i7-7xxx, i5-7xxx, i3-7xxx, i7-6xxx, i5-6xxx and i3-6xxx processor which all have a 14 nm lithography. Performance is poor with an earlier generation of processor that has a 22 nm lithography. You can use the Intel website to compare your processor to the N4000.

> **In Microsoft's article, Microsoft state that they do not recommend installing Windows 11 on an unsupported device and that they are not liable if your device does not work properly. Essentially all of these systems are out of warranty and there is no official support by Microsoft or OEMs.**

> In my testing Windows 11 performs acceptably on a system with a SSD internal drive and abysmally on a system with a HDD internal drive. 500 GB SATA SSDs are now very affordable and any HDD should be replaced before attempted installation of Windows 11.

</details>

## Creating Installation Media

* Creating a Bootable USB (on Windows)
* [Creating a Bootable USB (on Ubuntu)](/bootable_usb_ubuntu/readme.md)

## Upgrade Install

* Performing an Upgrade Install

## Updating the BIOS from USB

* Create a BIOS USB (Windows)
* Create a BIOS USB (Linux)
* Update from BIOS USB

## BIOS Setup

* [Dell BIOS Setup for Windows 11](/bios_setup/readme.md)

## Clean Install

* Installing Windows 11 from USB
* System Drivers
* Windows Update
* Applications Update