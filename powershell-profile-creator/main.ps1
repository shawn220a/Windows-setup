Remove-Item $profile

New-Item -ItemType File $profile

$path = 'C:\Users\shawn\Documents\PowerShell\Microsoft.PowerShell_profile.ps1'

@'
function gs {
  git status -s
}
'@ >> $path

@'
function gaa {
  git add .
}
'@ >> $path

notepad $path 