#MaxThreadsPerHotkey 2
toggle:=0
F11::
If (toggle := !toggle) {
Loop {
sleep,250
if (!toggle) {
return
}

mouseclick,left,969,517,2
if (!toggle) {
return
}
sleep,500
sendinput, {Ctrl Down}
sleep,100
sendinput, {Delete}
sleep,100
sendinput, {Ctrl Up}
sleep,250
}
}
Return