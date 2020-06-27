; Final Fantasy 3 Windows Phone
; Auto Grind Script
; v0.3

; Press q to start the script.
; Press ESC to exit the script.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

LoopCount := 0
FightRounds := 4
PartySize := 4

q::
Loop{
	Loop, 10
	{
		; Click anywhere
		MouseClick, left, 1875, 1150
		Sleep, 2000
	}
	
	; World map find a target phase
	MouseClick, Left, 2000, 900, ,100, D
	Sleep, 1000

	Loop, 10
	{
		; Move down
		MouseMove, 2000, 700, 100
		Sleep, 1000
		; Move up
		MouseMove, 2000, 1100, 100
		Sleep, 1000
	}
	MouseClick, Left, 2000, 900, ,100, U
	; Wait until we're in battle
	Sleep, 10000

	; Guard Phase
	TrayTip, GuardPhase, Entering Guard phase, 2000
	Loop, %FightRounds%
	{
		Loop, %PartySize%
		{
			; Click guard
			MouseClick, left, 700, 1980
			Sleep, 1000
		}
		; Wait for NPC attacks to happen
		TrayTip, NPC Attack(s) Starting, Wait for NPC(s) to attack, 15
		Sleep, 15000
	}

	; Attack Phase
	TrayTip, AttackPhase, Entering Attack phase, 2000
	Loop, 2
	{
		; Click Attack
		MouseClick, left, 690, 1440
		TrayTip, MouseClick Left 690 1440, 1
		Sleep, 1000
		; Click Target
		MouseClick, left, 690, 1440
	}

	Loop, 2
	{
		; Click guard
		MouseClick, left, 700, 1980
		TrayTip, MouseClick Left 700 1980, 1
		Sleep, 1000
	}

	; Wait for attack to happen
	TrayTip, Attack Starting, Wait for attack to happen, 15
	Sleep, 15000

	TrayTip, Win Animation, Wait for win animation, 10
	; Wait for win animation
	Sleep, 10000

	; Loot Phase

	; Max number of clicks should be 10 - item, gil, a level up/job level up for each character
	Loop, 10
	{
		; Click anywhere
		MouseClick, left, 1875, 1150
		Sleep, 2000
	}

	Sleep, 15000
	LoopCount = LoopCount + 1
}

Escape::ExitApp