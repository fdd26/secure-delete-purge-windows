
@REM Remove read-only attribute recursively
@REM Removes the Read-only flag from all files and directories.
attrib -R -A -S -H /S /D

@REM Take ownership of all files and subfolders recursively
@REM Takes ownership recursively. The /D Y flag auto-confirms prompts.
takeown /F . /R /D Y

@REM Grant full control to the Administrators group recursively
icacls . /grant Administrators:F /T /C /Q

@REM Optional: Remove all other permissions except Administrators
icacls . /reset /T /C /Q

@REM Grant full control to the Administrators group recursively
icacls . /grant Administrators:F /T /C /Q
