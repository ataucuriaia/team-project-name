# Simple HTTP Server for local development
# This script starts a local web server on port 8080

Write-Host "Starting local web server on http://localhost:8080" -ForegroundColor Green
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""

# Check if Python is available
$python = Get-Command python -ErrorAction SilentlyContinue
if ($python) {
    Write-Host "Using Python HTTP server..." -ForegroundColor Cyan
    python -m http.server 8080
}
else {
    # Check if Node.js is available
    $node = Get-Command node -ErrorAction SilentlyContinue
    if ($node) {
        Write-Host "Node.js found. Installing http-server..." -ForegroundColor Cyan
        npm install -g http-server
        Write-Host "Starting http-server..." -ForegroundColor Cyan
        http-server -p 8080 -c-1
    }
    else {
        Write-Host "ERROR: Neither Python nor Node.js is installed." -ForegroundColor Red
        Write-Host "Please install one of the following:" -ForegroundColor Yellow
        Write-Host "  1. Python: https://www.python.org/downloads/" -ForegroundColor Yellow
        Write-Host "  2. Node.js: https://nodejs.org/" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Alternatively, you can:" -ForegroundColor Yellow
        Write-Host "  - Install VS Code 'Live Server' extension" -ForegroundColor Yellow
        Write-Host "  - Or open index.html directly in your browser (may have CORS issues with Firebase)" -ForegroundColor Yellow
        exit 1
    }
}

