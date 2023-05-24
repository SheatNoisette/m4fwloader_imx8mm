# m4fwloader_imx8mm
Tool for loading firmware to M4 core on i.MX8M Mini from Linux Userspace.
Original source code from NXP by marek.novak@nxp.com, modified from
nsdrude-varigit.

This approach is not recommended by NXP, but it is useful for development
and debugging. Uboot should be used to load the firmware in production.

# Usage

To flash the firmware to the M4 core, use the following command:
```bash
$ m4fwloader 0x7E0000 your_firmware.bin
```
Please note that you must be root to run this command and you may need
to load a dummy firmware before Linux first to be able to load the real
firmware you want to use.

# Building

To build the tool, you need to have a adequate aarch64 toolchain installed.
Then you can build the tool by running:
```bash
$ make
```

# License
This program is licensed under the GPL version 2.0. For details see the file
`LICENSE` in the top-level directory.
Original code by Marek Novak: marek.novak@nxp.com
