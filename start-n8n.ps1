# Start n8n with Environment Variables
Write-Host "Loading environment variables from .env file..." -ForegroundColor Cyan

# Read and set environment variables
$envFile = Get-Content .env -ErrorAction Stop
foreach($line in $envFile) {
    if ($line -notmatch '^\s*#' -and $line -match '^([^=]+)=(.*)$') {
        $key = $matches[1].Trim()
        $value = $matches[2].Trim()
        [System.Environment]::SetEnvironmentVariable($key, $value, 'Process')
        Write-Host "  Set: $key" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Starting n8n with loaded environment variables..." -ForegroundColor Cyan
Write-Host "  Access n8n at: http://localhost:5678" -ForegroundColor Yellow
Write-Host "  Press Ctrl+C to stop" -ForegroundColor Red
Write-Host ""

# Start n8n
npx n8n
