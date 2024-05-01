<#
//Create backup folder
$today = get-date -Format MM-dd-yyyy
$path = "<path>\" + $today
mkdir $path


# Update ScratchPad.txt with current date
$path = "<path>ScratchPad.txt"
$date = Get-Date -Format "MM/dd/yyyy"
$regex = "\d{2}\/\d{2}\/\d{4}"
(Get-Content -path $path -Raw) -replace $regex, $date | Set-Content -path $path
Start-Process -FilePath $path


#>