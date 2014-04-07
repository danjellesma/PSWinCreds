PSWinCreds
==========

Powershell Windows Credentials

PSWinCreds is an easy-to-use PowerShell library that can be included with an application or scheduled task allowing users to save encrypted user credentials.Works with the native Microsoft Powershell PSCredential object supporting local and Windows Active Directory users.

##### Usage:   

Include the library with your script
```powershell
. "C:\PSWinCreds\library.ps1"
```

Set credentials using the Set-WinCreds method, which will pop up a dialog prompting for a Username and Password.
```powershell
Set-WinCreds serviceaccountname
```

You can save the result of Get-WinCreds to a varaible to be used in your script later.
```powershell
PS C:\>$WinCreds = Get-WinCreds serviceaccountname
UserName           		Password
--------				--------
\serviceaccountname		System.Security.SecureString
```

