Param(
    [string]$ZipPath
)

if (-not $ZipPath) {
    Write-Host "ZIP ファイルが指定されていません。"
    exit
}

# ZIP のあるフォルダ
$baseDir = Split-Path -Parent $ZipPath

# ZIP 名 → 展開先フォルダ名として使用
$folderName = [System.IO.Path]::GetFileNameWithoutExtension($ZipPath)
$destDir = Join-Path -Path $baseDir -ChildPath $folderName

# フォルダがなければ作成
if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir | Out-Null
}

# 展開
Expand-Archive -Path $ZipPath -DestinationPath $destDir -Force

Write-Host "Extracted: $ZipPath -> $destDir"
