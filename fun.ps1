
####Set Launch Size Columns and Rows under Windows Terminal Startup settings to 150 x 50 to ensure visuals display correctly.

$OutputEncoding = [System.Text.Encoding]::UTF8
[console]::InputEncoding = [System.Text.Encoding]::UTF8
[console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::CursorVisible = $false





function spin{
    $stats.lineBank.value -= 5
    $stats.lineSpins.value += 1
    $spinningSign.PSOBject.Properties | ForEach-Object{
      $host.UI.RawUI.CursorPosition = @{ X = $_.Value.xcord; Y = $_.Value.ycord}
      Write-Host $_.Value.text
    }
    $stats.PSOBject.Properties | ForEach-Object{
    $host.UI.RawUI.CursorPosition = @{ X = $_.Value.xcord; Y = $_.Value.ycord }
    Write-Host $_.Value.value
    }
    $stats | ConvertTo-Json -Depth 2 | Out-File $configFile




   
    while($spinCount -lt 18){
    $spinCount = 0
    if ($spinCount -lt 6) {
    spinSlot -slotPosition $slot1
    spinSlot -slotPosition $slot2
    spinSlot -slotPosition $slot3
    Start-Sleep -milliseconds 115
    } 

    if ($spinCount -gt 5 -and $spincount-lt 13){
    $result1 = Get-Random -Minimum 1 -Maximum 32
        switch($result1){
        {$result1 -le 16} { $result1 = 0 }
        {$result1 -ge 16 -and $result1 -le 28} { $result1 = 1 }
        {$result1 -gt 28 -and $result1 -lt 32} { $result1 = 2 }
        {$result1 -eq 32} { $result1 = 3 }
      }
    drawSlot -slotPosition $slot1 -symbol $symbols[$result1]
    spinSlot -slotPosition $slot2
    spinSlot -slotPosition $slot3
    Start-Sleep -milliseconds 115
    }

    if ($spinCount -ge 12 -and $spincount -lt 18){
    $result2 = Get-Random -Minimum 1 -Maximum 32
        switch($result2){
        {$result2 -le 16} { $result2 = 0 }
        {$result2 -ge 16 -and $result2 -le 28} { $result2 = 1 }
        {$result2 -gt 28 -and $result2 -lt 32} { $result2 = 2 }
        {$result2 -eq 32} { $result2 = 3 }
      }
    drawSlot -slotPosition $slot2 -symbol $symbols[$result2]
    spinSlot -slotPosition $slot3
    Start-Sleep -milliseconds 115
    }
    if ($spinCount -eq 18){
          $result3 = Get-Random -Minimum 1 -Maximum 32


    switch($result3){
        {$result3 -le 16} { $result3 = 0 }
        {$result3 -ge 16 -and $result3 -le 28} { $result3 = 1 }
        {$result3 -gt 28 -and $result3 -lt 32} { $result3 = 2 }
        {$result3 -eq 32} { $result3 = 3 }
      }
   
    drawSlot -slotPosition $slot3 -symbol $symbols[$result3]
    Start-Sleep -milliseconds 115

      if ($result1 -eq $result2 -and $result2 -eq $result3) {
        switch($result1){
          0 { $stats.lineBank.value += $cherrySymbol.payout; $stats.cherryWins.value += 1 }
          1 { $stats.lineBank.value += $owlSymbol.payout; $stats.owlWins.value += 1 }
          2 { $stats.lineBank.value += $barSymbol.payout; $stats.barWins.value += 1 }
          3 { $stats.lineBank.value += $sevenSymbol.payout; $stats.sevenWins.value += 1 }
        }
        $stats.lineWins.value += 1
    }

    $spinCount++
    
  }
    $spinAgainSign.PSOBject.Properties | ForEach-Object{
    $host.UI.RawUI.CursorPosition = @{ X = $_.Value.xcord; Y = $_.Value.ycord }
    Write-Host $_.Value.text
    }

    Read-Host
    spin
  }


}



$sevenSymbol = [PSCustomObject]@{
name = "Seven"
line1 = @{text = "*****"; color = "Green"}
line2 = @{text = "  ** "; color = "Green"}
line3 = @{text = " **  "; color = "Green"}
payout = 1000000
}

$barSymbol = [PSCustomObject]@{
name = "Bar"
line1 = @{text = " [ ] "; color = "DarkYellow"}
line2 = @{text = " | | "; color = "DarkYellow"}
line3 = @{text = " [ ] "; color = "DarkYellow"}
payout = 100000
}


$owlSymbol = [PSCustomObject]@{
name = "Owl"
line1 = @{text = " ^-^ "; color = "Magenta"}
line2 = @{text = " ( ) "; color = "Magenta"}
line3 = @{text = " > < "; color = "Yellow"}
payout = 50
}

$cherrySymbol = [PSCustomObject]@{
name = "Cherry"
line1 = @{text = "  ,  "; color = "Green"}
line2 = @{text = " (_) "; color = "Red"}
line3 = @{text = "     "; color = "Red"}
payout = 25
}

$emptySymbol = [PSCustomObject]@{
line1 = @{text = "     "; color = "(get-host).ui.rawui.ForegroundColor"}
line2 = @{text = "     "; color = "(get-host).ui.rawui.ForegroundColor"}
line3 = @{text = "     "; color = "(get-host).ui.rawui.ForegroundColor"}
}


$slot1 = [PSCustomObject]@{
cord1 = @{ X = 22; Y = 15 }
cord2 = @{ x = 22; Y = 16 }
cord3 = @{ X = 22; Y = 17 }
}

$slot2 = [PSCustomObject]@{
cord1 = @{ X = 32; Y = 15 }
cord2 = @{ x = 32; Y = 16 }
cord3 = @{ X = 32; Y = 17 }
}

$slot3 = [PSCustomObject]@{
cord1 = @{ X = 42; Y = 15 }
cord2 = @{ x = 42; Y = 16 }
cord3 = @{ X = 42; Y = 17 }
}

$symbols = @($cherrySymbol, $owlSymbol, $barSymbol, $sevenSymbol)

$spinSign = [PSCustomObject]@{
line1= @{text="[]~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]"; xcord= 15; ycord= 30}
line2= @{text="|                                    |"; xcord= 15; ycord= 31}
line3= @{text="|        Press Enter to spin!        |"; xcord= 15; ycord= 32}
line4= @{text="|                                    |"; xcord= 15; ycord= 33}
line5= @{text="[]_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~[]"; xcord= 15; ycord= 34}
}

$spinningSign = [PSCustomObject]@{
line1= @{text="[]~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]"; xcord= 15; ycord= 30}
line2= @{text="|                                    |"; xcord= 15; ycord= 31}
line3= @{text="|             Spinning...            |"; xcord= 15; ycord= 32}
line4= @{text="|                                    |"; xcord= 15; ycord= 33}
line5= @{text="[]_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~[]"; xcord= 15; ycord= 34}
}




$spinAgainSign = [PSCustomObject]@{
line1= @{text="[]~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]"; xcord= 15; ycord= 30}
line2= @{text="|                                    |"; xcord= 15; ycord= 31}
line3= @{text="|     Press Enter to spin again!     |"; xcord= 15; ycord= 32}
line4= @{text="|                                    |"; xcord= 15; ycord= 33}
line5= @{text="[]_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~[]"; xcord= 15; ycord= 34}
}



$statsBorderBox = [PSCustomObject]@{
Line1 = @{text="[]~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]"; xcord= 80; ycord=5}
line2 = @{text="|                                      |"; xcord= 80; ycord=6}
line3 = @{text="|           Slot Machine Stats         |"; xcord= 80; ycord=7}
line4 = @{text="|                                      |"; xcord= 80; ycord=8}
line5 = @{text="|  Starting Money is `$500.             |"; xcord= 80; ycord=9}
line7 = @{text="|                                      |"; xcord= 80; ycord=10}
line8 = @{text="|  Costs `$5 a spin.                    |"; xcord= 80; ycord=11}
line10 = @{text="|                                      |"; xcord= 80; ycord=12}
line11 = @{text="|  Bank: $                             |"; xcord= 80; ycord=13}
line12 = @{text="|  Total Spins:                        |"; xcord= 80; ycord=14}
line13 = @{text="|  Total Wins:                         |"; xcord= 80; ycord=15}
line14 = @{text="|  Cherry Wins {12.5%}:                |"; xcord= 80; ycord=16}
line15 = @{text="|  Owl Wins {5.3%}:                    |"; xcord= 80; ycord=17}
line16 = @{text="|  Bar Wins {0.082%}:                  |"; xcord= 80; ycord=18}
line17 = @{text="|  7 Wins {0.00305%}:                  |"; xcord= 80; ycord=19}
line18 = @{text="|  Total Winnings: $                   |"; xcord= 80; ycord=20}
line19 = @{text="|                                      |"; xcord= 80; ycord=21}
line20 = @{text="[]~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]"; xcord= 80; ycord=22}
}



$slotMachine =[PSCustomObject]@{
line1= @{text = "                              .-------."; xcord= 0; ycord=1}
line2= @{text="                              |Jackpot|"; xcord= 0; ycord=2}
line3=@{text="                ______________|_______|________________"; xcord = 0; ycord= 3}
line4 =@{text="              ||   _   _       _   _   _   _   _   _   ||"; xcord = 0; ycord = 4}
line5 =@{text="              ||  / \ / \     / \ / \ / \ / \ / \ / \  ||";xcord = 0; ycord =5}
line6=@{text="              || | P | S |   | C | A | S | I | N | O | ||";xcord =0; ycord =6}
line7=@{text="              ||  \_/ \_/     \_/ \_/ \_/ \_/ \_/ \_/  ||"; xcord= 0; ycord =7}
line8=@{text="              ||_______________________________________||"; xcord= 0; ycord =8}
line9=@{text="                 ||                               ||";xcord= 0; ycord =9}
line10=@{text="                 ||                               ||";xcord =0; ycord =10}
line11=@{text="                 ||                               ||";xcord =0; ycord =11}
line12=@{text="                 || |~~~~~~~~~~~~~~~~~~~~~~~~~~~| || __";xcord =0; ycord =12}
line13=@{text="                 || |_______   _______   _______| ||(__)";xcord =0; ycord =13}
line14=@{text="                 ||*|       |*|       |*|       |*|| ||";xcord =0; ycord =14}
line15=@{text="                 ||*|       |*|       |*|       |*|| ||";xcord =0; ycord =15}
line16=@{text="                 ||*|       |*|       |*|       |*|| ||";xcord =0; ycord =16}
line17=@{text="                 ||*|       |*|       |*|       |*|| || ";xcord =0; ycord =17}
line18=@{text="                 ||*|_______|*|_______|*|_______|*||_//";xcord =0; ycord =18}
line19=@{text="                 || |~~~~~~~~~~~~~~~~~~~~~~~~~~~| ||_/";xcord =0; ycord =19}
line20=@{text="                 ||                               ||";xcord =0; ycord =20}
line21=@{text="                 |===___________________________===|";xcord =0; ycord =21}
line22=@{text="                 |  /___________________________\  |";xcord =0; ycord =22}
line23=@{text="                 |   |                         |   |";xcord =0; ycord =23}
line24=@{text="                _|    \_______________________/    |_";xcord =0; ycord =24}
line25=@{text="               (_____________________________________)";xcord =0; ycord =25}
}

$configFile = $PSScriptRoot + "\config.json"




function profileCheck {
if(!(test-path $configFile)){
  $stats =[PSCustomObject]@{
  lineBank = @{Value=500; xcord= 90; ycord= $statsBorderBox.line11.yCord}
  lineSpins = @{Value=0;xcord=96;ycord = $statsBorderBox.line12.ycord}
  lineWins =@{Value=0;xcord=95;ycord = $statsBorderBox.line13.ycord}
  cherryWins=@{Value=0;xcord=104;ycord = $statsBorderBox.line14.ycord}
  owlWins =@{Value=0;xcord=100;ycord = $statsBorderBox.line15.ycord}
  barWins =@{Value=0;xcord=102;ycord = $statsBorderBox.line16.ycord}
  sevenWins =@{Value=0;xcord=102;ycord = $statsBorderBox.line17.ycord}
  totalWinnings = @{Value=0;xcord=100;ycord = $statsBorderBox.line18.ycord}
  }
  $stats | ConvertTo-Json -Depth 2 | Out-File $configFile

}
else{
  write-host "Config file exists."
   $stats = Get-Content $configFile | ConvertFrom-Json

}

}

profileCheck

$stats = Get-Content $configFile | ConvertFrom-Json


Clear-Host

$slotMachine.PSOBject.Properties | ForEach-Object{
$host.UI.RawUI.CursorPosition = @{ X = $_.Value.xcord; Y = $_.Value.ycord }
Write-Host $_.Value.text

}


$statsBorderBox.PSOBject.Properties | ForEach-Object{
$host.UI.RawUI.CursorPosition = @{ X = $_.Value.xcord; Y = $_.Value.ycord }
Write-Host $_.Value.text

}

$stats.PSOBject.Properties | ForEach-Object{
$host.UI.RawUI.CursorPosition = @{ X = $_.Value.xcord; Y = $_.Value.ycord }
Write-Host $_.Value.value
}


$spinSign.PSOBject.Properties | ForEach-Object{
$host.UI.RawUI.CursorPosition = @{ X = $_.Value.xcord; Y = $_.Value.ycord }
Write-Host $_.Value.text

}

function spinSlot{
  Param( [PSCustomObject]$slotPosition)



$Host.UI.RawUI.CursorPosition = $slotPosition.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slotPosition.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slotPosition.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color
}


function drawSlot{
  Param([PSCustomObject]$slotPosition,
  [PSCustomObject]$symbol)

$Host.UI.RawUI.CursorPosition = $slotPosition.cord1
Write-Host $symbol.line1.text -ForegroundColor $symbol.line1.color
$Host.UI.RawUI.CursorPosition = $slotPosition.cord2
Write-Host $symbol.line2.text -ForegroundColor $symbol.line2.color
$Host.UI.RawUI.CursorPosition = $slotPosition.cord3
Write-Host $symbol.line3.text -ForegroundColor $symbol.line3.color
}

Read-Host
spin





