; Instant War Unit Build Script - Written by Shadow Kisuragi

; Press q to start the script.
; Press ESC to exit the script.
; Modify the script variables QueueSize and RecruitTimeInMinutes to meet your needs.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

QueueSize := 3
RecruitTimeInMinutes := 22

LoopCount := 0
LoopSection := "Waiting"

q::
Loop{

	; Alliance Tech Donation
	;LoopSection := "Alliance Tech Donation"

	; Select Alliance
	;MouseClick, left, 48, 984
	;Sleep, 2000

	; Select Technology
	;MouseClick, left, 463, 1030
	;Sleep, 2000
	
	; Select First Tech
	;MouseClick, left, 329, 327
	;Sleep, 2000

	; Select Contribute
	;MouseClick, left, 427, 519
	;Sleep, 2000

	; Select Back
	;MouseClick, left, 48, 82
	;Sleep, 2000

	; Select Back
	;MouseClick, left, 48, 82
	;Sleep, 2000

	; Troop Training
	LoopSection := "Troop Training"

	; Select Military
	MouseClick, left, 1044, 547
	Sleep, 2000

	; Select Recruit
	MouseClick, left, 835, 724
	Sleep, 5000

	; Select Infantry
	; Do nothing - Infantry is already selected
	; Select UGV
	MouseClick, left, 276, 170
	; Select Armored
	;MouseClick, left, 332, 170
	; Select LSV
	;MouseClick, left, 463, 170
	; Select Artillery
	;MouseClick, left, 444, 170
	Sleep, 2000

	; Select Tier I Troops
	MouseClick, left, 208, 371
	; Select Tier II Troops
	;MouseClick, left, 332, 170
	; Select Tier III Troops
	;MouseClick, left, 332, 170
	; Select Tier IV Troops
	;MouseClick, left, 332, 170
	Sleep, 2000

	Loop, %QueueSize%
	{
		; Recruit
		MouseClick, left, 429, 988
		Sleep, 2000
	}	

	; Back out of Menu
	MouseClick, left, 49, 81
	Sleep, 2000

	; Wait X minutes
	Loop, %RecruitTimeInMinutes%
	{
		;MouseClick, left, 977, 540
		Sleep, 60000
	}

	; Complete Recruitment
	MouseClick, left, 1044, 547
	Sleep, 2000

	LoopCount = LoopCount + 1
}

Escape::ExitApp