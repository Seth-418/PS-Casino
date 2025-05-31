
####Set Launch Size Columns and Rows under Windows Terminal Startup settings to 150 x 50 to ensure visuals display correctly.

$OutputEncoding = [System.Text.Encoding]::UTF8
[console]::InputEncoding = [System.Text.Encoding]::UTF8
[console]::OutputEncoding = [System.Text.Encoding]::UTF8

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

$Host.UI.RawUI.CursorPosition = @{ X = 22; Y = 12 }
Write-host $symbolSpinning

$Host.UI.RawUI.CursorPosition = @{ X = 32; Y = 12 }
Write-host $symbolSpinning

$Host.UI.RawUI.CursorPosition = @{ X = 42; Y = 12 }
Write-host $symbolSpinning

Start-Sleep -Milliseconds 500

$Host.UI.RawUI.CursorPosition = @{ X = 22; Y = 12 }
Write-host $noSymbol

$Host.UI.RawUI.CursorPosition = @{ X = 32; Y = 12 }
Write-host $noSymbol

$Host.UI.RawUI.CursorPosition = @{ X = 42; Y = 12 }
Write-host $noSymbol

Start-Sleep -Milliseconds 500

$Host.UI.RawUI.CursorPosition = @{ X = 22; Y = 13 }
Write-host $symbolSpinning

$Host.UI.RawUI.CursorPosition = @{ X = 32; Y = 13 }
Write-host $symbolSpinning

$Host.UI.RawUI.CursorPosition = @{ X = 42; Y = 13 }
Write-host $symbolSpinning

Start-Sleep -Milliseconds 500

$Host.UI.RawUI.CursorPosition = @{ X = 22; Y = 13 }
Write-host $noSymbol

$Host.UI.RawUI.CursorPosition = @{ X = 32; Y = 13 }
Write-host $noSymbol

$Host.UI.RawUI.CursorPosition = @{ X = 42; Y = 13 }
Write-host $noSymbol

Start-Sleep -Milliseconds 500

$Host.UI.RawUI.CursorPosition = @{ X = 22; Y = 14 }
Write-host $symbolSpinning

$Host.UI.RawUI.CursorPosition = @{ X = 32; Y = 14 }
Write-host $symbolSpinning

$Host.UI.RawUI.CursorPosition = @{ X = 42; Y = 14 }
Write-host $symbolSpinning

Start-Sleep -Milliseconds 500

$Host.UI.RawUI.CursorPosition = @{ X = 22; Y = 14 }
Write-host $noSymbol

$Host.UI.RawUI.CursorPosition = @{ X = 32; Y = 14 }
Write-host $noSymbol

$Host.UI.RawUI.CursorPosition = @{ X = 42; Y = 14 }
Write-host $noSymbol


$Host.UI.RawUI.CursorPosition = @{ X = 0; Y = 24 }
read-host "Press enter to spin again!"

spin

}

spin





$noSymbolBase = "                 ||*|       |*|       |*|       |*|| ||"

$noSymbol = "     "

$symbolSeven1 = "*****"
$symbolSeven2 = "  ** "
$symbolSeven3 = " **  "

$symbolBar1 = " [ ] "
$symbolBar2 = " | | "
$symbolBar3 = " [ ] "

$symbolOwl1 = " ^-^ "
$symbolOwl2 = " ( ) "
$symbolOwl3 = " > < "

$symbolCherry1 = "  ,  "
$symbolCherry2 = " (_) "
$symbolCherry3 = "     "

$symbolSpinning = "  ~  "