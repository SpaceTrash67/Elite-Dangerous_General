
; #############################################################################
; #### Elite:Dangerous Auto-Plotter - Odyssey Version 3  ######################
; # v3: 2024-06-30_Corrections for Updated Bindings  ##########################
; # v2: 2023-04-18_Added WIGGLE to GalMap - to re-acquire target star #########
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
;general -> interface mode -> GalMap Translate Left [I use WASD for GalMap rotations - so YGHJ for GalMap cursor translation navigation]
vUIGalMapTransLeft := "G"
;general -> interface mode -> GalMap Translate Backwards [I use WASD for GalMap rotations - so YGHJ for GalMap cursor translation navigation]
vUIGalMapTransBack := "H"

; #############################################################################
; #### DELAYS #################################################################
; #############################################################################

vInitDelay := 1250
vGalmapDelay := 3000
vKeyDelay := 150
vMediumDelay := 400
vPasteDelay := 400
vPlotDelay := 800
vWiggle := 50

; #############################################################################

SendMode Input
SetWinDelay 10
SetKeyDelay 75

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
PressKey(vUIGalMapTurnLeft,vWiggle)
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
