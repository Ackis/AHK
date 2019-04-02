F12::
Suspend,Toggle


CoordMode, Mouse, Screen
SetMouseDelay 1
Loop
{
Loop 10
{
MouseClick, WheelUp
}
GetKeyState, state, Shift, "P"
if state = D
break
}
return