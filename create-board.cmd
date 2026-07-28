@echo off
rem File: create-board.cmd
rem Function: Create a board directly under this product repository.
rem Author: Don
rem Date: 2026-07-28
rem Version: 1.0.0
setlocal

python "%~dp0YiCore\scripts\yi_create_board.py" --output-root "%~dp0boards" %*
exit /b %ERRORLEVEL%
