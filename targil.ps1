Function targil1(){
#Hello World with color
Write-Host 'Hello World!'-ForegroundColor DarkGreen -BackgroundColor Red
}

Function targil2(){
#convert bytes to GB
[Int32]$bytes = Read-Host -Prompt "Enter bytes"
$gbytes = $bytes / [Math]::Pow(2,20)
Write-Host $bytes  ' bytes is : ' $gbytes 'Gigabyes'
}

Function targil3(){
[String]$FirstString = Read-Host -Prompt "Enter your first string"
[String]$SecondString = Read-Host -Prompt "Enter your second string"
Write-Host "$FirstString$SecondString"
}

Function targil4(){
[array]$ArrayInt = 1,5,8,12,569, 33
Write-Host "The length of [$ArrayInt] is " $ArrayInt.Count
}

Function targil5(){
$Hash = @{Name = "adir"; ID = 123456; color = "Blue"}
Write-Host "hash keys: "$Hash.keys
Write-Host "hash values: "$Hash.Values
}

Function targil6(){
[String]$name = Read-Host -Prompt "Enter a name"
if ($name -eq "adir"){
Write-Host "YES"
}
ELSE{
Write-Host "NO"
}
}

Function targil7(){
[int32]$number = Read-Host -Prompt "enter a number"
if($number -gt 10){
Write-Host "TOO MUCH"
}
ELSE{
Write-Host "NOT TOO MUCH"
}
}

Function targil8(){
[int32]$FirstNumber = Read-Host -Prompt "enter a first number"
[int32]$SecondNumber = Read-Host -Prompt "enter a second number"
if($FirstNumber -gt 10 -or $SecondNumber -lt 6){
Write-Host "NOOOOOO"
}
}

targil8