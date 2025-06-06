; ___________________________________
;| Morrigan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<SPECIAL STATES>=======================================
;==============================================================================================

;========================<SOUL FIST>=============================
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=72*!var(40)
sprpriority=1
facep2=1

[State 1000, strengthvar]
type=varset
trigger1= !time && var(59)<=0
var(10)=ifelse(command="qcfz",3,ifelse(command="qcfy",2,1))
[State 1000, strengthvarAI]
type=varset
trigger1= !time && var(59)>=1
var(10)= ifelse((p2movetype=H || random<500), 3, ifelse(random<500, 2, 1))

[State 1000, fx]
type=explod
trigger1= !time
anim=1004
ID=1004
sprpriority=3
postype=p1
bindtime=-1
removeongethit=1
ownpal=1

[State 1000, SoulFist]
type=helper
trigger1= animelem=6
helpertype=normal
stateno=1005
ID=1005
name="Soul Fist"
postype=p1
pos=6,-50
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1= animelem=3
value=4,13
channel=0
[State 1000, snd]
type=playsnd
trigger1= animelem=6
value=5,0

[State 1000, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;========================<MID-AIR SOUL FIST>=============================
[Statedef 1050]
type=A
physics=N
movetype=A
anim=1050
ctrl=0
velset=ifelse(vel x<0,-1,ifelse(vel x>0,1,0)),ifelse(vel y<0,-1,1)
poweradd=72*!var(40)
sprpriority=1

[State 1050, strengthvar]
type=varset
trigger1= !time && var(59)<=0
var(10)=ifelse(command="qcfz",3,ifelse(command="qcfy",2,1))
[State 1050, strengthvarAI]
type=varset
trigger1= !time && var(59)>=1
var(10)= ifelse((p2movetype=H || random<500), 3, ifelse(random<500, 2, 1))

[State 1050, width]
type=width
trigger1= (animelemtime(4)>=0 && animelemtime(9)<0)
value=16,0

[State 1050, fx]
type=explod
trigger1= animelem=4
anim=1054
ID=1054
sprpriority=3
postype=p1
bindtime=-1
removeongethit=1
ownpal=1

[State 1050, SoulFist]
type=helper
trigger1= animelem=6
helpertype=normal
stateno=1055
ID=1055
name="Soul Fist"
postype=p1
pos=60,-48
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1050, vel]
type=velset
trigger1= animelem=6
x=-3
y=-6
[State 1050, statetype]
type=statetypeset
trigger1= animelemtime(6)>=0
physics=A

[State 1050, snd]
type=playsnd
trigger1= animelem=4
value=4,13
channel=0
[State 1050, snd]
type=playsnd
trigger1= animelem=6
value=5,0


;========================<SHADOW BLADE>=============================
[Statedef 1100]
type=S
physics=S
movetype=A
anim=1100
ctrl=0
velset=0,0
poweradd=72*(!var(40) && prevstateno!=750)
juggle=8
facep2=1
sprpriority=1

[State 1100, strengthvar]
type=varset
trigger1= !time && var(59)<=0
var(10)=ifelse((command="dfz" || prevstateno=750),3,ifelse(command="dfy",2,1))
[State 1100, strengthvarAI]
type=varset
trigger1= !time && var(59)>=1
var(10)=ifelse((random<500 || prevstateno=750),3,ifelse(random<666,2,1))

[State 1100, nothitby]
type=nothitby
trigger1= anim=1100 && animelemtime(4)<0 && prevstateno!=750
value=SCA
time=1
ignorehitpause=1
[State NHB-ZC]
type=nothitby
trigger1= prevstateno=750 && animelemtime(2)<0
value=SCA
time=1

[State 1100, vel]
type=velset
trigger1= anim=1100 && animelem=4
x=ifelse(var(10)=3,10,ifelse(var(10)=2,8,6))
y=ifelse(var(10)=3,-11,ifelse(var(10)=2,-9,-7))
[State 1100, vel]
type=velmul
trigger1= vel y<0
x=.95
[State 1100, vel]
type=velset
trigger1= anim=1101
x=0

[State 1100, snd]
type=playsnd
trigger1= anim=1100 && animelem=4
value=0,41
[State 1100, dust]
type=helper
trigger1= anim=1100 && animelem=4
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1100, snd]
type=playsnd
trigger1= anim=1100 && animelem=2
value=4,12
channel=0
ignorehitpause=1
persistent=0

[State 1100, hit]
type=hitdef
trigger1= (animelem=2 || animelem=3) && anim=1100
trigger1= !movecontact && !movereversed
trigger1= var(11):=1 && var(12):=ifelse((animelem=2),-35,-60)
attr=S,SA
damage=104+(7*var(10)),7
animtype=Back
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=2),-35,-60)
hitsound=s2,9
guardsound=s2,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity=-2-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-2-(var(10)/2),-6-var(10)
ground.cornerpush.veloff= 0
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
getpower= ifelse(p2movetype=H,72,144)*(!var(40) && prevstateno!=750), 36*(!var(40) && prevstateno!=750)
givepower=36,36
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0;1
;fall.recovertime=ifelse(var(10)=3, 67, ifelse(var(10)=2, 54, 46))
fall.animtype=Medium
yaccel=.5
forcestand=1

[State 1100, hit2]
type=hitdef
trigger1= animelem=4 && anim=1100
trigger1= !movecontact && !movereversed
trigger1= var(11):=1 && var(12):=-100
attr=A,SA
damage=83,7
animtype=Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-100
hitsound=s2,9
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-2-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-2-(var(10)/2),-6-var(10)
ground.cornerpush.veloff= 0
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
getpower= ifelse(p2movetype=H,72,144)*(!var(40) && prevstateno!=750), 36*(!var(40) && prevstateno!=750)
givepower=36,36
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0;1
;fall.recovertime=ifelse(var(10)=3, 63, ifelse(var(10)=2, 50, 42))
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1
airguard.cornerpush.veloff= 0

[State 1100, statetype]
type=statetypeset
trigger1= anim=1100 && animelemtime(4)>=0
statetype=A
physics=A
[State 1100, anim]
type=changeanim
trigger1= anim=1100 && animelemtime(4)>0 && vel y>-1
value=1101
[State 1100, turn]
type=turn
trigger1= anim=1101
persistent=0

[State Idle]
type=statetypeset
trigger1= anim=1101
movetype=I


;========================<PARASITE ROLL>=============================
[Statedef 1200]
type=A
physics=N
movetype=A
anim=1200
ctrl=0
velset=0,0
poweradd=72*!var(40)
juggle=8
facep2=1
sprpriority=1

[State 1200, strengthvar]
type=varset
trigger1= !time && var(59)<=0
var(10)=ifelse((command="qcbc"),3,ifelse(command="qcbb",2,1))
[State 1200, strengthvarAI]
type=varset
trigger1= !time && var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1200, snd]
type=playsnd
trigger1= anim=1200 && !animtime
value=4,11
channel=0
[State 1200, snd]
type=playsnd
trigger1= anim=1200 && !animtime
value=0,40
[State 1200, dust]
type=helper
trigger1= anim=1200 && !animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
[State 1200, anim]
type=changeanim
trigger1= anim=1200 && !animtime
value=1201

[State 1200, vel]
type=velset
trigger1= anim=1201 && animelem=1
x=6
y=-3
[State 1200, vel]
type=veladd
trigger1= anim=1201
y=-.1
[State 1200, statetype]
type=statetypeset
trigger1= anim=1201
statetype=A
physics=N

[State 1200, spin]
type=playsnd
trigger1= anim=1201 && !(animelemtime(1)%9)
value=1,6
channel=1

[State 1200, anim]
type=changeanim
trigger1= anim=1201 && !animtime
;ifelse(var(10)=3,animelemtime(18)>=0,ifelse(var(10)=2,animelemtime(12)>=0,animelemtime(6)>=0))
value=1205
persistent=0

[State 1200, statetype]
type=statetypeset
trigger1= anim=1205
statetype=A
physics=A

[State 1200, hit]
type=hitdef
trigger1= anim=1201 && (animelem=2 || animelem=8 || animelem=14)
trigger1= var(11):=1 && var(12):=-70
attr=A,SA 
damage=90,7
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=4,Hit 
pausetime=14,14
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
p2facing=1
ground.velocity=-4,-6
air.type=Low
air.velocity=-3.5,-7
ground.cornerpush.veloff= 0
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0;0
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1
airguard.cornerpush.veloff= 0

[State 1200, hitb]
type=hitdef
trigger1= anim=1201 && (animelem=5 || animelem=11 || animelem=17)
trigger1= var(11):=1 && var(12):=-70
attr=A,SA 
damage=90,7
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=4,Hit 
pausetime=14,14
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
p2facing=-1
ground.velocity=4,-6
air.type=Low
air.velocity=3.5,-7
ground.cornerpush.veloff= 0
guard.velocity= -12.97
guard.cornerpush.veloff= -17.2
getpower= ifelse(p2movetype=H,72,144)*!var(40), 36*!var(40)
givepower=36,36
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0;0
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1
airguard.cornerpush.veloff= 0


;========================<VECTOR DRAIN>=============================
[Statedef 1300]
type=S
movetype=A
physics=S
juggle=15
velset=0,0
ctrl=0
anim=1300
sprpriority=1
facep2=1

[State 1300, strengthvar]
type=varset
trigger1= var(10)!=3
var(10)=3
[State 1300, pos]
type=posadd
trigger1= animelem=3 || animelem=4
x=ifelse((animelem=3),25,15)

[State 1300, Don't Guard]
type=attackdist
trigger1=1
value=0

[State 1300, hit]
type=hitdef
trigger1= animelem=2
attr=S,ST
hitflag=M-
priority=1,Miss 
sparkno=-1
p1facing=1
p2facing=1
p1stateno=1301
fall=1 
fall.recover=0;0
ID=1300
yaccel=.5

[State 1300, misssnd]
type=playsnd
trigger1= animelem=4
value=5000,1
channel=0

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 1300, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 1301]
type=A
physics=N
movetype=A
anim=1301
ctrl=0
velset=0,0
sprpriority=1

[State Throw]
type=targetstate
trigger1= !time
value=1306

[State 1301, assert]
type=assertspecial
trigger1= 1
flag=noautoturn
[State 1301, width]
type=width
trigger1= 1
edge=30,0
[State 1301, vel]
type=velmul
trigger1= vel x
x=.97
[State 1301, jet]
type=helper
trigger1= (anim=[1302,1303]) && !numhelper(6020)
helpertype=normal
stateno=6026
ID=6020
name="Jets"
postype=p1
ownpal=1
[State 1301, dust]
type=explod
trigger1= anim=1302
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-54,-ceil(pos y)
scale=.5,.5
ownpal=1
persistent=0
pausemovetime=-1
supermovetime=-1

[State 1301, grabsnd]
type=playsnd
trigger1= !time
value=0,800
[State 1301, anim]
type=changeanim
trigger1= anim=1301 && !animtime
value=1302
[State 1301, throw]
type=targetstate
trigger1= anim=1302
value=1307
persistent=0

[State 1301, vel]
type=velset
trigger1= anim=1302 && animelem=1
x=4
y=-6
[State 1301, vel]
type=velmul
trigger1= anim=1302
y=.97

[State 1301, anim]
type=changeanim
trigger1= anim=1302 && vel y>=-1
value=1303
[State 1301, throw]
type=targetstate
trigger1= anim=1303
value=1308
persistent=0
[State 1301, snd]
type=playsnd
trigger1= anim=1303
value=4,11
channel=0
persistent=0
[State 1301, spin]
type=playsnd
trigger1= anim=1303 && (animelem=4 || animelem=6 || animelem=8)
value=1,6
channel=1
[State 1301, spiral]
type=explod
trigger1= anim=1303 && animelem=5
anim=1315
ID=1315
sprpriority=2
postype=p1
facing=-1
bindtime=-1
ownpal=1

[State 1301, vel]
type=velset
trigger1= anim=1303 && animelem=1
x=-5
y=-10
[State 1301, vel]
type=veladd
trigger1= anim=1303
y=.7

[State 1301, bind 1]
type=targetbind
trigger1= anim=1301 && animelemtime(1)>=0 && animelemtime(2)<0
pos=59,-71
[State 1301, bind 2]
type=targetbind
trigger1= anim=1301 && animelemtime(2)>=0 && animelemtime(3)<0
pos=64,-76
[State 1301, bind 3]
type=targetbind
trigger1= anim=1301 && animelemtime(3)>=0 && animelemtime(4)<0
pos=60,-76

[State 1301, bind 1302]
type=targetbind
trigger1= anim=1302
pos=42,-81

[State 1301, bind 1]
type=targetbind
trigger1= anim=1303 && animelemtime(1)>=0 && animelemtime(2)<0
pos=42,-81
[State 1301, bind 2]
type=targetbind
trigger1= anim=1303 && animelemtime(2)>=0 && animelemtime(3)<0
pos=25,-95
[State 1301, bind 3]
type=targetbind
trigger1= anim=1303 && animelemtime(3)>=0 && animelemtime(4)<0
pos=2,-98
[State 1301, bind 4]
type=targetbind
trigger1= anim=1303 && animelemtime(4)>=0 && animelemtime(5)<0
pos=-23,-90
[State 1301, bind 5]
type=targetbind
trigger1= anim=1303 && animelemtime(5)>=0 && animelemtime(6)<0
pos=-37,-74
[State 1301, bind 6]
type=targetbind
trigger1= anim=1303 && animelemtime(6)>=0 && animelemtime(7)<0
trigger2= anim=1303 && animelemtime(9)>=4
pos=2,-38
[State 1301, bind 7]
type=targetbind
trigger1= anim=1303 && animelemtime(7)>=0 && animelemtime(8)<0
pos=48,-41
[State 1301, bind 8]
type=targetbind
trigger1= anim=1303 && animelemtime(8)>=0 && animelemtime(9)<0
pos=2,-44
[State 1301, bind 9]
type=targetbind
trigger1= anim=1303 && animelemtime(9)>=0 && animelemtime(9)<4
pos=-46,-41

[State 1301, end]
type=changestate
trigger1= anim=1303 && vel y>0 && pos y>=-ceil(vel y)
value=1305


;---HIT FLOOR---
[Statedef 1305]
type=C
physics=C
movetype=A
anim=1305
ctrl=0
velset=0,0
sprpriority=1
[State 1305, pos]
type=posset
trigger1= animelemtime(2)<0
y=0
[State 1305, vel]
type=velset
trigger1= animelemtime(2)<0
x=0
y=0

[State 1305, assert]
type=assertspecial
trigger1= 1
flag=noautoturn

[State 1305, throw]
type=targetstate
trigger1= !time
value=1310

[State 1305, hurt]
type=targetlifeadd
trigger1= !time
value=-ceil(132*fvar(12))
[State 1305, hurt]
type=targetpoweradd
trigger1= !time
value=36
[State 1305, hurt]
type=poweradd
trigger1= !time && !var(40)
value=72

[State 1305, bind 1]
type=targetbind
trigger1= animelemtime(1)>=0 && animelemtime(2)<0
pos=48,0

[State 1305, shake]
type=envshake
trigger1= !time
time=12
freq=60
ampl=4
[State 1305, snd]
type=playsnd
trigger1= !time
value=5,2
[State 1305, dust]
type=explod
trigger1= !time
anim=7120
ID=7120
sprpriority=-2
postype=p2
pos=0,0
ownpal=1
scale=.75,.75

[State 1305, vel]
type=velset
trigger1= animelem=2
x=-4
y=-6
[State 1305, sts]
type=statetypeset
trigger1= animelemtime(2)>=0
statetype=A
physics=A


;---TARGET---
[Statedef 1306]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1306, anim]
type=changeanim2
trigger1= !time
value=1306
[State 1306, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0

[Statedef 1307]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1307, anim]
type=changeanim2
trigger1= !time
value=1307
[State 1307, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0

[Statedef 1308]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1308, anim]
type=changeanim2
trigger1= !time
value=1308
[State 1308, camera]
type=screenbound
trigger1= 1
value=1
movecamera=0,0
[State 1308, spr]
type=sprpriority
trigger1= (animelemtime(6)>=0 && animelemtime(7)<0) || animelemtime(8)>=8
value=2
[State 1308, spr]
type=sprpriority
trigger1= (animelemtime(6)<0 || animelemtime(7)>=0) && animelemtime(8)<8
value=0

;---TARGET HIT FLOOR---
[Statedef 1310]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1310, anim]
type=changeanim2
trigger1= !time
value=1310
[State 1310, vel]
type=velset
trigger1= animelem=2
x=-4
y=-6
[State 1310, grav]
type=gravity
trigger1= animelemtime(2)>=0
[State 1310, turn]
type=turn
trigger1= animelemtime(2)>=0 && vel y>0 && pos y>=-10
persistent=0
[State 1310, end]
type=selfstate
trigger1= animelemtime(2)>=0 && vel y>0 && pos y>=-10
value=5100
