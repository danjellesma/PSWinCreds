<# 
 .Synopsis
  Manages using saved Windows Credentials in Powershell.

 .Description
  Displays a visual representation of a calendar. This function supports multiple months
  and lets you highlight specific date ranges or days.

 .Parameter credName
  The name of the file you will be storing (adds .xml extension automatically).

 .Example
   # Save credentials to a local file.
   New-WinCreds -credName "exampleUser"

 .Example
   # Retrieve credentials to be used.
   $creds = Get-WinCreds -credName "exampleUser"

 .Version
 1.1 - 4/10/14

 .Author
 Dan Jellesma
#>

Function Get-WinCreds
{
param([string]$credName)
	
	$path = "C:\$credName.xml"
	$import = Import-CLixml $path
	 
	$Username = $import.Username 
	$SecurePassword = $import.Password | ConvertTo-SecureString
	 
	$Credential = New-Object System.Management.Automation.PSCredential $Username, $SecurePassword
	return $Credential
}

Function New-WinCreds 
{
param ([string]$credName = "creds")

	$Credential = Get-Credential;
	$export = "" | Select-Object Username, Password
	 
	$export.Username = $Credential.Username
	$export.Password = $Credential.Password | ConvertFrom-SecureString

	$path = "C:\$credName.xml"
	 
	$export | Export-Clixml $path
	Write-Host "Credential Save Complete"
}