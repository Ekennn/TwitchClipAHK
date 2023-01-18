#SingleInstance Force ; Restrict to one session open at the same time


; CHANGE THEESE FOR EVERY RESTART (Show hidden icons in taskbar, right click AHK and select "Window Spy", then hoover over the windows and input their respective ahk_id in the variables below)
stream2id = 1246266
stream3id = 7079634
stream4id = 4128976
stream5id = 103155788
stream6id = 97585164

NumpadEnter:: ; Clipping

Send, !x ; Press ALT and X to make a clip
MsgBox, 4096, Twitch Clip AHK, Please press OK when the page has loaded ; Wait for confirmation that the page has loaded correctly


Click, 60 747 ; Press the title field (X, Y)
SendInput, Mål ; Enter the title for the Clip

MouseMove, 558, 655
MouseClickDrag, Left, 558, 655, 250, 655, 25 ; Drag the length of the timeline. (Button, X1, Y1, X2, Y2, Speed (Max 0, Min 100))

Click, 764 796 ; Press "Upload" (X, Y)

Sleep, 1000 ; Wait for 1000ms before closing the tab

Send, ^w ; Close the tab


return



Numpad2:: ; Select stream 2

WinActivate, ahk_id %stream2id% ; Select the correct window

return



Numpad3:: ; Select stream 3

WinActivate, ahk_id %stream3id% ; Select the correct window

return


Numpad4:: ; Select stream 4

WinActivate, ahk_id %stream4id% ; Select the correct window

return



Numpad5:: ; Select stream 5

WinActivate, ahk_id %stream5id% ; Select the correct window

return



Numpad6:: ; Select stream 6

WinActivate, ahk_id %stream6id% ; Select the correct window

return
