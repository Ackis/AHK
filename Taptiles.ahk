F1::
Suspend,Toggle

CoordMode, Mouse, Screen

Loop
{
	Loop 10
	{
		MouseClick, Left
	}
	GetKeyState, state, Shift, "P"
	if state = D
	break
}
return