#NoEnv
#Persistent
#UseHook
#MaxThreadsPerHotkey 2
Menu, Tray, Tip, ED PowerPlay Clicker

; LEGEND
; ! = Alt
; + = Shift
; ^ = Ctrl
; # = WinKey

; Elite Dangerous PowerPlay clicker
; Because FDev's UI is terrible for loading up on PowerPlay materials

; ***** NOTE: AutoHotkey must be installed before running this script. Download it from here - https://www.autohotkey.com/ *****

; Tested against Elite Dangerous version 3.5.3.400 and AutoHotkey version 1.1.24.01

; Before using this, navigate to your Power Contact at a station and go to the menu screen where you have the option to buy the 3 PowerPlay material types. 
; Keep the very top option highlighted, don't hover over/select something else, otherwise the macro won't work right
; I'm also assuming that you have the arrow keys and space bar mapped to navigate menus and press/activate menu buttons in your game controls

; Press Alt+A to start the macro (by default). Hold comma to stop it (by default), it will stop after the loop completes
; Note that you should not map any controls in game to these key combos that could affect menu movement in the PowerPlay UI

!a::
buy:
loop {
	; Set a random delay between key strokes, from X to Y. Only applies to whole runs of the loop
	; Is it necessary? I have no idea
	Random, RandDelay, 80, 125
	SetKeyDelay, %RandDelay%, 87
	;MsgBox, 0, Main, %RandDelay% ;--debug--
	
	matToScrollTo := 0
	; Modify the number after the < to purchase whatever PP material you want. Anywhere from 1 to 3
	while matToScrollTo < 2 {
		Send {Down}
		matToScrollTo++
	}
	
	Send {Space}
	Sleep, 700
	
	numberMatsToBuy := 0
	; Modify the number after the < to be however many presses you need, depending on your rank (rank 1 = 10 presses, rank 2 = 15, etc)
	while numberMatsToBuy < 15 {
		Send {Right}
		numberMatsToBuy++
	}
	
	Sleep, 300
	Send {Space}
	Sleep, 1500
	Send {Space}
	Sleep, 1500
	; If key is held down, stop the loop. Comma is a special char, requires escape (`)
	KeyWait, `,, D T0.02
	If not ErrorLevel {
		;MsgBox, 0, Key Wait, %ErrorLevel% ;--debug--
		break, buy
	}
}
