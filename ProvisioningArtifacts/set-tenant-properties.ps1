# Set your own values here
$SiteCollectionUrl = "https://artemis3000.sharepoint.com/Sites/portal"
$BotId = "MW_VeronicaBot"
$BotDirectLineSecret = "PZVe6HQQaW4.cwA.dVg.sw-xGpGz07wjpEM3W8j85puPnBmL4EMTbbqeIfcWGUE"

Connect-PnPOnline -Url $SiteCollectionUrl -UseWebLogin

# Set the environment settings in the tenant property bag
Set-PnPStorageEntity -Key "PnPGraphBot_BotId" -Value $BotId -Comment $Comment -Description "Bot ID"
Set-PnPStorageEntity -Key "PnPGraphBot_BotDirectLineSecret" -Value $BotDirectLineSecret -Comment $Comment -Description "Bot Direct Line Secret"

Write-Host "Complete" -ForegroundColor Green
