#MaxThreadsPerHotkey 2
toggle:=0
F11::
If (toggle := !toggle) {
Loop {
sleep,250
if (!toggle) {
return
}
sendinput, {Shift Down}
sleep,100
sendinput, O
sleep,100
sendinput, {Shift Up}
sleep,250
if (!toggle) {
return
}
sendinput, {Ctrl Down}
sleep,100
sendinput, {Delete}
sleep,100
sendinput, {Ctrl Up}
sleep,250
}
}
Return