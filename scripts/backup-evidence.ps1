
# Module 3 - Digital Forensics
# Create a backup of evidence files and mark them read-only.

$project = Split-Path -Parent $PSScriptRoot
$source = Join-Path $project "evidence"
$backup = Join-Path $project "evidence-backup"

# Check that the original evidence folder exists.
if (-not (Test-Path $source)) {
    Write-Error "Evidence folder not found."
    return
}

# Create the backup folder if needed.
New-Item -ItemType Directory -Path $backup -Force | Out-Null

# Copy the evidence files into the backup folder.
Copy-Item -Path "$source\*" -Destination $backup -Recurse -Force

# Mark backup files as read-only.
Get-ChildItem $backup -File -Recurse | ForEach-Object {
    $_.IsReadOnly = $true
}

# Display the backup files and their read-only status.
Get-ChildItem $backup -File -Recurse |
    Select-Object Name, IsReadOnly

Write-Host "Evidence backup completed."
