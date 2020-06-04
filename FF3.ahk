; Final Fantasy 3 Windows Phone

; Press q to start the script.
; Press ESC to exit the script.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

LoopCount := 0
FightRounds := 3
PartySize := 4

q::
Loop{
	; World map find a target phase
	MouseClickDrag, left, 1500, 1100, 1500, 900, 100
	Sleep, 2000
	MouseClickDrag, left, 1500, 900, 1500, 1100, 100
	Sleep, 2000

	; Wait until we're in battle
	Sleep, 15000

	; Guard Phase
	Loop, %FightRounds%
	{
		Loop, %PartySize%
		{
			; Click guard
			MouseClick, left, 700, 1980
			Sleep, 2000
		}
		; Wait for NPC attacks to happen
		Sleep, 15000
	}

	; Attack Phase
	Loop, %PartySize%
	{
		; Click Attack
		MouseClick, left, 690, 1440

		Sleep, 2000
		; Click Target
		MouseClick, left, 690, 1440
	}

	; Loot Phase
	; Max number of clicks should be 10 - item, gil, a level up/job level up for each character
	Loop, 10
	{
		; Click anywhere
		MouseClick, left, 1875, 1150
		Sleep, 500
	}

	Sleep, 15000
	LoopCount = LoopCount + 1
}

Escape::ExitApp