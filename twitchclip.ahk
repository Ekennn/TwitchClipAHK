#SingleInstance Force ; Restrict to one session open at the same time

NumpadEnter::

Send, !x ; Press ALT and X to make a clip
MsgBox, 4096, Twitch Clip AHK, Please press OK when the page has loaded ; Wait for confirmation that the page has loaded correctly


Click, 60 747 ; Press the title field (X, Y)
SendInput, Mål ; Enter the title for the Clip

MouseClickDrag, Left, 560, 655, 250, 655, 25 ; Drag the length of the timeline. (Button, X1, Y1, X2, Y2, Speed (Max 0, Min 100))

Click, 764 796 ; Press "Upload" (X, Y)

Sleep, 200ms ; Wait for 200ms before closing the tab

Send, ^w ; Close the tab



return