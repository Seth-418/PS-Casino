
####Set Launch Size Columns and Rows under Windows Terminal Startup settings to 150 x 50 to ensure visuals display correctly.

$OutputEncoding = [System.Text.Encoding]::UTF8
[console]::InputEncoding = [System.Text.Encoding]::UTF8
[console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::CursorVisible = $false


clear

Write-Host 

write-host "
                              .-------.
                              |Jackpot|
                ______________|_______|________________
              ||   _   _       _   _   _   _   _   _   ||
              ||  / \ / \     / \ / \ / \ / \ / \ / \  ||
              || ( P | S )   ( C | A | S | I | N | O ) ||
              ||  \_/ \_/     \_/ \_/ \_/ \_/ \_/ \_/  ||
              ||_______________________________________||
                 ||                               ||
                 ||                               ||
                 ||                               ||
                 || |~~~~~~~~~~~~~~~~~~~~~~~~~~~| || __
                 || |_______   _______   _______| ||(__)
                 ||*|       |*|       |*|       |*|| ||
                 ||*|       |*|       |*|       |*|| ||
                 ||*|       |*|       |*|       |*|| ||
                 ||*|       |*|       |*|       |*|| || 
                 ||*|_______|*|_______|*|_______|*||_//
                 || |~~~~~~~~~~~~~~~~~~~~~~~~~~~| ||_/
                 ||                               ||
                 |===___________________________===|
                 |  /___________________________\  |
                 |   |                         |   |
                _|    \_______________________/    |_
               (_____________________________________)
"

function spin{

  $Host.UI.RawUI.CursorPosition = @{ X = 0; Y = 28 }
write-host $spinningSign

$Host.UI.RawUI.CursorPosition = $slot1.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot1.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot1.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

Start-Sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot1.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot1.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot1.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

Start-Sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot1.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot1.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot1.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

Start-Sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot1.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot1.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot1.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

Start-Sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot1.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot1.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot1.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

Start-Sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot1.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot1.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot1.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

Start-Sleep -Milliseconds 150

###_____________RESULT ONE __________

$result1 = Get-Random -Minimum 1 -Maximum 32
###if cherry
if ($result1 -le 16) {
  $Host.UI.RawUI.CursorPosition = $slot1.cord1
  Write-Host $cherrySymbol.line1.text -ForegroundColor $cherrySymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot1.cord2
  Write-Host $cherrySymbol.line2.text -ForegroundColor $cherrySymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot1.cord3
  Write-Host $cherrySymbol.line3.text -ForegroundColor $cherrySymbol.line3.color
} 

###if owl
if ($result1 -gt 16 -and $result1 -le 28) {
  $Host.UI.RawUI.CursorPosition = $slot1.cord1
  Write-Host $owlSymbol.line1.text -ForegroundColor $owlSymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot1.cord2
  Write-Host $owlSymbol.line2.text -ForegroundColor $owlSymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot1.cord3
  Write-Host $owlSymbol.line3.text -ForegroundColor $owlSymbol.line3.color
}


###if bar
if ($result1 -gt 28 -and $result1 -le 31) {
  $Host.UI.RawUI.CursorPosition = $slot1.cord1
  Write-Host $barSymbol.line1.text -ForegroundColor $barSymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot1.cord2
  Write-Host $barSymbol.line2.text -ForegroundColor $barSymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot1.cord3
  Write-Host $barSymbol.line3.text -ForegroundColor $barSymbol.line3.color
}


###if seven
if ($result1 -eq 32) {
  $Host.UI.RawUI.CursorPosition = $slot1.cord1
  Write-Host $sevenSymbol.line1.text -ForegroundColor $sevenSymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot1.cord2
  Write-Host $sevenSymbol.line2.text -ForegroundColor $sevenSymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot1.cord3
  Write-Host $sevenSymbol.line3.text -ForegroundColor $sevenSymbol.line3.color
}

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

start-sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

start-sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

start-sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

start-sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

start-sleep -Milliseconds 150

$Host.UI.RawUI.CursorPosition = $slot2.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot2.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot2.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

$Host.UI.RawUI.CursorPosition = $slot3.cord1
$RandomSpin = Get-Random  -Maximum 4
Write-Host $symbols[$RandomSpin].line1.text -ForegroundColor $symbols[$RandomSpin].line1.color

$Host.UI.RawUI.CursorPosition = $slot3.cord2
Write-Host $symbols[$RandomSpin].line2.text -ForegroundColor $symbols[$RandomSpin].line2.color

$Host.UI.RawUI.CursorPosition = $slot3.cord3
Write-Host $symbols[$RandomSpin].line3.text -ForegroundColor $symbols[$RandomSpin].line3.color

start-sleep -Milliseconds 150

###_____________RESULT TWO __________

$result2 = Get-Random -Minimum 1 -Maximum 32
###if cherry
if ($result2 -le 16) {
  $Host.UI.RawUI.CursorPosition = $slot2.cord1
  Write-Host $cherrySymbol.line1.text -ForegroundColor $cherrySymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot2.cord2
  Write-Host $cherrySymbol.line2.text -ForegroundColor $cherrySymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot2.cord3
  Write-Host $cherrySymbol.line3.text -ForegroundColor $cherrySymbol.line3.color
} 

###if owl
if ($result2 -gt 16 -and $result2 -le 28) {
  $Host.UI.RawUI.CursorPosition = $slot2.cord1
  Write-Host $owlSymbol.line1.text -ForegroundColor $owlSymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot2.cord2
  Write-Host $owlSymbol.line2.text -ForegroundColor $owlSymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot2.cord3
  Write-Host $owlSymbol.line3.text -ForegroundColor $owlSymbol.line3.color
}


###if bar
if ($result2 -gt 28 -and $result2 -le 31) {
  $Host.UI.RawUI.CursorPosition = $slot2.cord1
  Write-Host $barSymbol.line1.text -ForegroundColor $barSymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot2.cord2
  Write-Host $barSymbol.line2.text -ForegroundColor $barSymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot2.cord3
  Write-Host $barSymbol.line3.text -ForegroundColor $barSymbol.line3.color
}


###if seven
if ($result2 -eq 32) {
  $Host.UI.RawUI.CursorPosition = $slot2.cord1
  Write-Host $sevenSymbol.line1.text -ForegroundColor $sevenSymbol.line1.color
$Host.UI.RawUI.CursorPosition = $slot2.cord2
  Write-Host $sevenSymbol.line2.text -ForegroundColor $sevenSymbol.line2.color
$Host.UI.RawUI.CursorPosition = $slot2.cord3
  Write-Host $sevenSymbol.line3.text -ForegroundColor $sevenSymbol.line3.color
}


$Host.UI.RawUI.CursorPosition = @{ X = 0; Y = 28 }
read-host $spinAgainSign


spin



}




$noSymbolBase = "                 ||*|       |*|       |*|       |*|| ||"

$noSymbol = "     "


$sevenSymbol = [PSCustomObject]@{

line1 = @{text = "*****"; color = "Green"}
line2 = @{text = "  ** "; color = "Green"}
line3 = @{text = " **  "; color = "Green"}

}

$barSymbol = [PSCustomObject]@{

line1 = @{text = " [ ] "; color = "DarkYellow"}
line2 = @{text = " | | "; color = "DarkYellow"}
line3 = @{text = " [ ] "; color = "DarkYellow"}
}


$owlSymbol = [PSCustomObject]@{

line1 = @{text = " ^-^ "; color = "Magenta"}
line2 = @{text = " ( ) "; color = "Magenta"}
line3 = @{text = " > < "; color = "Yellow"}
}

$cherrySymbol = [PSCustomObject]@{

line1 = @{text = "  ,  "; color = "Green"}
line2 = @{text = " (_) "; color = "Red"}
line3 = @{text = "     "; color = "Red"}
}

$emptySymbol = [PSCustomObject]@{
line1 = @{text = "     "; color = "(get-host).ui.rawui.ForegroundColor"}
line2 = @{text = "     "; color = "(get-host).ui.rawui.ForegroundColor"}
line3 = @{text = "     "; color = "(get-host).ui.rawui.ForegroundColor"}
}

$symbolSpinning = " ~~~ "

$slot1 = [PSCustomObject]@{
cord1 = @{ X = 22; Y = 16 }
cord2 = @{ x = 22; Y = 17 }
cord3 = @{ X = 22; Y = 18 }
}

$slot2 = [PSCustomObject]@{
cord1 = @{ X = 32; Y = 16 }
cord2 = @{ x = 32; Y = 17 }
cord3 = @{ X = 32; Y = 18 }
}

$slot3 = [PSCustomObject]@{
cord1 = @{ X = 42; Y = 16 }
cord2 = @{ x = 42; Y = 17 }
cord3 = @{ X = 42; Y = 18 }
}

$symbols = @($cherrySymbol, $owlSymbol, $barSymbol, $sevenSymbol)

$spinSign = "
               []~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]
               |                                    |
               |        Press enter to spin!        |
               |                                    |
               []_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~[]
"

$spinningSign = "
               []~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]
               |                                    |
               |             Spinning...            |
               |                                    |
               []_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~[]
"

$spinAgainSign = "
               []~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_[]
               |                                    |
               |     Press enter to spin again!     |
               |                                    |
               []_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~[]
"

Read-Host $spinSign
spin





