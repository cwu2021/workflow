@echo off
REM Oracle Virtualization Blog
REM kvm CPU:2(host) RAM:4096MB HDD:64GB
REM shift-F10 at the first screen to launch cmd
regedit

REM Commenting multiple lines in DOS batch file (stackoverflow.com)
goto comment
 HKLM\SYSTEM\SETUP New=>Key\LabConfig New=>DWORD(32i-bit):
 BypassTPMCheck
 BypassRAMCheck
 BypassSecureBootCheck
:comment
