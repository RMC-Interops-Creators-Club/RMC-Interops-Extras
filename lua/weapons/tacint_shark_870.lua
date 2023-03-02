SWEP.Base = "tacint_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "R870 Magnum"
SWEP.Category = "RMC Interops (Heavy Weapons)"

SWEP.Description = "Well-rounded 12 gauge military shotgun with all-around good performance. 6 pellets."

SWEP.ViewModel = "models/weapons/tacint_shark/v_870.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_bekas.mdl"

SWEP.Slot = 3

// "ballistics"

SWEP.Damage_Max = 100 / 6 // damage at minimum range
SWEP.Damage_Min = 100 / 12 // damage at maximum range
SWEP.Range_Min = 300 // distance for which to maintain maximum damage
SWEP.Range_Max = 480 // distance at which we drop to minimum damage
SWEP.Penetration = 0.25 // units of metal this weapon can penetrate
SWEP.Num = 6

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 70

SWEP.Spread = 0

SWEP.ShootSpeedMult = 1

// Spread penalties are in spread units and are additive
SWEP.MoveSpreadPenalty = 0.025 // spread penalty while travelling at max. 250 u/s
SWEP.MidAirSpreadPenalty = 0.12 // spread penalty for being in the air
SWEP.HipFireSpreadPenalty = 0.1 // spread penalty for not being scoped in
SWEP.BlindFireSpreadPenalty = 0.05 // spread penalty for blind firing
SWEP.CrouchSpreadPenalty = 0
SWEP.ScopedSpreadPenalty = 0.04

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 5
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.05
SWEP.RecoilVisualShake = 2

SWEP.RecoilKick = 0.25

SWEP.RecoilSpreadPenalty = 0.25 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.92
SWEP.ShootingSpeedMult = 1 // slow down applied while shooting
SWEP.SightedSpeedMult = 0.5
SWEP.MeleeSpeedMult = 1
SWEP.MeleeSpeedMultTime = 2 // seconds to apply slow down for

SWEP.SprintToFireTime = 0.35

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

// reload

SWEP.ClipSize = 7
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.05

// sounds

local path = "tacint_shark/870/"

SWEP.Sound_Shoot = "^" .. path .. "m3-1.wav"
SWEP.Sound_Shoot_Silenced = "tacint/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 120
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 3
SWEP.EjectDelay = 0.5

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
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"}
}

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_cqb",
        Bone = "ValveBiped.bekas_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        InstalledElements = {"sights"},
        AttachSound = "tacint/weapons/optic_on.wav",
        DetachSound = "tacint/weapons/optic_off.wav",
        VMScale = 0.75,
        Pos_VM = Vector(-2.8, 0.3, 8),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(11, 0.85, -7),
        Ang_WM = Angle(-25, 3.5, 180),
    },
-- [2] = {
	-- PrintName = "Muzzle",
	-- Category = "silencer",
	-- Bone = "ValveBiped.bekas_rootbone",
	-- AttachSound = "tacint/weapons/silencer_on.wav",
	-- DetachSound = "tacint/weapons/silencer_off.wav",
	-- VMScale = 0.8,
	-- Pos_VM = Vector(-2.1, 0.35, 34.5),
	-- Pos_WM = Vector(23, 2.5, -2.8),
	-- Ang_VM = Angle(90, 0, 0),
	-- Ang_WM = Angle(0, -3.5, 180),
--},
    [2] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.bekas_rootbone",
        AttachSound = "tacint/weapons/flashlight_on.wav",
        DetachSound = "tacint/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.25,
        Pos_VM = Vector(-0.5, 0.3, 27),
        Ang_VM = Angle(90, 0, -180),
        Pos_WM = Vector(25, 0, -12),
        Ang_WM = Angle(-25, 3.5, 90),
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

addsound("tacint_870.Insertshell", path .. "m3_insertshell.wav")
addsound("tacint_870.Movement", path .. "movement-1.wav")
addsound("tacint_870.PumpBack", path .. "m3_pump.wav")