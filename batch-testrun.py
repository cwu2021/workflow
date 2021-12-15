# try importing packages before deployment.
import package1
import package2
import package3
"""
1) try normal user to install Python 3.9 . popup priviledge when necessary.
https://www.python.org/ftp/python/3.9.9/python-3.9.9-amd64.exe

2) save as deploy-pip.bat for installation of missing packages.
@echo off
cd "C:\Users\myuser.mydomain\AppData\Local\Programs\Python\Python39"
Scripts\pip install package2
Scripts\pip install package3
pause

3) save as deploy.bat for production run.
@echo off
cd "C:\Users\myuser.mydomain\AppData\Local\Programs\Python\Python39"
REM variables should be changed accordingly.
.\python deploy.py var1 var2
pause
.\python deploy2.py var1 var2
pause
"""
