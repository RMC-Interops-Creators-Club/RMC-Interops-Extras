SWEP.Base = "tacint_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Saiga-12k"
SWEP.Category = "RMC Interops (Heavy Weapons)"

SWEP.Description = "Semi-automatic 20 gauge mag-fed shotgun. Very powerful but very difficult to control. 8 pellets."

SWEP.ViewModel = "models/weapons/tacint_shark/v_saiga.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_ak47.mdl"

SWEP.Slot = 2

// "ballistics"

SWEP.Damage_Max = 100 / 8 // damage at minimum range
SWEP.Damage_Min = 100 / 14 // damage at maximum range
SWEP.Range_Min = 210 // distance for which to maintain maximum damage
SWEP.Range_Max = 320 // distance at which we drop to minimum damage
SWEP.Penetration = 3 // units of metal this weapon can penetrate
SWEP.Num = 8

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 600

SWEP.Spread = 0

// Spread penalties are in spread units and are additive
SWEP.MoveSpreadPenalty = 0.055 // spread penalty while travelling at max. 250 u/s
SWEP.MidAirSpreadPenalty = 0.12 // spread penalty for being in the air
SWEP.HipFireSpreadPenalty = 0.15 // spread penalty for not being scoped in
SWEP.ScopedSpreadPenalty = 0.025
SWEP.BlindFireSpreadPenalty = 0.035 // spread penalty for blind firing
SWEP.CrouchSpreadPenalty = -0.003

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 20
SWEP.RecoilResetTime = 0.3 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 800
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.15
SWEP.RecoilVisualShake = 0.35

SWEP.RecoilKick = 2

SWEP.RecoilSpreadPenalty = 0.035 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.94
SWEP.ShootingSpeedMult = 1 // slow down applied while shooting
SWEP.SightedSpeedMult = 0.5
SWEP.MeleeSpeedMult = 1
SWEP.MeleeSpeedMultTime = 2 // seconds to apply slow down for

SWEP.DeployTimeMult = 0.6
SWEP.SprintToFireTime = 0.45 // multiplies how long it takes to recover from sprinting

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)


SWEP.ClipSize = 10
SWEP.Ammo = "buckshot"

SWEP.ReloadTimeMult = 1.1
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/ak47.mdl"
SWEP.DropMagazineImpact = "metal"

// sounds

local path = "tacint_shark/saiga/"
local path1 = "tacint/weapons/ak47/ak47_"

SWEP.Sound_Shoot = "^" .. path .. "12k_fire.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 3

// anims

// VM:
// idle
// fire
// fire1, fire2...
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.DeployTimeMult = 2.75

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium",},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"tactical"},
        AttachSound = "tacint/weapons/optic_on.wav",
        DetachSound = "tacint/weapons/optic_off.wav",
        VMScale = 0.75,
        Pos_VM = Vector(-5.25, 0.2, 5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 3, 0.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacint/weapons/flashlight_on.wav",
        DetachSound = "tacint/weapons/flashlight_off.wav",
        Pos_VM = Vector(-4.5, -0.2, 14),
        Pos_WM = Vector(0, 19, -2),
        Ang_VM = Angle(90, 0, -60),
        Ang_WM = Angle(0, -90, 180),
    },
    [3] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacint/weapons/flashlight_on.wav",
        DetachSound = "tacint/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_saiga.remove_clip", path1 .. "remove_clip.wav")
addsound("tacint_saiga.insert_clip", path1 .. "insert_clip.wav")
addsound("tacint_saiga.boltaction", path .. "12k_boltpull.wav")
addsound("tacint_saiga.Buttstock_Back", path .. "buttstock_back.wav")