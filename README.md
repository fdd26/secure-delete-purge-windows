# secure-delete-purge-windows
Securely delete and purge Windows files and folders using US-DoD-M with 3 passes

The goal here is to "securely destroy" any sensitive files
on a legacy Windows Server or legacy Windows Desktop machine to be decommissioned permanently.

Once this is done, you should still mechanically crush the hard drive, if possible, for good measure.

File lists:
=============

	- sdelete-v161.exe - Only this older executable version 1.61 actually works properly on recent Windows Server, since v2.00 is buggy and crash.
	- destroy_permissions.bat - Use this VERY carefully !!! This will destroy any permissions that will prevent you from deleting files or folders on Windows Server.
	- del_1.bat - Delete the sub-folder named ".\1\" recursively in an infinite loop until everything is deleted.

How to use:
=============

	- Step 1: Move all your files into C:\1\ or D:\1\
	- Step 2: Open cmd.exe run as administrator
	- Step 3a: pushd "C:\1\"
	- Step 3b: pushd "D:\1\"
	- Step 4: Copy these git files into that folder
	- Step 5: Run destroy_permissions.bat on that folder
	- Step 6: Run del_1.bat

If it fails or is stuck in a loop, rerun destroy_permissions.bat
or manually fix the permissions, then run that script again.

	- Step 7: run sdelete-v161.exe to clear and zero free disk space on drive C: and D:

Enjoy!

Executable original files:
==========================

Sdelete v2.0.5+ BUGGY:
======================

	- https://learn.microsoft.com/en-us/sysinternals/downloads/sdelete
	- https://download.sysinternals.com/files/SDelete.zip

Sdelete v1.61 available somewhere in here:
==========================================

SDelete - Secure Delete v1.61
Copyright (C) 1999-2012 Mark Russinovich
Sysinternals - www.sysinternals.com

	- https://web.archive.org/web/20120815000000*/https://download.sysinternals.com/files/



