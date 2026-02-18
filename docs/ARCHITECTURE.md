# System Architecture Analysis

This document provides a detailed analysis of the Ryona Morrigan MUGEN character's fight mode system, skills, animations, and counter-party interactions.

---

## 1. Fight Mode Architecture

### 1.1 Character Definition

| Property | Value |
|----------|-------|
| **Display Name** | Ryona Morrigan Sex |
| **Base Character** | Morrigan Aensland (Darkstalkers / Capcom) |
| **Version Date** | 03,26,2008 |
| **MUGEN Version** | 06,14,2003 |
| **Authors** | Phantom, Soka |

### 1.2 File Organization

| File | Purpose |
|------|---------|
| **morrigan_ryona.def** | Character definition, palette and state file references |
| **Constants.cns** | Life, power, size, velocity, movement constants |
| **Command.cmd** | Input commands, AI state triggers |
| **States/System.st** | Parry, guard, dash, power charge, dark force, recovery |
| **States/Normal.st** | Standing, crouching, air normals, command normals, throws |
| **States/Specials.st** | Soul Fist, Shadow Blade, Vector Drain |
| **States/EX-Specials.st** | EX Soul Fist, EX Shadow Blade, EX Vector Drain |
| **States/Supers.st** | Soul Phoenix, Cardinal Blade, Valkyrie Turn, Finishing Shower, Darkness Illusion, Eternal Slumber, Astral Vision |
| **States/Helpers.st** | Projectiles, AI helper, blood sparks, Super Charge |
| **States/DarkForce.st** | Dark Force (Astral Vision) activation and duration |
| **inu.txt** | Dog minion states (Doggystyle) |
| **leilei.txt** | Rei-Rei summon states |
| **Morrigan.txt** | Morrigan front/back, Barrette, Lilith, Q-BEE, Bulleta states |
| **Portraits/Morrigan.txt** | Portrait and win pose states |
| **Portraits/Command.cmd** | Portrait selection commands |

### 1.3 Movement System

| State | File | Description |
|-------|------|-------------|
| Walk (20) | System.st | Ground movement |
| Run (100) | System.st | Forward dash – F,F |
| Back dash (105) | System.st | Backward dash – B,B |
| Air dash (100/105) | System.st | Air dash forward/back |
| Jump (40) | System.st | Jump initiation |
| Low jump | System.st | U (tap) |
| High jump | System.st | D,U |
| Dodge (710/720/725) | System.st | a+x; Forward/Backward sidestep |
| Power Charge (740) | System.st | b+y (hold) |
| Zero Counter (750) | System.st | B,DB,D,p/k during guard |

### 1.4 Guard & Parry System

| State | Description |
|-------|-------------|
| 120–155 | Guard (stand/crouch/air), guard hit |
| 700 | Standing parry (tap F) |
| 701 | Crouching parry (tap D) |
| 702 | Air parry (tap F in air) |
| 710 | Dodge/Roll (a+x) |
| 720/725 | Forward/Backward sidestep |

### 1.5 Power & Dark Force System

| State | Description |
|-------|-------------|
| 740 | Power Charge – b+y, builds power |
| 750 | Zero Counter – B,DB,D,p/k, costs 1000 power |
| 770/771 | Dark Force (Astral Vision) – c+z, costs 3000 power |
| 774/775/779 | Dark Force helper and duration |
| var(40) | Dark Force active flag |
| var(59) | AI mode flag (<=0 human, >=1 AI) |

---

## 2. Skill Architecture

### 2.1 Normal Moves (States/Normal.st)

| Statedef | Move | Input | Notes |
|----------|------|-------|-------|
| 200–255 | Standing/Crouching normals | x,y,z,a,b,c | LP, MP, HP, LK, MK, HK |
| 260–285 | Air normals | x,y,z,a,b,c | ALP, AMP, AHP, ALK, AMK, AHK |
| 800–804 | Command normals | F+c, DF+z, F/B+2p, F/B+2k | Necro Desire, Ecstatic Climb, Moon Tracer, Breast Anguish |
| 810–823 | Throws | Near + recovery/2k + F/B | |

### 2.2 Special Moves (States/Specials.st)

| Statedef | Move | Input | Helper ID |
|----------|------|-------|-----------|
| 1000 | Soul Fist | D,DF,F,p | 1005 |
| 1050 | Air Soul Fist | D,DF,F,p (air) | 1055 |
| 1100 | Shadow Blade | F,D,DF,p | 6026 |
| 1200 | Vector Drain | F,DF,D,DB,B,p | 6100 |
| 1300–1310 | (Vector Drain variants) | | |

### 2.3 EX Special Moves (States/EX-Specials.st)

| Statedef | Move | Input | Cost |
|----------|------|-------|------|
| 1010 | EX Soul Fist | D,DF,F,2p | 500 power |
| 1060 | EX Air Soul Fist | D,DF,F,2p (air) | 500 power |
| 1110 | EX Shadow Blade | F,D,DF,2p | 500 power |
| 1320 | EX Vector Drain | F,DF,D,DB,B,2p | 500 power |

### 2.4 Super Moves (States/Supers.st)

| Statedef | Move | Input | Level |
|----------|------|-------|-------|
| 3000 | Soul Phoenix | D,DF,F,D,DF,F,p | Lv1 |
| 3050 | Air Soul Phoenix | D,DF,F,D,DF,F,p (air) | Lv1 |
| 3100 | Cardinal Blade | D,DF,F,D,DF,k | Lv1 |
| 3300 | Finishing Shower | y,x,B,a,b | Lv2 |
| 3400/3401 | Valkyrie Turn | F,DF,D,DB,B,k | Lv1 |
| 4000/4001 | Darkness Illusion | x,x,F,a,z | Lv3 |
| 4100/4101 | Eternal Slumber | x,b,B,y,c | Lv3 |
| 770+ | Astral Vision (Dark Force) | c+z | Lv3 – infinite Lv1 during |

### 2.5 Ryona-Specific / Character Summon Moves

| Statedef | Move | Input | Power |
|----------|------|-------|-------|
| 6077 | Dog attack (Doggystyle) | 214c (b+y) | 5000 |
| 7067 | Tongue attack (Rei-Rei) | 214y (a+x) | - |
| 17000 | Rei-Rei summon | ↓↓C | 2000 |
| 19000/19001 | Morrigan back | ↓↓A | 3000 |
| 19500 | Morrigan front | ↓↓X | 4000 |
| 19001 | Morrigan front (alt) | ↓↓Z | 5000 |
| 26500 | Lilith | ↓↓Y | - |
| 45000 | Bulleta | ↓↓B | 3000 |
| 27319568/36800/3000732 | Impregnation KO | ↓↓z, ↓↓a | 1 gauge |

---

## 3. Animation & Counter-Party System

### 3.1 Animation File References

| File | Purpose |
|------|---------|
| **Anim.air** | Animation definitions |
| **Sprite.sff** | Sprite graphics |
| **Sound.snd** | Sound effects |
| **Palettes/*.act** | Color palettes (Classic, VSkk, Dark, etc.) |

### 3.2 Helper / Projectile IDs

| ID | Name | Parent Move |
|----|------|-------------|
| 1005/1055 | Soul Fist | Soul Fist / Air Soul Fist |
| 1015/1065 | EX Soul Fist | EX Soul Fist |
| 3005/3055 | Soul Phoenix | Soul Phoenix |
| 3305 | Finishing Shower | Finishing Shower |
| 4005/4105 | Darkness Illusion / Eternal Slumber | Lv3 Supers |
| 6026 | Shadow Blade | Shadow Blade |
| 6100 | Vector Drain | Vector Drain |
| 6150 | Dog | Dog attack |
| 7500 | Super Charge | Super pause helper |
| 9741 | AI helper | AI activation |

### 3.3 Special Intro Animations

| Statedef | Condition | Animation |
|----------|-----------|-----------|
| 190 | Default intro | 190 |
| 191 | Default | 191 |
| 192 | vs Viuda Negra (Borghi) | 192 |

### 3.4 Counter-Party / Matchup Logic

| Opponent | Special Behavior |
|----------|------------------|
| **Viuda Negra** | Special intro (192) |
| **Dan** | Easter egg – try Eternal Slumber finish |

### 3.5 Impregnation KO System

When KO'd by specific attacks, if opponent's AIR has animations **27319568**, **36800**, or **3000732**, an Impregnation KO performance occurs.

- **27319568**: Impregnation KO dedicated animation
- **36800**: nikumusi oviposition KO
- **3000732**: ero_helper oviposition hitstun

Sound plays on frame 2 with [4218, 21]. Axis (0,0) is around end of hanging rope.

### 3.6 Animation-to-Skill Mapping (Anim.air)

| Action ID | Skill / State | Notes |
|-----------|---------------|-------|
| 19728 | Impregnation KO | Base animation |
| 27319568 | Impregnation KO dedicated | Full sequence |
| 21100–21104 | Manguri avoidance | Standby and slot animations |
| 12238–12243 | Manguri avoidance slots 1–6 | Per-slot graphics |
| 5011 | Generic hitstun | Fallback for Manguri |

### 3.7 Counter-Party Animation Triggers

| Opponent State | Animation Check | Result |
|----------------|-----------------|--------|
| 12169 → 27319568 | AnimExist(27319568) | Impregnation KO |
| 12169 → 36800 | AnimExist(36800) | Oviposition KO |
| 12169 → 3000732 | AnimExist(3000732) | Ero helper hitstun |
| Viuda Negra (Borghi) | Statedef 192 | Special intro |

---

## 4. Variable Usage

| Var | Purpose |
|-----|---------|
| var(9) | Air state / double jump flag |
| var(10) | Strength level (Soul Fist, etc.) |
| var(21) | Parry type (1=stand, 2=crouch, 3=air) |
| var(40) | Dark Force active |
| var(51) | (Reserved) |
| var(56) | (Reserved) |
| var(58) | Pause/gametime |
| var(59) | AI mode (0=human, 1+=AI) |

---

## 5. Palette Defaults

`pal.defaults=4,5,6,1,2,3,10,11,12,7,8,9`

- 1–3: Classic, VSkk, Dark
- 4–6: VSpp, Blonde, Purple
- 7–9: Pocket1, Pocket2, PoisonIvy
- 10–12: Artwork, Light, Skin
