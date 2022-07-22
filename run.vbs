Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "keep-alive.bat" & Chr(34), 0 'Probably need to add full filepath here to work properly.
Set WshShell = Nothing
