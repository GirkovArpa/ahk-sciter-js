#Include clr.ahk

FileRead, html, main.html

sci := Clr_LoadLibrary("SciterSharpWindows.dll")
sciwin := Clr_CreateObject(sci, "SciterSharp.SciterWindow")
sciwin.CreateMainWindow(400, 300)
sciwin.CenterTopLevelWindow()
sciwin.Title := "Using SciterSharp in AutoHotkey"
sciwin.LoadHtml(html)
sciwin.Show()
return

Escape::ExitApp