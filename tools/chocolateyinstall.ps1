
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://iweb.dl.sourceforge.net/project/frhed/1.%20Stable%20Releases/1.6.0/Frhed-1.6.0-exe.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'frhed*'

  checksum      = '3CB7B9E965E37A03D91CED39FCC824E8BA9F1E59492B3F544507FD4140BAA13F'
  checksumType  = 'sha256'

  validExitCodes= @(0)
}

Install-ChocolateyZipPackage $packageName $url $toolsDir


