; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<NORMAL STATES>========================================
;==============================================================================================

;===========<Standing Light Punch>==========
[Statedef 200]
type=S 
movetype=A 
physics=S 
juggle=ifelse(numtarget,15,8)
anim=ifelse(p2bodydist x<25,201,200)
velset=0,0
poweradd=0
sprpriority=1
ctrl=0
facep2=1

[State 200, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 200, snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 200, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=2
trigger1= var(11):=-1
attr=S,NA
damage=20,0
animtype=Light
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((anim=200),-82,-74)
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= 72*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 200, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Medium Punch>==========
[Statedef 205]
type=S 
movetype=A 
physics=S 
juggle=ifelse(numtarget,15,8)
anim=ifelse(p2bodydist x<25,206,205)
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 205, snd]
type=playsnd
trigger1= animelem=3 && random<350
value=3,ifelse(random<500,0,2)
channel=0
[State 205, snd]
type=playsnd
trigger1= anim=205 && animelem=3
trigger2= anim=206 && animelem=4
value=1,1;ifelse(anim=205,1,8)
channel=1

[State 205, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= anim=205 && animelem=3
trigger1= var(11):=-1
attr=S,NA
damage=40,0
animtype=Medium 
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-54
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity= -8.71, 0
ground.cornerpush.veloff= -13.38
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State 205, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= anim=206 && animelem=4
trigger1= var(11):=1 && var(12):=-62
attr=S,NA
damage=44,0
animtype=Medium 
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-62
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity= -8.71, 0
ground.cornerpush.veloff= -13.38
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= anim=205 && animelemtime(4)>=0
trigger2= anim=206 && animelemtime(7)>=0
movetype=I

[State 205, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Hard Punch>==========
[Statedef 210]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=ifelse((prevstateno=710 || p2bodydist x<25),211,210)
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 210, snd]
type=playsnd
trigger1= animelem=3 && random<500
value=3,ifelse(random<500,0,2)
channel=0
[State 210, snd]
type=playsnd
trigger1= anim=210 && animelem=4
trigger2= anim=211 && animelem=3
value=1,ifelse((anim=210),3,9)
channel=1

[State 210, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= anim=210 && animelem=5
trigger1= var(11):=1 && var(12):=-48
attr=S,NA
damage=65,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-48
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity= -12.97, 0
ground.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State 210, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= anim=211 && animelem=3
trigger1= var(11):=1 && var(12):=-62
attr=S,NA
damage=60,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-62
hitsound=s2,9
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity= -12.97, 0
ground.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= anim=210 && animelemtime(6)>=0
trigger2= anim=211 && animelemtime(5)>=0
movetype=I

[State 210, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Light Kick>==========
[Statedef 215]
type=S 
movetype=A 
physics=S 
juggle=ifelse(numtarget,15,8)
anim=215
velset=0,0
poweradd=0
sprpriority=1
ctrl=0
facep2=1

[State 215, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 215, snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 215, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=2
trigger1= var(11):=-1
attr=S,NA
damage=20,0
animtype=Light
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-32
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= 72*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 215, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Medium Kick>==========
[Statedef 220]
type=S 
movetype=A 
physics=S 
juggle=ifelse(numtarget,15,8)
anim=220
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 220, snd]
type=playsnd
trigger1= animelem=4 && random<350
value=3,ifelse(random<500,0,2)
channel=0
[State 220, snd]
type=playsnd
trigger1= animelem=4
value=1,5
channel=1

[State 220, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=4
trigger1= var(11):=-1
attr=S,NA
damage=40,0
animtype=Medium 
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-53
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity= -8.71, 0
ground.cornerpush.veloff= -13.38
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State 220, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=4 && prevstateno=710
trigger1= var(11):=-1
attr=S,NA
damage=40,0
animtype=Medium 
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-53
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity= -8.71, 0
ground.cornerpush.veloff= -13.38
air.type=Low
air.velocity=-6,-3
air.cornerpush.veloff=0
ground.cornerpush.veloff= 0
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall=1
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 220, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Hard Kick>==========
[Statedef 225]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=225
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 225, snd]
type=playsnd
trigger1= animelem=3 && random<500
value=3,ifelse(random<500,0,2)
channel=0
[State 225, snd]
type=playsnd
trigger1= animelem=4
value=1,9
channel=1

[State 225, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=4
trigger1= var(11):=1 && var(12):=-59
attr=S,NA
damage=63,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-59
hitsound=s2,9
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity= -12.97, 0
ground.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I

[State 225, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Hard Kick 2>==========
[Statedef 226]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=226
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 226, width]
type=width
trigger1= animelemtime(3)>=0
player=30,0
[State 226, snd]
type=playsnd
trigger1= animelem=3
value=3,ifelse(random<500,0,2)
channel=0
[State 226, snd]
type=playsnd
trigger1= animelem=3
value=1,6
channel=1

[State 226, sts]
type=statetypeset
trigger1= animelemtime(3)>=0
statetype=A
physics=A
[State 226, vel]
type=velset
trigger1= animelem=3
x=5
y=-4

[State 226, snd]
type=playsnd
trigger1= animelem=3
value=0,40
[State 226, dust]
type=helper
trigger1= animelem=3
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 226, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=3 || animelem=4 || animelem=5
trigger1= var(11):=-1
attr=A,NA
damage=13,0
animtype=Hard
guardflag=HA
hitflag=HAF
priority=4,Hit 
pausetime=4,4
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((animelem=3),-96,ifelse((animelem=4),-60,-90))
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
fall.recover=0

[State 226, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=6
trigger1= var(11):=-1
attr=A,NA
damage=30,0
animtype=Hard
fall.animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-59
hitsound=s2,6
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity= -12.97, 0
ground.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity=-6,9
air.fall=1
fall.recover=0
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I


;===========<Crouching Light Punch>==========
[Statedef 230]
type=C 
movetype=A 
physics=C 
juggle=ifelse(numtarget,15,8)
anim=230
velset=0,0
poweradd=0
sprpriority=1
ctrl=0
facep2=1

[State 230, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 230, snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 230, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=2 || animelem=3
trigger1= var(11):=-1
attr=C,NA
damage=12,0
animtype=Light
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-36
hitsound=s2,1
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
air.type=Low
air.hittime=12
air.velocity= -5, -7
down.velocity=-2,-2
air.cornerpush.veloff=0
getpower= 72*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 230, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Medium Punch>==========
[Statedef 235]
type=C 
movetype=A 
physics=C 
juggle=ifelse(numtarget,15,8)
anim=235
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 235, snd]
type=playsnd
trigger1= animelem=2 && random<350
value=3,ifelse(random<500,0,2)
channel=0
[State 235, snd]
type=playsnd
trigger1= animelem=2
value=1,8
channel=1

[State 235, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=2
trigger1= var(11):=1 && var(12):=-29
attr=C,NA
damage=43,0
animtype=Medium 
guardflag=M 
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-29
hitsound=s2,8
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity= -8.71, 0
ground.cornerpush.veloff= -13.38
air.type=Low
air.hittime=12
air.velocity= -5, -7
down.velocity=-3,-3
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 235, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Hard Punch>==========
[Statedef 240]
type=C
movetype=A
physics=C
juggle=ifelse(numtarget,15,8)
anim=ifelse((command="holdfwd" && prevstateno!=750),241,240)
velset=0,0
poweradd=18*(!var(40) && prevstateno!=750)
sprpriority=1
ctrl=0
facep2=1

[State 240, snd]
type=playsnd
trigger1= animelem=3 && random<500
value=3,ifelse(random<500,0,2)
channel=0
[State 240, snd]
type=playsnd
trigger1= animelem=3
value=1,9
channel=1

[State NHB-ZC]
type=nothitby
trigger1= prevstateno=750 && animelemtime(4)<0
value=SCA
time=1

[State 240, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=4 && anim=240
trigger1= var(11):=1 && var(12):=-32
attr=C,NA
damage=65,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-20,-32
hitsound=s2,9
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity= -12.97, 0
ground.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity= -5, -7
down.velocity=-4,-4
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State 240, hit]
type=hitdef
trigger1= animelem=4 && anim=240 && prevstateno=750
trigger1= var(11):=1 && var(12):=-32
attr=C,SA
damage=65,0
animtype=Back
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-20,-32
hitsound=s2,9
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity= -12.97, 0
ground.cornerpush.veloff= 0
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity=-5,-6.2
air.cornerpush.veloff=0
getpower=0,0
givepower=36,36
yaccel=.6
fall=1
fall.recover=0

[State 240, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=3 && anim=241
trigger1= var(11):=1 && var(12):=-120
attr=C,NA
damage=65,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-20,-120
hitsound=s2,9
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity= -12.97, 0
ground.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*(!var(40) && prevstateno!=750), 36*(!var(40) && prevstateno!=750)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= anim=240 && animelemtime(5)>=0
trigger2= anim=241 && animelemtime(6)>=0
movetype=I

[State 240, end]
type=changestate
trigger1= !animtime
value=ifelse((anim=241),0,11)
ctrl=1


;===========<Crouching Light Kick>==========
[Statedef 245]
type=C 
movetype=A 
physics=C 
juggle=ifelse(numtarget,15,8)
anim=ifelse(command="holdfwd",246,245)
velset=0,0
poweradd=0
sprpriority=1
ctrl=0
facep2=1

[State 245, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 245, snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 245, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=2
trigger1= var(11):=-1
attr=C,NA
damage=20,0
animtype=Light
guardflag=L
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((anim=245),-4,-17)
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
air.type=Low
air.hittime=12
air.velocity= -5, -7
down.velocity=-2,-2
air.cornerpush.veloff=0
getpower= 72*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 245, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Medium Kick>==========
[Statedef 250]
type=C 
movetype=A 
physics=C 
juggle=ifelse(numtarget,15,8)
anim=ifelse(command="holdfwd",251,250)
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 250, snd]
type=playsnd
trigger1= animelem=2 && random<350
value=3,ifelse(random<500,0,2)
channel=0
[State 250, snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 250, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=2
trigger1= var(11):=-1
attr=S,NA
damage=40,0
animtype=Medium 
guardflag=L
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((anim=250),-14,-31)
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity= -8.71, 0
ground.cornerpush.veloff= -13.38
air.type=Low
air.hittime=12
air.velocity= -5, -7
down.velocity=-3,-3
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 250, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Hard Kick>==========
[Statedef 255]
type=C
movetype=A
physics=C
juggle=ifelse(numtarget,15,8)
anim=255
velset=0,0
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=1

[State 255, snd]
type=playsnd
trigger1= animelem=4 && random<500
value=3,ifelse(random<500,0,2)
channel=0
[State 255, snd]
type=playsnd
trigger1= animelem=4
value=1,6
channel=1

[State 255, hit]
type=hitdef
trigger1= p2stateno!=[5020,5040]
trigger1= animelem=4
trigger1= var(11):=-1
attr=C,NA
damage=60,0
animtype=Hard
guardflag=L
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-30
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.slidetime=18
ground.hittime=18
ground.velocity=-1.33,-6.85
air.type=Trip
air.velocity=-1.33,-6.85
down.velocity=-4,-4
ground.cornerpush.veloff= 0
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
fall=1
fall.recover=0

[State Idle]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 255, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Air Light Punch>==========
[Statedef 260]
type=A 
movetype=A 
physics=A 
juggle=ifelse(numtarget,15,8)
anim=260
poweradd=0
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105]) && p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 260, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 260, snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 260, hit]
type=hitdef
trigger1= p2stateno!=5040
trigger1= animelem=2
trigger1= var(11):=1 && var(12):=-43
attr=A,NA
damage=20,0
animtype=Light
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-43
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
guard.velocity= -5.62
guard.cornerpush.veloff= -9.83
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= 72*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State 260, sts]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I


;===========<Air Medium Punch>==========
[Statedef 265]
type=A 
movetype=A 
physics=A 
juggle=ifelse(numtarget,15,8)
anim=265
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105]) && p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 265, snd]
type=playsnd
trigger1= animelem=3 && random<350
value=3,ifelse(random<500,0,2)
channel=0
[State 265, snd]
type=playsnd
trigger1= animelem=3
value=1,8
channel=1
[State 265, snd]
type=playsnd
trigger1= animelem=3
value=5,5
channel=1

[State 265, hit]
type=hitdef
trigger1= p2stateno!=5040
trigger1= animelem=3
trigger1= var(11):=1 && var(12):=-48
attr=A,NA
damage=40,0
animtype=Medium 
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-48
hitsound=s2,8
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
guard.velocity= -8.71
guard.cornerpush.veloff= -13.38
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State 265, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I


;===========<Air Hard Punch>==========
[Statedef 270]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim=270
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105]) && p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 270, snd]
type=playsnd
trigger1= animelem=5 && random<500
value=3,ifelse(random<500,0,2)
channel=0
[State 270, snd]
type=playsnd
trigger1= animelem=5
value=1,3
channel=1

[State 270, hit]
type=hitdef
trigger1= p2stateno!=5040
trigger1= animelem=6
trigger1= var(11):=1 && var(12):=-66
attr=A,NA
damage=60,0
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State 270, sts]
type=statetypeset
trigger1= animelemtime(8)>=0
movetype=I


;===========<Air Light Kick>==========
[Statedef 275]
type=A 
movetype=A 
physics=A 
juggle=ifelse(numtarget,15,8)
anim=ifelse((vel x||var(9)=2),275,276)
poweradd=0
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105]) && p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 275, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 275, snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 275, hit]
type=hitdef
trigger1= p2stateno!=5040
trigger1= animelem=2
trigger1= var(11):=-1
attr=A,NA
damage=20,0
animtype=Light
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((anim=275),-42,-62)
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
guard.velocity= -5.62
guard.cornerpush.veloff= -9.83
air.type=High
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= 72*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State 275, sts]
type=statetypeset
trigger1= anim=275 && animelemtime(7)>=0
trigger2= anim=276 && animelemtime(3)>=0
movetype=I


;===========<Air Medium Kick>==========
[Statedef 280]
type=A 
movetype=A 
physics=A 
juggle=ifelse(numtarget,15,8)
anim=280
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105]) && p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 280, snd]
type=playsnd
trigger1= animelem=3 && random<350
value=3,ifelse(random<500,0,2)
channel=0
[State 280, snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 280, hit]
type=hitdef
trigger1= p2stateno!=5040
trigger1= animelem=3
trigger1= var(11):=-1
attr=A,NA
damage=40,0
animtype=Medium 
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-47
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
guard.velocity= -8.71
guard.cornerpush.veloff= -13.38
air.type=High
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State 280, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I


;===========<Air Hard Kick>==========
[Statedef 285]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim=285
poweradd=18*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105]) && p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 285, snd]
type=playsnd
trigger1= animelem=3 && random<500
value=3,ifelse(random<500,0,2)
channel=0
[State 285, snd]
type=playsnd
trigger1= animelem=3
value=1,6
channel=1

[State 285, hit]
type=hitdef
trigger1= p2stateno!=5040
trigger1= animelem=3
trigger1= var(11):=-1
attr=A,NA
damage=60,0
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-54
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -5.62, 0
ground.cornerpush.veloff= -9.83
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
air.type=Low
air.hittime=12
air.velocity= -5, -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,216)*!var(40), 36*!var(40)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State 285, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I


;===========================================================================
;=================================<THROWS>==================================
;===========================================================================
;==========<GROUND THROW CONTROLLER>==========
[Statedef 800]
type=S
movetype=A
physics=S
juggle=15
velset=0,0
ctrl=0
anim=800
sprpriority=1
facep2=1
poweradd=18*!var(40)

[State 800, strengthvar]
type=varset
trigger1= !time && var(59)<=0
var(10)=ifelse((command="a" || command="b" || command="c"),2,1)
[State 800, strengthvar]
type=varset
trigger1= !time && var(59)>=1
var(10)=ifelse(random<500,2,1)

[State 800, Don't Guard]
type=attackdist
trigger1=1
value=0

[State 800, hit]
type=hitdef
trigger1= animelem=2 && var(10)=1
attr=S,NT
hitflag=M-
priority=1,Miss 
sparkno=-1
p1facing=ifelse((var(59)<=0&&command="holdfwd") || (var(59)>=1&&frontedgedist<backedgedist),1,-1)
p2facing=1
p1stateno=ifelse((var(59)<=0&&command="holdfwd") || (var(59)>=1&&frontedgedist<backedgedist),801,803) 
guard.dist=0
animtype=Up
fall.xvelocity=-3
fall.yvelocity=-6
fall=1 
fall.recover=0

[State 800, hit]
type=hitdef
trigger1= animelem=2 && var(10)=2
attr=S,NT
hitflag=M-
priority=1,Miss 
sparkno=-1
p1facing=ifelse((var(59)<=0&&command="holdfwd") || (var(59)>=1&&frontedgedist<backedgedist),1,-1)
p2facing=1
p1stateno=ifelse((var(59)<=0&&command="holdfwd") || (var(59)>=1&&frontedgedist<backedgedist),801,803)
guard.dist=0
animtype=Back
fall=1 
fall.recover=0

[State 800, misssnd]
type=playsnd
trigger1= animelem=4
value=5000,1
channel=0

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 800, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 801]
type=S
movetype=A
physics=S
anim=801
ctrl=0
sprpriority=-1

[State Throw]
type=targetstate
trigger1= !time
value=802

[State 801, grab snd]
type=playsnd
trigger1= !time
value=4,29
channel=0
[State 801, grab snd]
type=playsnd
trigger1= !time
value=0,800

[State Width]
type=width
trigger1= 1
edge=30,0

[State 801, bind 1]
type=targetbind
trigger1= 1
pos=50,0

[State 801, end]
type=changestate
trigger1= !animtime
value=ifelse(var(10)=1,810,820)
ctrl=0


;---PLAYER TURNS---
[Statedef 803]
type=S
movetype=A
physics=S
anim=803
ctrl=0
sprpriority=-1

[State Throw]
type=targetstate
trigger1= !time
value=804

[State 803, grab snd]
type=playsnd
trigger1= !time
value=4,29
channel=0
[State 803, grab snd]
type=playsnd
trigger1= !time
value=0,800

[State Width]
type=width
trigger1= 1
edge=30,30

[State 803, bind 1]
type=targetbind
trigger1= animelemtime(1)>=0 && animelemtime(2)<0
pos=-50,0
[State 803, bind 2]
type=targetbind
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
pos=-25,0
[State 803, bind 3]
type=targetbind
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
pos=-0,0
[State 803, bind 4]
type=targetbind
trigger1= animelemtime(4)>=0
pos=25,0
[State 803, bind 5]
type=targetbind
trigger1= animelemtime(5)>=0
pos=50,0

[State 803, end]
type=changestate
trigger1= !animtime
value=ifelse(var(10)=1,810,820)
ctrl=0


;---TARGET---
[Statedef 802]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 802, anim]
type=changeanim2
trigger1= !time
value=802
[Statedef 804]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 804, anim]
type=changeanim2
trigger1= !time
value=804


;==========<SEOI NAGE>==========
;---PLAYER---
[Statedef 810]
type=S
movetype=A
physics=S
anim=810
sprpriority=1
ctrl=0

[State 810, throw]
type=targetstate
trigger1= !time
value=811
[State 810, throw]
type=targetfacing
trigger1= !time
value=-1

[State 810, width]
type=width
trigger1= animelemtime(5)<0
edge=50,0
[State 810, width]
type=width
trigger1= animelemtime(5)>=0 && animelemtime(6)<0
edge=60,0
[State 810, width]
type=width
trigger1= animelemtime(6)>=0 && animelemtime(7)<0
edge=75,0

[State 810, throwsnd]
type=playsnd
trigger1= animelem=5
value=3,2
channel=0
[State 810, throwsnd]
type=playsnd
trigger1= animelem=4
value=1,6
channel=1

[State 810, bind 1]
type=targetbind
trigger1= animelemtime(1)>=0 && animelemtime(2)<0
pos=66,-76
[State 810, bind 2]
type=targetbind
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
pos=60,-77
[State 810, bind 3]
type=targetbind
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
pos=-4,-72
[State 810, bind 4]
type=targetbind
trigger1= animelemtime(4)>=0 && animelemtime(5)<0
pos=52,-70
[State 810, bind 5]
type=targetbind
trigger1= animelemtime(5)>=0 && animelemtime(6)<0
pos=72,-38
[State 810, bind 6]
type=targetbind
trigger1= animelem=6
pos=82,0

[State 810, hurt]
type=targetlifeadd
trigger1= animelem=6
value=-ceil(118*fvar(12))
[State 810, hurt]
type=targetpoweradd
trigger1= animelem=6
value=36
[State 810, hurt]
type=poweradd
trigger1= animelem=6 && !var(40)
value=72

[State 810, throw]
type=targetstate
trigger1= animelem=6
value=812

[State 810, snd]
type=playsnd
trigger1= numtarget
trigger1= target,stateno=812
value=5,2
persistent=0
[State 810, dust]
type=explod
trigger1= numtarget
trigger1= target,stateno=812
anim=7120
ID=7120
sprpriority=-2
postype=p2
pos=0,0
removetime=-2
ownpal=1
scale=.5,.5
persistent=0
[State 810, shake]
type=envshake
trigger1= numtarget
trigger1= target,stateno=812
time=12
freq=60
ampl=6
persistent=0

[State 810, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---TARGET---
[Statedef 811]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 811, anim]
type=changeanim2
trigger1= !time
value=811
[State 811, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0

[Statedef 812]
type=A
movetype=H
physics=N
[State 812, anim]
type=changeanim2
trigger1= !time
value=812
[State 812, pos]
type=posset
trigger1= 1
y=0
[State 812, hitground]
type=selfstate
trigger1= time>=12
value=5101


;==========<...>==========
;---PLAYER---
[Statedef 820]
type=S
movetype=A
physics=S
anim=820
sprpriority=1
ctrl=0

[State 820, throw]
type=targetstate
trigger1= !time
value=821
[State 820, throw]
type=targetfacing
trigger1= !time
value=-1

[State 820, width]
type=width
trigger1= animelemtime(8)<0
edge=50,0
[State 820, width]
type=width
trigger1= animelemtime(8)>=0 && animelemtime(9)<0
edge=80,0

[State 820, throwsnd]
type=playsnd
trigger1= animelem=4
value=4,1
channel=0
[State 820, throwsnd]
type=playsnd
trigger1= animelem=6
value=1,3
channel=1
[State 820, throwsnd]
type=playsnd
trigger1= animelem=9
value=5,3

[State 820, bind 1]
type=targetbind
trigger1= animelemtime(1)>=0 && animelemtime(2)<0
pos=60,-71
[State 820, bind 2]
type=targetbind
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
pos=66,-75
[State 820, bind 3]
type=targetbind
trigger1= animelemtime(3)>=0 && animelemtime(8)<0
pos=66,-70
[State 820, bind 8]
type=targetbind
trigger1= animelemtime(8)>=0 && animelemtime(9)<0
pos=112,-66

[State 820, claw]
type=helper
trigger1= animelem=8
helpertype=normal
stateno=825
ID=825
name="Claw"
postype=p1
pos=105,-65
size.ground.front=(target,const(size.ground.back))

[State 820, hitsnd]
type=playsnd
trigger1= animelem=8 && numtarget
value=2,9
[State 820, sparks]
type=explod
trigger1= animelem=8 && numtarget
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=105,-65
ownpal=1
persistent=0
pausemovetime=100
supermovetime=100
[State 820, bloodsparks]
type=helper
trigger1= animelem=8 && numtarget
trigger1= var(11):=1
helpertype=normal
stateno=7050
ID=7050
name="Blood"
postype=p1
pos=105,-65
facing=-1
ownpal=1
pausemovetime=100
supermovetime=100

[State 820, hurt]
type=targetlifeadd
trigger1= animelem=8
value=-ceil(108*fvar(12))
kill=0
[State 820, hurt]
type=targetpoweradd
trigger1= animelem=8
value=36
[State 820, hurt]
type=poweradd
trigger1= animelem=8 && !var(40)
value=72

[State 820, throw]
type=targetstate
trigger1= animelem=9
value=822

[State 825, snd]
type=playsnd
trigger1= (target,stateno=822) && (target,backedgebodydist<=0)
value=5,2
persistent=0
[State 825, dust]
type=explod
trigger1= (target,stateno=822) && (target,backedgebodydist<=0)
anim=7121
ID=7121
sprpriority=-2
postype=back
pos=320,ceil(screenpos y-65)
ownpal=1
scale=.5,.5
persistent=0

[State 825, syncvar]
type=varset
trigger1= numtarget
var(0)=(target,stateno)

[State 820, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---TARGET---
[Statedef 821]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 821, anim]
type=changeanim2
trigger1= !time
value=821
[State 821, camera]
type=screenbound
trigger1= 1
value=1
movecamera=1,0

[Statedef 822]
type=A
movetype=H
physics=N
[State 822, camera]
type=screenbound
trigger1= 1
value=1
movecamera=1,0
[State 822, vel]
type=velset
trigger1= 1
x=-12
y=0
[State 822, hitwall]
type=changestate
trigger1= backedgebodydist<=0
value=823

[Statedef 823]
type=A
movetype=H
physics=N
velset=0,0
[State 823, hurt]
type=lifeadd
trigger1= !time
value=-10
kill=1
[State 823, anim]
type=changeanim2
trigger1= !time
value=823
[State 823, camera]
type=screenbound
trigger1= 1
value=1
movecamera=1,0
[State 823, turn]
type=turn
trigger1= !time
persistent=0
[State 823, shake]
type=envshake
trigger1= !time
time=16
fre=60
ampl=6
[State 823, pos]
type=posadd
trigger1= animelem=2
x=ifelse((frontedgebodydist>backedgebodydist),backedgebodydist,frontedgebodydist)
y=-const(size.mid.pos.y)
persistent=0
[State 823, vel]
type=velset
trigger1= animelem=2
x=-3
y=-6
[State 823, grav]
type=gravity
trigger1= animelemtime(2)>=0
[State 823, hitground]
type=selfstate
trigger1= vel y>0 && pos y>=25
value=5100
