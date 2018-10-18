# Set your own values here
$SiteCollectionUrl = "https://artemis3000.sharepoint.com/Sites/portal"
$BotId = "422a740c-2817-475f-ab79-d99b865d4755"
$BotDirectLineSecret = "PZVe6HQQaW4.cwA.QCs.n5E0KGtvgVnHf32dhktlRuZqE0JmPMZl6R0ot8ZWyOc"

Connect-PnPOnline -Url $SiteCollectionUrl -UseWebLogin

# Set the environment settings in the tenant property bag
Set-PnPStorageEntity -Key "PnPGraphBot_BotId" -Value $BotId -Comment $Comment -Description "Bot ID"
Set-PnPStorageEntity -Key "PnPGraphBot_BotDirectLineSecret" -Value $BotDirectLineSecret -Comment $Comment -Description "Bot Direct Line Secret"

Write-Host "Complete" -ForegroundColor Green