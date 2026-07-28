<!--
File: README.md
Function: Describe the reusable YiCore MCU product repository template.
Author: Don
Date: 2026-07-27
Version: 1.0.0
-->

# Yi MCU Product Template

Use this GitHub template to create one repository per hardware product, such as
an ECG board, keyboard controller, or power board. Shared framework code stays
in the pinned `YiCore/` submodule; product repositories contain only board and
product differences.

## Create a product

1. Select **Use this template** on GitHub.
2. Clone the new repository and initialize only the dependencies required by
   a normal application:

   ```powershell
   git clone <new-repository-url>
   cd <new-repository-name>
   git submodule update --init --depth 1 YiCore
   git -C YiCore submodule update --init --depth 1 third_party/lwrb
   ```

3. Initialize MCUboot only when developing the bootloader:

   ```powershell
   git -C YiCore submodule update --init --depth 1 third_party/mcuboot
   ```

4. Create product content directly in the repository root:

   ```powershell
   .\create-board MyBoard
   .\create-app --board MyBoard
   .\create-boot
   .\create-test
   ```

`create-app` is required; `create-boot` and `create-test` are optional.

## Layout

```text
boards/                    Product PCB and DeviceTree description
firmware/
├─ common/                 MCU-generated/shared product glue, stored once
├─ images/
│  ├─ application/        Production image differences
│  ├─ bootloader/         Boot image differences
│  └─ test/               Manufacturing/board-test differences
├─ linker/                 Toolchain-specific memory descriptions
├─ projects/
│  ├─ keil/               Flat Keil project directory
│  └─ gcc/                Flat GCC/CMake project directory
└─ build/                  Ignored build output
Tools/                     Product-specific host applications
YiCore/                    Pinned shared framework submodule
```

Do not copy YiCore sources into the product. Update the submodule pointer only
after the product has passed its firmware and hardware validation.
