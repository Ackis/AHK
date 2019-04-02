#MaxThreadsPerHotkey 2

SetMouseDelay 1
keepRunning:=0
totalClicks:=0

; Oh shit moment - if something goes wrong, shift should stop all the loops.
; also put ~shift instead of shift or it'll mess with you really hard
; why? Need to look up.

Shift::
	keepRunning:=0
return

; Per IRC use SetTImer (http://ahkscript.org/docs/commands/SetTimer.htm)
; with settimer all you need is 3 hotkeys each with a settimer, label, % (running = !running) ? varying time (0 or 10 or 100) : "Off"
F8::
	keepRunning:=!keepRunning
	$~lbutton::
		while (getKeyState("lbutton", "P") AND (keepRunning=1))
		{
			send, {lbutton}
		}
		return
return

F10::
	keepRunning:=!keepRunning
	SetMouseDelay 0
	while (keepRunning=1)
	{
		; totalClicks++
		MouseClick
	}
return

F11::
	keepRunning:=!keepRunning
	SetMouseDelay 10

	while (keepRunning=1)
	{
		; totalClicks++
		MouseClick
	}
	
return

F12::
	keepRunning:=!keepRunning
	SetMouseDelay 100

	while (keepRunning=1)
	{
		; totalClicks++
		MouseClick
	}
	
return