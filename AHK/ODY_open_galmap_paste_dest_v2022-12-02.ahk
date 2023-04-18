
; #############################################################################
; #### Elite:Dangerous Auto-Plotter - Odyssey Version  ########################
; #### v2022-12-02_Added WIGGLE to GalMap - to re-acquire target star #########
; #############################################################################

; #############################################################################
; #### KEYS - Program as per your own Key Binds ###############################
; #############################################################################
;ship -> mode switches -> open galaxy map
vGalmapKey := "F9"
;general -> interface mode -> ui panel up      [check no conflicts in general -> galaxy map!]
vUIPanelUp := "W"
;general -> interface mode -> ui panel right   [check no conflicts in general -> galaxy map!]
vUIPanelRight := "D"
;general -> interface mode -> GalMap Left      [I use WASD for GalMap rotations - so UHJK for GalMap cursor navigation...typically 'A']
vUIGalMapLeft := "H"

; #############################################################################
; #### DELAYS #################################################################
; #############################################################################

vInitDelay := 1100
vGalmapDelay := 3000
vKeyDelay := 125
vMediumDelay := 400
vPasteDelay := 200
vPlotDelay := 800
vWiggle := 50

; #############################################################################

SendMode Input
SetWinDelay 0
SetKeyDelay 50

; #### Change preferred AHK Trigger Key at first character in next line #######
`::
PressKey(vGalmapKey,vKeyDelay)
sleep vInitDelay
PressKey(vUIPanelRight,vKeyDelay)
PressKey(vUIPanelUp,vKeyDelay)
PressKey("Space",vKeyDelay)
Send {Ctrl down}
PressKey("v",vKeyDelay)
Send {Ctrl up}
sleep vPasteDelay
PressKey("Down",vKeyDelay)
PressKey("Space",vKeyDelay)
PressKey("Backspace",vKeyDelay)
sleep vGalmapDelay
PressKey(vUIGalMapLeft,vWiggle)
PressKey("Space",vPlotDelay)
sleep vMediumDelay
PressKey(vGalmapKey,vKeyDelay)
sleep vMediumDelay

PressKey(key, time)
{
	Send, {%key% down}
	Sleep, %time%
	Send, {%key% up}
	Sleep, %time%
	Return
}



