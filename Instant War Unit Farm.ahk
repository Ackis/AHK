; Instant War Unit Build Script - Written by Shadow Kisuragi

; Press r to start the script.
; Press ESC to exit the script.
; Modify the script variables QueueSize and RecruitTimeInMinutes to meet your needs.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

QueueSize := 3
RecruitTimeInMinutes := 18

r::
Loop{
    ; Complete Recruitment
    MouseClick, left, 1044, 547
    Sleep, 2000

    ; Select Military
    MouseClick, left, 1044, 547
    Sleep, 2000

    ; Select Recruit
    MouseClick, left, 835, 724
    Sleep, 5000
	
	; Select Armored
	MouseClick, left, 332, 170
	Sleep, 2000

    ; Select Tanks (Tier I Troops)
    MouseClick, left, 208, 371
    Sleep, 2000

    Loop, %QueueSize%
    {
        ; Recruit
        MouseClick, left, 419, 937
		Sleep, 2000
    }    

    ; Back out of Menu
    MouseClick, left, 49, 81
    Sleep, 2000

    ; Wait X minutes
    Loop, %RecruitTimeInMinutes%
    {
        MouseClick, left, 977, 540
        Sleep, 60000
    }
}

Escape::ExitApp