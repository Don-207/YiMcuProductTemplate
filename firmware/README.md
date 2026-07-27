<!--
File: README.md
Function: Define the shared multi-image firmware architecture.
Author: Don
Date: 2026-07-27
Version: 1.0.0
-->

# Firmware

`common/` and YiCore are shared by every image. Each image directory contains
only its entry, DeviceTree selection, version, and image-specific logic.

The template intentionally does not provide a linker address or MCU startup
file. Those values are product safety decisions and must be added after the
MCU, flash size, boot policy, and erase granularity are known.
