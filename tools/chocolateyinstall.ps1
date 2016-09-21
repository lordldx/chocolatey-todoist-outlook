
$ErrorActionPreference = 'Stop';

$packageName= 'todoist-outlook'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://dateist.todoist.com.s3.amazonaws.com/Todoist_for_Outlook_2_7_8.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'todoist-outlook*'

  checksum      = '8CC1D29D4F5E95F4D527158F4EA8460DD0EF7FA79CD508D1C2EEC531113240E0'
  checksumType  = 'sha256'

  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















