; Instant War Unit Build Script - Originally Written by Shadow Kisuragi
; Modified by Ackis

; Press r to start the script.
; Press ESC to exit the script.
; Modify the script variables QueueSize and RecruitTimeInMinutes to meet your needs.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

QueueSize := 4 ; How many recruitment queues do you have?
RecruitTimeInMinutes := 18 ; How long (rounded up) does it take to recruit?
ShowClicks := 1 ; Do you want to see your clicks when they're made? If you do, you need to turn this on through Windows.


r::
Loop{

;960,865

	; Complete Recruitment
	; Full Screen Coords: 1044, 547
	; Windowed Coords: 1035, 547

	if ShowClicks {
		MouseMove 1090, 562
		Send {Ctrl}
	}
	Sleep, 5000
	MouseClick, left, 1090, 562

	; Select Military (same button as completing recruitment)
	; Full Screen Coords: 1044, 547
	; Windowed Coords: 1035, 547

	if ShowClicks {
		MouseMove 1090, 562
		Send {Ctrl}
	}
	Sleep, 5000
	MouseClick, left, 1090, 562

	; Select Recruit
	if ShowClicks {
		MouseMove 855, 725
		Send {Ctrl}
	}
	Sleep, 5000
	MouseClick, left, 855, 725

	; Windowed:
	; Infantry: 150, 170
	; UGV 230, 170
	; Armored: 320, 170
	; LSV: 390, 170
	; Artillery: 480, 170

	; Select Armored
	if ShowClicks {
		MouseMove 320, 170
		Send {Ctrl}
	}
	Sleep, 2000
	MouseClick, left, 320, 170

	; Windowed:
	; Tier 1: 190, 370
	; Tier 2: 440, 350
	; Tier 3: 190, 580

	; Select Tier
	if ShowClicks {
		MouseMove 190, 370
		Send {Ctrl}
	}
	Sleep, 2000
	MouseClick, left, 250, 580

	Loop, %QueueSize%
	{
		; Recruit
		if ShowClicks {
			MouseMove 510, 955
			Send {Ctrl}
		}
		Sleep, 2000
		MouseClick, left, 510, 955
	}
	Sleep, 2000

	; Back out of Menu
	MouseClick, left, 49, 81
	Sleep, 2000

	; Wait X minutes
	Loop, %RecruitTimeInMinutes%
	{
		if ShowClicks {
			MouseMove 250, 580
			Send {Ctrl}
		}
		MouseClick, left, 977, 540
		Sleep, 60000
	}
}

Escape::ExitApp