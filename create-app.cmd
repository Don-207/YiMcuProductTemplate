@echo off
rem File: create-app.cmd
rem Function: Create the application directly in this product repository.
rem Author: Don
rem Date: 2026-07-28
rem Version: 1.0.0
setlocal

python "%~dp0YiCore\scripts\yi_create_product.py" app --product-root "%~dp0" %*
exit /b %ERRORLEVEL%
