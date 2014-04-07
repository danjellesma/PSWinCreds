PSWinCreds
==========

Powershell Windows Credentials

PSWinCreds is an easy-to-use PowerShell library that can be included with an application or scheduled task allowing users to save encrypted user credentials.Works with the native Microsoft Powershell PSCredential object supporting local and Windows Active Directory users.

Usage:   
```powershell
. "C:\PSWinCreds\library.ps1"
```

```powershell
Set-WinCreds serviceaccountname
```

```powershell
PS C:\>Get-WinCreds serviceaccountname
UserName           		Password
--------				--------
\serviceaccountname		System.Security.SecureString
```

