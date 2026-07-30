!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Podcasts" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\apple-podcasts" "" "URL:Apple Podcasts"
  WriteRegStr HKCU "Software\Classes\apple-podcasts" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-podcasts\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Podcasts"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\apple-podcasts"
!macroend
