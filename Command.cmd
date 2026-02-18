; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;===================<BUTTON REMAPPING>===================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================<DEFAULT VALUES>===================
[Defaults]
command.time=15
command.buffer.time=1


;===================<SINGLE BUTTON>===================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1


;===================<HOLD DIR>===================
[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1


;===================<HOLD BUTTON>===================
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1


;===================<DIR>===================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1


;===================<SUPER MOTIONS>===================

[Command]
name="illusion"
command=x,x,F,a,z
time=45

[Command]
name="slumber"
command=x,b,~B,y,c
time=45

[Command]
name="shower"
command=y,x,~B,a,b
time=45

[Command]
name="hcbk"
command=~F,DF,D,DB,B,a
time=30
[Command]
name="hcbk"
command=~F,DF,D,DB,B,b
time=30
[Command]
name="hcbk"
command=~F,DF,D,DB,B,c
time=30
[Command]
name="hcbk"
command=~F,DF,D,DB,B,~a
time=30
[Command]
name="hcbk"
command=~F,DF,D,DB,B,~b
time=30
[Command]
name="hcbk"
command=~F,DF,D,DB,B,~c
time=30

[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,z
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~z
time=30

[Command]
name="2dfk"
command=~D,DF,F,D,DF,a
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,b
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,c
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~a
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~b
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~c
time=30

[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,x
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,y
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,z
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~x
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~y
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~z
time=30


;===================<SPECIAL MOTIONS>===================

[Command]; Charge (Power Charge / Dog summon)
name = "214c"
command = b+y
time=20
[Command]; Charge (Dodge / Tongue attack)
name = "214y"
command = a+x
time=20
[Command]
name = "Bulleta"
command = ~D,D,b
time=20
[Command]
name="leilei"
command=~D,D,c
time=20
[Command]
name="Mori"
command=~D,D,a

[Command]
name="Mori2"
command=~D,D,x

[Command]
name="Mori3"
command=~D,D,z

[Command]
name="Lilith"
command=~D,D,y

[Command]
name="hcbx"
command=~F,DF,D,DB,B,x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,z
time=30
[Command]
name="hcbx"
command=~F,DF,D,DB,B,~x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,~y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,~z
time=30

[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+y
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+z
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,y+z
time=30

[Command]
name="dfx"
command=~F,D,DF,x
time=20
[Command]
name="dfy"
command=~F,D,DF,y
time=20
[Command]
name="dfz"
command=~F,D,DF,z
time=20
[Command]
name="dfx"
command=~F,D,DF,~x
time=20
[Command]
name="dfy"
command=~F,D,DF,~y
time=20
[Command]
name="dfz"
command=~F,D,DF,~z
time=20

[Command]
name="df2p"
command=~F,D,DF,x+y
time=20
[Command]
name="df2p"
command=~F,D,DF,x+z
time=20
[Command]
name="df2p"
command=~F,D,DF,y+z
time=20

[Command]
name="qcfx"
command=~D,DF,F,x
time=15
[Command]
name="qcfy"
command=~D,DF,F,y
time=15
[Command]
name="qcfz"
command=~D,DF,F,z
time=15
[Command]
name="qcfx"
command=~D,DF,F,~x
time=15
[Command]
name="qcfy"
command=~D,DF,F,~y
time=15
[Command]
name="qcfz"
command=~D,DF,F,~z
time=15

[Command]
name="qcf2p"
command=~D,DF,F,x+y
time=15
[Command]
name="qcf2p"
command=~D,DF,F,x+z
time=15
[Command]
name="qcf2p"
command=~D,DF,F,y+z
time=15

[Command]
name="qcba"
command=~D,DB,B,a
time=15
[Command]
name="qcbb"
command=~D,DB,B,b
time=15
[Command]
name="qcbc"
command=~D,DB,B,c
time=15
[Command]
name="qcba"
command=~D,DB,B,~a
time=15
[Command]
name="qcbb"
command=~D,DB,B,~b
time=15
[Command]
name="qcbc"
command=~D,DB,B,~c
time=15

[Command]
name="qcb2k"
command=~D,DB,B,a+b
time=15
[Command]
name="qcb2k"
command=~D,DB,B,a+c
time=15
[Command]
name="qcb2k"
command=~D,DB,B,b+c
time=15

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20


;===================<OTHER>===================

[Command]
name="superjump"
command=$D,$U
time=15

[Command]
name="airdashf"
command=$F,~F,F
time=10

[Command]
name="airdashb"
command=$B,~B,B
time=10


;===================<DOUBLE TAP>===================

[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10


;===================<2/3 BUTTON COMBINATION>===================

[Command]
name="recovery"
command=x+y
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=y+z
time=1

[Command]
name="2k"
command=a+b
time=1
[Command]
name="2k"
command=a+c
time=1
[Command]
name="2k"
command=b+c
time=1

[Command]
name="roll"
command=a+x
time=1

[Command]
name="darkforce"
command=c+z
time=1


;===========================================================================
;===============================<-1 STATES>=================================
;===========================================================================
[Statedef -1]

[State -1, AIhelper]
type=changestate
trigger1= ishelper(9741)
value=9741


[State -1, Bulleta attack s]
type = ChangeState
value = 45000
;triggerall = var(51) != 1
;triggerall = var(59) = 1
triggerall = command = "Bulleta"
triggerall = power >= 3000
triggerall = NumHelper(9999) = 0
;triggerall = enemy,StateNo != 1064
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Lilith attack s]
type = ChangeState
value = 26500
;triggerall = var(51) != 1
;triggerall = var(59) = 1
triggerall = command = "Lilith"
;triggerall = enemy,StateNo != 1064
trigger1 = statetype != A
trigger1 = ctrl



; Charge S (Gauge 1) - Dog attack
[State -1, dog attack s]
type = ChangeState
value = 6077
;triggerall = var(51) != 1
;triggerall = var(59) = 1
triggerall = command = "214c"
triggerall = power >= 5000
triggerall = NumHelper(6150) = 0
;triggerall = enemy,StateNo != 1064
trigger1 = statetype != A
trigger1 = ctrl

; Charge - Tongue attack (Rei-Rei)
[State -1, Tongue attack b]
type = ChangeState
value = 7067
;triggerall = var(51) != 1
;triggerall = var(56) = 1
triggerall = command = "214y"
triggerall = NumHelper(7150) = 0
;triggerall = enemy,StateNo != 1064 
trigger1 = statetype != A
trigger1 = ctrl

[State -1, leilei attack s]
type = ChangeState
value = 17000
;triggerall = var(51) != 1
;triggerall = var(59) = 1
triggerall = power >= 2000
triggerall = command = "leilei"
;triggerall = enemy,StateNo != 1064
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Morrigan attack s]
type = ChangeState
value = 19000
;triggerall = var(51) != 1
;triggerall = var(59) = 1
triggerall = power >= 3000
triggerall = command = "Mori"
;triggerall = enemy,StateNo != 1064
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Morrigan attack 2]
type = ChangeState
value = 19500
;triggerall = var(51) != 1
;triggerall = var(59) = 1
triggerall = power >= 4000
triggerall = command = "Mori2"
;triggerall = enemy,StateNo != 1064
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Morrigan attack s2]
type = ChangeState
value = 19001
;triggerall = var(51) != 1
;triggerall = var(59) = 1
triggerall = power >= 5000
triggerall = command = "Mori3"
;triggerall = enemy,StateNo != 1064
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Tick Fix]
type=ctrlset
triggerall= !ctrl
trigger1= (stateno=52 || stateno=5120) && !animtime
trigger2= (stateno=[200,259]) && !animtime
trigger3= ((stateno=[700,701]) || (stateno=[710,729]) || stateno=770) && !animtime
trigger4= (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value=1

[State -1, roll/dodge]
type=changestate
value=ifelse(command="holdfwd",720,ifelse(command="holdback",725,710))
trigger1= var(59)<=0
trigger1= command="roll"
trigger1= roundstate=2 && statetype!=A && ctrl

[State -1, darknessillusion]
type=changestate
value=4000
triggerall= var(59)<=0
triggerall= command="illusion"
triggerall = random <= 100
triggerall= roundstate=2 && statetype!=A && power>=3000 && !var(40)
trigger1= ctrl

[State -1, eternalslumber]
type=changestate
value=4100
triggerall= var(59)<=0
triggerall= command="slumber"
triggerall = random <= 100
triggerall= roundstate=2 && statetype!=A && power>=3000 && !var(40)
triggerall= !numhelper(4105)
trigger1= ctrl


[State -1, finishingshower]
type=changestate
value=3300
triggerall= var(59)<=0
triggerall= command="shower"
triggerall= random <= 100
triggerall= roundstate=2 && statetype!=A && power>=2000 && !var(40)
triggerall= !numhelper(3305)
trigger1= ctrl

[State -1, valkyrieturn]
type=changestate
value=3400
triggerall= var(59)<=0
triggerall= command="hcbk"
triggerall= random <= 100
triggerall= roundstate=2 && power>=(1000*!var(40))
trigger1= ctrl

[State -1, cardinalblade]
type=changestate
value=3100
triggerall= var(59)<=0
triggerall= command="2dfk"
triggerall = random <= 100
triggerall= roundstate=2 && statetype!=A && power>=(1000*!var(40))
trigger1= ctrl

[State -1, airsoulphoenix]
type=changestate
value=3050
triggerall= var(59)<=0
triggerall= command="2qcfp"
triggerall= random <= 100
triggerall= roundstate=2 && statetype=A && var(9)!=2 && power>=(1000*!var(40))
triggerall= !numhelper(3005) && !numhelper(3055)
trigger1= ctrl

[State -1, soulphoenix]
type=changestate
value=3000
triggerall= var(59)<=0
triggerall= command="2qcfp"
triggerall = random <= 100
triggerall= roundstate=2 && statetype!=A && power>=(1000*!var(40))
triggerall= !numhelper(3005) && !numhelper(3055)
trigger1= ctrl

[State -1, EXshadowblade]
type=changestate
value=1110
triggerall= var(59)<=0
triggerall= command="df2p"
triggerall = random <= 100
triggerall= roundstate=2 && statetype!=A && power>=500 && !var(40)
trigger1= ctrl

[State -1, EXvectordrain]
type=changestate
value=1320
triggerall= var(59)<=0
triggerall= command="hcb2p"
triggerall = random <= 100
triggerall= roundstate=2 && statetype!=A && power>=500 && !var(40)
trigger1= ctrl

[State -1, EXairsoulfist]
type=changestate
value=1060
triggerall= var(59)<=0
triggerall= command="qcf2p"
triggerall = random <= 100
triggerall= roundstate=2 && statetype=A && var(9)!=2 && power>=500 && !var(40)
triggerall= !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1= ctrl

[State -1, EXsoulfist]
type=changestate
value=1010
triggerall= var(59)<=0
triggerall= command="qcf2p"
triggerall = random <= 100
triggerall= roundstate=2 && statetype!=A && power>=500 && !var(40)
triggerall= !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1= ctrl

[State -1, shadowblade]
type=changestate
value=1100
triggerall= var(59)<=0
triggerall = random <= 100
triggerall= command="dfx" || command="dfy" || command="dfz"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl

[State -1, vectordrain]
type=changestate
value=1300
triggerall= var(59)<=0
triggerall = random <= 100
triggerall= command="hcbx" || command="hcby" || command="hcbz"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl

[State -1, airsoulfist]
type=changestate
value=1050
triggerall= var(59)<=0
triggerall = random <= 100
triggerall= command="qcfx" || command="qcfy" || command="qcfz"
triggerall= roundstate=2 && statetype=A && var(9)!=2
triggerall= !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1= ctrl

[State -1, soulfist]
type=changestate
value=1000
triggerall= var(59)<=0
triggerall = random <= 100
triggerall= command="qcfx" || command="qcfy" || command="qcfz"
triggerall= roundstate=2 && statetype!=A
triggerall= !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
trigger1= ctrl

[State -1, zerocounter]
type=changestate
value=750
trigger1= var(59)<=0
trigger1= stateno=150 || stateno=152
trigger1= command="bdx" || command="bdy" || command="bdz" || command="bda" || command="bdb" || command="bdc"
trigger1= roundstate=2 && power>=1000

[State -1, throw]
type=changestate
value=800
trigger1= var(59)<=0
trigger1= (command="recovery" || command="2k") && (command="holdfwd" || command="holdback")
trigger1= roundstate=2 && statetype=S && ctrl

[State -1, darkforcereset]
type=changestate
value=771
triggerall= statetype!=A && ctrl
trigger1= var(40)<0
trigger2= var(59)<=0
trigger2= command="darkforce"
trigger2= roundstate=2 && numhelper(775) && var(40)>0

[State -1, darkforce]
type=changestate
value=770
trigger1= var(59)<=0
trigger1= command="darkforce"
trigger1= roundstate=2 && statetype!=A && power>=3000
trigger1= !numhelper(775) && !var(40) && ctrl

[State -1, powercharge]
type=changestate
value=740
trigger1= var(59)<=0
trigger1= command="holdb" && command="holdy"
trigger1= roundstate=2 && statetype!=A
trigger1= power<const(data.power) && power<powermax
trigger1= !var(40) && !numhelper(775) && ctrl

[State -1, dash]
type=changestate
value=ifelse(command="airdashf",100,105)
trigger1= var(59)<=0
trigger1= command="airdashf" || command="airdashb"
trigger1= roundstate=2 && (stateno!=[100,105]) && statetype=A && ctrl

[State -1, dash]
type=changestate
value=ifelse(command="FF",100,105)
trigger1= var(59)<=0
trigger1= command="FF" || command="BB"
trigger1= roundstate=2 && (stateno!=[100,105]) && statetype=S && ctrl

[State -1, SLP]
type=changestate
value=200
triggerall= var(59)<=0
triggerall= command="x" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=245) && time>=5

[State -1, SMP]
type=changestate
value=205
triggerall= var(59)<=0
triggerall= command="y" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=215) && (movecontact=[1,4])
trigger3= (stateno=230 || stateno=245) && (movecontact=[1,4])

[State -1, SHP]
type=changestate
value=210
triggerall= var(59)<=0
triggerall= command="z" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= ((stateno=[200,207]) || (stateno=[215,220])) && (movecontact=[1,4])
trigger3= ((stateno=[230,235]) || (stateno=[245,250])) && (movecontact=[1,4])

[State -1, SLK]
type=changestate
value=215
triggerall= var(59)<=0
triggerall= command="a" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=230) && (movecontact=[1,4])
trigger3= (stateno=200 || stateno=245) && time>=5

[State -1, SMK]
type=changestate
value=220
triggerall= var(59)<=0
triggerall= command="b" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= ((stateno=[200,207]) || stateno=215) && (movecontact=[1,4])
trigger3= ((stateno=[230,235]) || stateno=245) && (movecontact=[1,4])

[State -1, SHK2]
type=changestate
value=226
triggerall= var(59)<=0
triggerall= command="c" && command!="holddown" && command="holdfwd" && statetype!=A
trigger1= ctrl
trigger2= ((stateno=[200,212]) || (stateno=[215,220])) && (movecontact=[1,4])
trigger3= ((stateno=[230,240]) || (stateno=[245,250])) && (movecontact=[1,4])

[State -1, SHK]
type=changestate
value=225
triggerall= var(59)<=0
triggerall= command="c" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= ((stateno=[200,212]) || (stateno=[215,220])) && (movecontact=[1,4])
trigger3= ((stateno=[230,240]) || (stateno=[245,250])) && (movecontact=[1,4])

[State -1, CLP]
type=changestate
value=230
triggerall= var(59)<=0
triggerall= command="x" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=245) && time>=5
trigger3= (stateno=200 || stateno=245) && time>=5

[State -1, CMP]
type=changestate
value=235
triggerall= var(59)<=0
triggerall= command="y" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=230 || stateno=215 || stateno=245) && (movecontact=[1,4])

[State -1, CHP]
type=changestate
value=240
triggerall= var(59)<=0
triggerall= command="z" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= ((stateno=[200,207]) || (stateno=[215,220])) && (movecontact=[1,4])
trigger3= ((stateno=[230,235]) || (stateno=[245,250])) && (movecontact=[1,4])

[State -1, CLK]
type=changestate
value=245
triggerall= var(59)<=0
triggerall= command="a" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=245) && time>=5
trigger3= (stateno=200 || stateno=230) && (movecontact=[1,4])

[State -1, CMK]
type=changestate
value=250
triggerall= var(59)<=0
triggerall= command="b" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= ((stateno=[200,207]) || stateno=215) && (movecontact=[1,4])
trigger3= ((stateno=[230,235]) || stateno=245) && (movecontact=[1,4])

[State -1, CHK]
type=changestate
value=255
triggerall= var(59)<=0
triggerall= command="c" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= ((stateno=[200,212]) || (stateno=[215,220])) && (movecontact=[1,4])
trigger3= ((stateno=[230,240]) || (stateno=[245,250])) && (movecontact=[1,4])

[State -1, ALP]
type=changestate
value=260
triggerall= var(59)<=0
triggerall= command="x" && statetype=A
trigger1= ctrl

[State -1, AMP]
type=changestate
value=265
triggerall= var(59)<=0
triggerall= command="y" && statetype=A
trigger1= ctrl
trigger2= (stateno=260 || stateno=275) && (movecontact=[1,4]) && var(9)!=2

[State -1, AHP]
type=changestate
value=270
triggerall= var(59)<=0
triggerall= command="z" && statetype=A
trigger1= ctrl
trigger2= ((stateno=[260,265]) || (stateno=[275,280])) && (movecontact=[1,4]) && var(9)!=2

[State -1, ALK]
type=changestate
value=275
triggerall= var(59)<=0
triggerall= command="a" && statetype=A
trigger1= ctrl
trigger2= stateno=260 && movecontact && var(9)!=2

[State -1, AMK]
type=changestate
value=280
triggerall= var(59)<=0
triggerall= command="b" && statetype=A
trigger1= ctrl
trigger2= (stateno=260 || stateno=265 || stateno=275) && movecontact && var(9)!=2
trigger2= ((stateno=[260,265]) || stateno=275) && (movecontact=[1,4]) && var(9)!=2

[State -1, AHK]
type=changestate
value=285
triggerall= var(59)<=0
triggerall= command="c" && statetype=A
trigger1= ctrl
trigger2= ((stateno=[260,270]) || (stateno=[275,280])) && (movecontact=[1,4]) && var(9)!=2

[State -1, sparry]
type=hitoverride
trigger1= var(59)<=0
trigger1= roundstate=2 && statetype=S
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || (stateno=[700,701])
trigger1= var(21):=1
attr=SA,AA,AP
stateno=700
slot=0
time=8

[State -1, cparry]
type=hitoverride
trigger1= var(59)<=0
trigger1= roundstate=2 && statetype!=A
trigger1= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= ctrl || (stateno=[700,701])
trigger1= var(21):=2
attr=C,AA,AP
stateno=701
slot=0
time=8

[State -1, aparry]
type=hitoverride
trigger1= var(59)<=0
trigger1= roundstate=2 && statetype=A
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || stateno=702
trigger1= var(21):=3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=7

[State -1, taunt]
type=changestate
value=195
triggerall= var(59)<=0
triggerall= command="start" && statetype!=A
trigger1= ctrl
trigger2= (stateno=[200,255]) && movecontact

;===========================================================================
;=================================<A.I.>====================================
;===========================================================================

[State -1, sparry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<75) || ((stateno=[700,701]) && random<250)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=700
slot=0
time=8

[State -1, cparry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<75) || ((stateno=[700,701]) && random<250)
trigger1= var(21):=2
attr=C,AA,AP
stateno=701
slot=0
time=8

[State -1, aparry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<75) || (stateno=702 && random<250)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=7

[State -1, resetparry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[700,702])) || var(40)
trigger2= movetype!=I || (stateno=[100,106])|| (stateno=[120,132])
trigger3= var(59)<=0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0

[State -1, run]
type=changestate
value=100
trigger1= var(59)>=1 && numenemy
trigger1= statetype!=C && roundstate=2 && ctrl && (stateno!=[100,105])
trigger1= enemynear,movetype!=A && p2bodydist x>120 && random<50

[State -1, dash]
type=changestate
value=105
triggerall= var(59)>=1 && numenemy
triggerall= statetype=S && roundstate=2 && ctrl
triggerall= (p2bodydist x=[0,80]) && backedgebodydist>80 && (stateno!=[100,105])
trigger1= enemynear,movetype=A && random<50
trigger2= enemynear,stateno=5120 && enemynear,animtime=-3 && random<500

[State -1, Jump]
type=changestate
value=40
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

[State -1, sidestep/dodge]
type=changestate
value=ifelse((backedgebodydist>40 && random<200),725,ifelse(random<600,720,710))
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl && random<50
trigger1= enemynear,movetype=A && p2bodydist x<80

[State -1, Guard]
type=changestate
value=120
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && (stateno!=[100,105])
trigger1=!(enemynear,hitdefattr=SCA,AT)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1, zerocounter]
type=changestate
value=750
trigger1= var(59)>=1 && numenemy
trigger1= (p2dist x=[-90,90]) && stateno=150 || stateno=152
trigger1= roundstate=2 && power>=1000 && !var(40) && life<500 && random<50

[State -1, powercharge]
type=changestate
value=740
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= power<const(data.power) && power<powermax
trigger1= !var(40) && !numhelper(775) && ctrl
trigger1= random<50 && !inguarddist && p2movetype!=A && p2dist x>=160

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random<250

[State -1, taunt]
type=changestate
value=195
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && life>=(enemynear,life)
trigger1= p2dist x>200 && (enemynear,vel y>0) && ctrl && random<100
trigger1= !(enemynear,ctrl) && (enemynear,movetype=H)

[State -1, throw]
type=changestate
value=800
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,21]) && (p2bodydist y=[-25,25]) && random<250
trigger2= (p2stateno=[120,155]) && (p2bodydist x=[0,36]) && (p2bodydist y=[-25,25]) && random<500

[State -1, SLP]
type=changestate
value=200
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,25]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50

[State -1, SMP]
type=changestate
value=205
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype=S && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=200 || stateno=215 || stateno=230 || stateno=245) && (movehit=[1,4]) && random<100

[State -1, SHP]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=205 || stateno=220 || stateno=235 || stateno=250) && (movehit=[1,4]) && random<100

[State -1, SLK]
type=changestate
value=215
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,25]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=200 || stateno=230) && (movehit=[1,4]) && random<100

[State -1, SMK]
type=changestate
value=220
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=C && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=205 || stateno=215 || stateno=235 || stateno=245) && (movehit=[1,4]) && random<100

[State -1, SHK2]
type=changestate
value=226
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<ifelse(p2statetype=C,100,20)

[State -1, SHK]
type=changestate
value=225
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=C && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=205 || stateno=210 || stateno=220 || stateno=235 || stateno=240 || stateno=250) && (movehit=[1,4]) && random<100

[State -1, CLP]
type=changestate
value=230
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,20]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=A && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=200 || stateno=215) && (movehit=[1,4]) && random<100

[State -1, CMP]
type=changestate
value=235
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=A && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=205 || stateno=220 || stateno=230 || stateno=245) && (movehit=[1,4]) && random<100

[State -1, CHP]
type=changestate
value=240
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,60]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=205 || stateno=220 || stateno=235 || stateno=250) && (movehit=[1,4]) && random<100

[State -1, CLK]
type=changestate
value=245
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,20]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype=S && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=200 || stateno=215 || stateno=230) && (movehit=[1,4]) && random<100

[State -1, CMK]
type=changestate
value=250
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && p2statetype=S && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=205 || stateno=220 || stateno=235 || stateno=245) && (movehit=[1,4]) && random<100

[State -1, CHK]
type=changestate
value=255
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,60]) && (p2bodydist y=[-50,50]) && p2statetype=S && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=205 || stateno=210 || stateno=220 || stateno=235 || stateno=240 || stateno=250) && (movehit=[1,4]) && random<100

[State -1, ALP]
type=changestate
value=260
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,25]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50

[State -1, AMP]
type=changestate
value=265
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=260 || stateno=275) && (movehit=[1,4]) && var(9)!=2 && random<100

[State -1, AHP]
type=changestate
value=270
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=265 || stateno=280) && (movehit=[1,4]) && var(9)!=2 && random<100

[State -1, ALK]
type=changestate
value=275
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,25]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= stateno=260 && (movehit=[1,4]) && var(9)!=2 && random<100

[State -1, AMK]
type=changestate
value=280
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[-50,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=265 || stateno=275) && (movehit=[1,4]) && var(9)!=2 && random<100

[State -1, AHK]
type=changestate
value=285
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= (stateno=265 || stateno=270 || stateno=280) && (movehit=[1,4]) && var(9)!=2 && random<100

[State -1, shadowblade]
type=changestate
value=ifelse((power>=500 && random<133 && !var(40)),1110,1100)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,55]) && (p2bodydist y>=-180) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && random<50
trigger2= (stateno=[200,250]) && (prevstateno!=[200,255]) && movehit && random<150


[State -1, airsoulfist]
type=changestate
value=1050
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A && var(9)!=2 && vel y>-1
triggerall= !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
triggerall= (enemynear,vel y>-1)
trigger1= ctrl && p2dist x>=0 && p2dist y>=-50 && random<25
trigger2= (stateno=[260,285]) && (prevstateno!=[260,285]) && movehit && random<50

[State -1, soulfist]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
triggerall= p2statetype!=L && (enemynear,vel y>-1)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2dist x>160 && random<25

[State -1, vectordrain]
type=changestate
value=ifelse((power>=500 && random<133 && !var(40)),1320,1300)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,25]) && (p2bodydist y=[-25,25]) && random<250
trigger2= (p2stateno=[120,155]) && (p2bodydist x=[0,40]) && (p2bodydist y=[-25,25]) && random<333



[State -1, ]
type=changestate
value=17000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,35]) && (p2bodydist y=[-25,35]) && random<200
trigger2= (p2stateno=[120,155]) && (p2bodydist x=[0,40]) && (p2bodydist y=[-25,25]) && random<200


[State -1, ]
type=changestate
value=26500
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && !var(40)
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x=[0,90]) && (p2bodydist y>=-120) && (enemynear,vel y=[-2,2]) && (enemynear,vel x>-3)
trigger1= ctrl && random<100
trigger2= (stateno=[200,255]) && random<ifelse(movehit,100,50)
trigger3= stateno=52 && prevstateno=226 && random<100



[State -1, ]
type=changestate
value=19000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power>=1000 && !var(40)
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x=[0,90]) && (p2bodydist y>=-120) && (enemynear,vel y=[-2,2]) && (enemynear,vel x>-3)
trigger1= ctrl && random<200
trigger2= (stateno=[200,255]) && random<ifelse(movehit,100,50)
trigger3= stateno=52 && prevstateno=226 && random<200


[State -1, ]
type=changestate
value=7067
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !numhelper(1005) && !numhelper(1055) && !numhelper(1015) && !numhelper(1065) && !numhelper(3005) && !numhelper(3055)
triggerall= p2statetype!=L && (enemynear,vel y>-1)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2dist x>160 && random<250


[State -1,]
type=changestate
value=6077
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power>=(1000*!var(40))
triggerall= !numhelper(6150) && !numhelper(6150)
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2dist x=[0,120]) && p2dist y>-180 && (enemynear,vel y>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<250
trigger2= (stateno=[200,250]) && (prevstateno!=[200,255]) && movehit && random<250
trigger3= (stateno=[1100,1110]) && movehit && random<300
trigger4= stateno=3401 && movehit && random<300




[State -1, ]
type=changestate
value=45000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power>=3000 && !var(40)
triggerall= !numhelper(9999)
triggerall= !(enemynear,ctrl) && p2statetype!=L && !(enemynear,hitfall)
triggerall= p2bodydist x>=10 && p2bodydist y>=-180 && (enemynear,vel y>=0) && (enemynear,vel x<=2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && (p2bodydist x=[0,90]) && (p2dist y=[-5,5]) && random<100
trigger2= ctrl && (p2stateno=[120,155]) && p2statetype!=A && random<100


