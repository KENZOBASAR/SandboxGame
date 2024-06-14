@echo off
title Sandbox v1.0
cls
:mainmenu
cls
echo Sandbox game ver 1.0
echo.
echo Sandbox 
echo.
cmdmenusel f870 "[ Play ]" "[ Options ]" " "
if %ERRORLEVEL%==1 goto 1
if %ERRORLEVEL%==2 goto options

:options
cmdmenusel f870 "[ Coming soon... ]" "[ Done ]"
if %ERRORLEVEL%==1 goto options
if %ERRORLEVEL%==2 goto mainmenu

:1
cls
color 9f
echo Sandbox game ver 1.0
powershell -command "write-host '                                                                        ' -BackgroundColor DarkGreen
powershell -command "write-host '                                                                        ' -BackgroundColor DarkGreen
powershell -command "write-host '                                                                        ' -BackgroundColor DarkGreen
powershell -command "write-host '                                                                        ' -BackgroundColor DarkGreen
powershell -command "write-host '                                                                        ' -BackgroundColor DarkGreen
powershell -command "write-host '                                                      ' -BackgroundColor DarkGreen -NoNewline
powershell -command "write-host '                  ' -BackgroundColor DarkBlue
powershell -command "write-host '                                                      ' -BackgroundColor DarkGreen -NoNewline
powershell -command "write-host '                  ' -BackgroundColor DarkBlue
powershell -command "write-host '                                                      ' -BackgroundColor DarkGreen -NoNewline
powershell -command "write-host '                  ' -BackgroundColor DarkBlue
powershell -command "write-host '                                                      ' -BackgroundColor DarkGreen -NoNewline
powershell -command "write-host '                  ' -BackgroundColor DarkBlue
powershell -command "write-host '                                                      ' -BackgroundColor DarkGreen -NoNewline
powershell -command "write-host '                  ' -BackgroundColor DarkBlue
echo Press Arrow keys to move, Space to place stone, Backspace to break blocks, "Home" key to place a bed, Enter key to place planks (wood), And _ is the player
powershell -ExecutionPolicy Bypass -Command "Add-Type -AssemblyName System.Windows.Forms;$Console = [System.Console];while ($true) { $Key = $Console::ReadKey($true); switch ($Key.Key) { 'UpArrow' { $Console::SetCursorPosition($Console::CursorLeft, $Console::CursorTop - 1) }; 'DownArrow' { $Console::SetCursorPosition($Console::CursorLeft, $Console::CursorTop + 1) }; 'LeftArrow' { $Console::SetCursorPosition($Console::CursorLeft - 1, $Console::CursorTop) }; 'RightArrow' { $Console::SetCursorPosition($Console::CursorLeft + 1, $Console::CursorTop) }; 'End' {  powershell -command "(New-Object -ComObject wscript.shell).SendKeys('{F11}'); Start-Sleep -Seconds 1; (New-Object -ComObject wscript.shell).SendKeys('^{PRTSC}'); Start-Sleep -Seconds 5; (New-Object -ComObject wscript.shell).SendKeys('{F11}') } 'Spacebar' { write-host ' ' -BackgroundColor DarkGray -NoNewline}; 'BackSpace' { if ($Console::CursorLeft -gt 0) { $Console::SetCursorPosition($Console::CursorLeft - 1, $Console::CursorTop); write-host ' ' -BackgroundColor DarkGreen -NoNewline; $Console::SetCursorPosition($Console::CursorLeft - 1, $Console::CursorTop) } }; 'Enter' { write-host ' ' -BackgroundColor DarkYellow -NoNewline}; 'Home' { write-host ' ' -BackgroundColor DarkRed -NoNewline; write-host ' ' -BackgroundColor DarkRed -NoNewline; write-host ' ' -BackgroundColor white -NoNewline }; default { if ($Key.KeyChar -match '[a-zA-Z0-9]') { Write-Host $Key.KeyChar -NoNewline} } }}" >> errorlog.log
