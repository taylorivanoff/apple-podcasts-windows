; Startup + apple-podcasts:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Podcasts" '"$INSTDIR\Apple Podcasts.exe"'
  WriteRegStr HKCU "Software\Classes\apple-podcasts" "" "URL:Apple Podcasts"
  WriteRegStr HKCU "Software\Classes\apple-podcasts" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-podcasts\shell\open\command" "" '"$INSTDIR\Apple Podcasts.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Podcasts"
  DeleteRegKey HKCU "Software\Classes\apple-podcasts"
!macroend
