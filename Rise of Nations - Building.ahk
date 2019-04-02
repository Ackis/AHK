#MaxThreadsPerHotkey 2
RoNInit() {
global ArrX,ArrY
ArrX:=Object()
ArrY:=Object()

ArrX[1]:=592
ArrY[1]:=606

ArrX[2]:=764
ArrY[2]:=512

ArrX[3]:=923
ArrY[3]:=447

ArrX[4]:=1101
ArrY[4]:=361

ArrX[5]:=412
ArrY[5]:=514

ArrX[6]:=572
ArrY[6]:=426

ArrX[7]:=722
ArrY[7]:=347

ArrX[8]:=901
ArrY[8]:=252
}

RoNCruise(j) {
global ArrX,ArrY
x:=ArrX[j]
y:=ArrY[j]-25
SendInput,90bb
sleep,250
mouseclick,left, %x%,%y%
sleep,500
}

RonBuild(j) {
global ArrX,ArrY
x:=ArrX[j]
y:=ArrY[j]
SendInput, 9%j%ys
Sleep,250
mouseclick,left, %x%,%y%
Sleep,1500
}

F12::
If (toggle := !toggle) {
RoNInit()
sleep,1000
Loop {
RoNBuild(1)
if (!toggle) {
return
}
RoNCruise(5)
if (!toggle) {
return
}
RoNBuild(2)
if (!toggle) {
return
}
RoNCruise(6)
if (!toggle) {
return
}
RoNBuild(3)
if (!toggle) {
return
}
RoNCruise(7)
if (!toggle) {
return
}
RoNBuild(4)
if (!toggle) {
return
}
RoNCruise(8)
if (!toggle) {
return
}
RoNBuild(5)
if (!toggle) {
return
}
RoNCruise(1)
if (!toggle) {
return
}
RoNBuild(6)
if (!toggle) {
return
}
RoNCruise(2)
if (!toggle) {
return
}
RoNBuild(7)
if (!toggle) {
return
}
RoNCruise(3)
if (!toggle) {
return
}
RoNBuild(8)
if (!toggle) {
return
}
RoNCruise(4)
if (!toggle) {
return
}
}
}
return