$packageName = 'jar-cart'
$url = 'https://github.com/Sudhanshu-Ambastha/jar-cart/releases/download/v6.0/jar-cart-x86_64-windows.zip'
$checksum = '1dfe41127028dfef2713fdaab694134fcaf1d64dc333ed42eb328a5a17ea849c'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName $packageName `
                            -Url $url `
                            -UnzipLocation $toolsDir `
                            -Checksum $checksum `
                            -ChecksumType 'sha256'

Install-BinFile -Name 'jar-cart' -Path (Join-Path $toolsDir 'jar-cart.exe')
Install-BinFile -Name 'jc' -Path (Join-Path $toolsDir 'jar-cart.exe')