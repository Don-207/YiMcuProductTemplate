<!--
File: context.md
Function: Provide a compact handoff template for future development sessions.
Author: Don
Date: 2026-07-27
Version: 1.0.0
-->

# Product Context

## Repository

- Product: `PRODUCT`
- Local path: `LOCAL_PATH`
- Remote: `OWNER/REPOSITORY`
- MCU: `MCU`
- Board: `boards/BOARD/`
- YiCore commit: `YICORE_COMMIT`
- Keil version: `KEIL_VERSION`
- GCC version: `GCC_VERSION`
- Debug probe: `DEBUG_PROBE`

## Memory and boot

- Flash layout: `UNDEFINED`
- Application vector address: `UNDEFINED`
- Validation/signature policy: `UNDEFINED`
- Rollback policy: `UNDEFINED`
- Watchdog policy: `UNDEFINED`

Do not implement application relocation or production boot behavior until these
items are reviewed.

## Validation

- Keil application: `NOT_RUN`
- GCC application: `NOT_RUN`
- GCC bootloader: `NOT_RUN`
- GCC test: `NOT_RUN`
- Hardware bench test: `NOT_RUN`

## New-session prompt

> Read `context.md`, run `git status -sb`, and continue from the current files.
> Do not modify YiCore unless the task explicitly requires a framework change.

## Rules

- New files contain function, author Don, date, and version headers.
- New functions and variables have meaningful comments.
- Shared code is stored once under `firmware/common/` or YiCore.
- Generated files and build output are not committed.
