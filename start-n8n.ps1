# Start n8n with Environment Variables Loaded

Write-Host "Loading environment variables from .env file..." -ForegroundColor Cyan

# Read .env file and set environment variables
$envFile = Get-Content .env
foreach($line in $envFile) {
    if ($line -match '^([^#][^=]+)=(.+)$') {
        $key = $matches[1].Trim()
        $value = $matches[2].Trim()
        [System.Environment]::SetEnvironmentVariable($key, $value, 'Process')
        Write-Host "Set $key" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Environment variables loaded successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Starting n8n..." -ForegroundColor Cyan
Write-Host "n8n will be available at: http://localhost:5678" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press Ctrl+C to stop n8n" -ForegroundColor Red
Write-Host ""

# Start n8n
npx n8n
