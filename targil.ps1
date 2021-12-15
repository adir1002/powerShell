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
    }ELSE{
        Write-Host "NO"
    }
}

Function targil7(){
    [int32]$number = Read-Host -Prompt "enter a number"
    if($number -gt 10){
        Write-Host "TOO MUCH"
    }ELSE{
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

Function targil9(){
    $ProcessNumber = (Get-Process).count
    if($ProcessNumber -gt 50){
        Write-Host 'TOO MUCH PROCESS : '$ProcessNumber -ForegroundColor Red
    }
}

Function targil10(){
    $ProcessTable = Get-Process | Select-Object processname, id | sort Id -Descending 
    Write-Host $ProcessTable
}

Function targil11(){
    $RunningStopped = (Get-Service | Select-Object Status, DisplayName |Where-Object {$_.Status -eq "Running" -or $_.Status -eq "Stopped"} ).count
    Write-Host 'There are ' $RunningStopped 'process in running or stopped'
}

Function targil12+13(){
    #targil12
    $ArrayInt = @()
    For($i = 0; $i -lt 10; $i++){
        $ArrayInt+= Get-Random -Maximum 10
    }
    Write-Host 'The array is: '$ArrayInt
    #targil13
    $MaxNumber = -1
    $MinNumber = 10
    foreach ($Number in $ArrayInt){
        if($Number -gt $MaxNumber){
            $MaxNumber = $Number
            }
        if($Number -lt $MinNumber){
            $MinNumber = $Number
            }
    }
    Write-Host 'Max number is: ' $MaxNumber 'Min number is: '$MinNumber
}

Function targil14(){
    Get-Process | Select-Object ProcessName | Where-Object {$_.ProcessName.Contains("svc")} | Write-Host
}

Function targil15(){
    $RunningServices = Get-Service | Select-Object DisplayName, Status |Where-Object {$_.Status -eq "Running" }
    Write-Host 'The running services: '
    Write-Host $RunningServices
}

Function targil17(){
    Rename-Computer -NewName "NewName" -DomainCredential Domain01\Admin01 -Restart
    #Rename-Computer -ComputerName "OldName" -NewName "NewName" -DomainCredential Domain01\Admin01 -Force
}

Function targil18(){
    $Size = -1
    $DynamicInput = do 
    { 
        $Input = Read-Host "Enter another number, or blank to finish"
        $Size++
        $Input
    } while ($Input -ne '')
    foreach ($Input in $DynamicInput) {
        Write-Host $Input
    }
    Write-Host 'The size is: ' $Size
}

targil18

