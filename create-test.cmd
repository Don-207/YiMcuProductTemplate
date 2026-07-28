@echo off
rem File: create-test.cmd
rem Function: Add the board-test image to this product repository.
rem Author: Don
rem Date: 2026-07-28
rem Version: 1.0.0
setlocal

python "%~dp0YiCore\scripts\yi_create_product.py" test --product-root "%~dp0" %*
exit /b %ERRORLEVEL%
