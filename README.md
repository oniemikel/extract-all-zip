# extract-all-zip — Windows ZIP Extraction Tool

This tool lets you extract one or multiple ZIP files into their own individual folders on Windows.  
Each ZIP file is automatically unpacked into a directory named after the ZIP file itself.

## Features
- Extract a single ZIP file from the context menu  
- Extract multiple ZIP files from a folder using a PowerShell script  
- Automatically creates a target folder based on the ZIP file name  
- Works on Windows 10 and Windows 11

## Usage
1. Install the PowerShell script that performs the extraction.  
2. (Optional) Add the registry entry to enable the **right-click context menu** for `.zip` files.  
3. Right-click any ZIP file and choose **“Extract to folder”** to unpack it into a directory of the same name.

## Example
```
documents.zip  →  documents/
archive.zip    →  archive/
```

## Notes
- The extraction uses Windows’ built-in `Expand-Archive` cmdlet.  
- No external software is required.  
- Works with both English and Japanese Windows environments.

