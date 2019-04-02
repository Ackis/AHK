#MaxThreadsPerHotkey 2

SetMouseDelay 1
keepRunning:=0

Shift::
	keepRunning:=0
return


F12::
	keepRunning:=!keepRunning
	SetMouseDelay 100

	while (keepRunning=1)
	{
		MouseClick
	}
return