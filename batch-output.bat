@echo off
SET WORKDIR="D:\your\input"
SET OUTPUTDIR="D:\your\output"
REM main profile
for %%B in (%WORKDIR%\*) do (your.exe -args "%%B".new.ext)
for %%B in (%WORKDIR%\*.new.ext) do (move "%%B" %OUTPUTDIR%)
