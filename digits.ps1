while ($true) {
   $userInput = Read-Host "Enter Card Number"
   if ($userInput -match '^[a-zA-Z0-9]{8}$') {
       break
   } else {
       Write-Host "Invalid input. Please enter exactly 8 characters consisting of letters and numbers."
   }
}

$characters = $userInput.ToCharArray()
$rearrangedCharacters = @(
   $characters[6],
   $characters[7],
   $characters[4],
   $characters[5],
   $characters[2],
   $characters[3],
   $characters[0],
   $characters[1]
)

$rearrangedString = -join $rearrangedCharacters
Write-Host "New SafeQ-Combination: $rearrangedString" -ForegroundColor Green

