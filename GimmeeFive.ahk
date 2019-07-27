#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F1::

Loop {

	; Skip Question
	MouseClick, Left, 1575, 875
	Sleep, 4000
	MouseClick, Left, 1575, 875
	Sleep, 4000
	MouseClick, Left, 1575, 875
	Sleep, 4000
	MouseClick, Left, 1575, 875
	Sleep, 4000
	MouseClick, Left, 1575, 875
	Sleep, 4000

	; Throw out wrong answers
	MouseClick, Left, 1200, 875
	Sleep, 4000

	; Top Row
	MouseClick, Left, 450, 300
	Sleep, 2000
	MouseClick, Left, 700, 300
	Sleep, 2000
	MouseClick, Left, 975, 300
	Sleep, 2000

	; Middle Row
	MouseClick, Left, 450, 550
	Sleep, 2000
	MouseClick, Left, 700, 550
	Sleep, 2000
	MouseClick, Left, 975, 550
	Sleep, 2000

	; Bottom Row
	MouseClick, Left, 450, 800
	Sleep, 2000
	MouseClick, Left, 700, 800
	Sleep, 2000
	MouseClick, Left, 975, 800
	Sleep, 120000

	; Start new game
	MouseClick, Left, 400, 775
	Sleep, 10000
}

Escape::ExitApp