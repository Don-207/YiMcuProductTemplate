@echo off
rem File: create-boot.cmd
rem Function: Add the bootloader image to this product repository.
rem Author: Don
rem Date: 2026-07-28
rem Version: 1.0.0
setlocal

python "%~dp0YiCore\scripts\yi_create_product.py" boot --product-root "%~dp0" %*
exit /b %ERRORLEVEL%
