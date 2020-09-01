include('organizer-lib')

-- **Ganno's DRK lua** --
-- ** I Use Some of Motenten's Functions ** --

--grab from gear file--
local character_gear = require 'Berlioz_Gear'
local drk_gear = character_gear.drk
local drk_capes = character_gear.misc.capes.drk
local misc_gear = character_gear.misc

local drk_af = character_gear.misc.jse.drk_af
local drk_relic = character_gear.misc.jse.drk_relic
local drk_empyrean = character_gear.misc.jse.drk_empyrean

function get_sets()
    send_command('bind ^f4 gs c C10') -- Toggle ofr Dark Seal

    --AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid/Stun. First Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below. Most of These Sets Are Empty So You Need To Edit Them On Your Own. Remember To Check What The Combined Set Is For Each Sets. --
    AccIndex = 2
    AccArray = {"LowACC","MidACC","HighACC"}

    WeaponIndex = 1
    WeaponArray = {"Apocalypse", "ZantetsukenX", "Deathbane", "EmpyreanTrainer"} -- Default Main Weapon Is Liberator. Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --

    IdleIndex = 1
    IdleArray = {"Movement","Regen","Refresh","Regain"} -- Default Idle Set Is Movement --
    DarkSealIndex = 0 --Index for Dark Seal headpiece Potency(0) vs Duration(1)
    add_to_chat(158,'DarkSeal Potency: [On]')
    Armor = 'None'
    Twilight = 'None'
    Attack = 'OFF' -- Set Default WS Attack Set ON or OFF Here --
    Rancor = 'ON' -- Set Default Rancor ON or OFF Here --
    Samurai_Roll = 'ON' -- Set Default SAM Roll ON or OFF Here --
    target_distance = 5.5 -- Set Default Distance Here --
    select_default_macro_book() -- Change Default Macro Book At The End --

    -- Gavialis Helm --
    elements = {}
    elements.equip = {head="Gavialis Helm"}
    elements.Resolution = S{"Lightning","Wind","Earth"}
    elements.Entropy = S{"Dark","Water","Earth"}
    elements.Catastrophe = S{"Dark","Earth"}
    elements.Insurgency = S{"Light","Dark","Fire"}

    sc_map = {SC1="Entropy", SC2="Insurgency", SC3="LastResort"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

    sets.Idle = drk_gear.tp_low_acc
    sets.Idle.Regen = set_combine(sets.Idle,{})
    sets.Idle.Regen.Apocalypse = set_combine(sets.Idle.Regen,{
            main="Apocalypse"})
    sets.Idle.Regen.Apocalypse.SAM = set_combine(sets.Idle.Regen,{
            main="Apocalypse"})
    sets.Idle.Regen.Deathbane = set_combine(sets.Idle.Regen,{
            main="Deathbane"})
    sets.Idle.Regen.Deathbane.SAM = set_combine(sets.Idle.Regen,{
            main="Deathbane"})
    sets.Idle.Regen.ZantetsukenX = set_combine(sets.Idle.Regen,{
            main="Zantetsuken X"})
    sets.Idle.Regen.ZantetsukenX.SAM = set_combine(sets.Idle.Regen,{
            main="Zantetsuken X"})

    -- Movement Sets --
    sets.Idle.Movement = set_combine(sets.Idle.Regen,{})
    sets.Idle.Movement.Apocalypse = set_combine(sets.Idle.Movement,{
            main="Apocalypse"})
    sets.Idle.Movement.Apocalypse.SAM = set_combine(sets.Idle.Movement,{
            main="Apocalypse"})
    sets.Idle.Movement.Deathbane = set_combine(sets.Idle.Movement,{
            main="Deathbane"})
    sets.Idle.Movement.Deathbane.SAM = set_combine(sets.Idle.Movement,{
            main="Deathbane"})
    sets.Idle.Movement.ZantetsukenX = set_combine(sets.Idle.Movement,{
            main="Zantetsuken X"})
    sets.Idle.Movement.ZantetsukenX.SAM = set_combine(sets.Idle.Movement,{
            main="Zantetsuken X"})

    -- Refresh Sets --
    sets.Idle.Refresh = {}
    sets.Idle.Refresh.Apocalypse = set_combine(sets.Idle.Refresh,{
            main="Apocalypse"})
    sets.Idle.Refresh.Apocalypse.SAM = set_combine(sets.Idle.Refresh,{
            main="Apocalypse"})
    sets.Idle.Refresh.ZantetsukenX = set_combine(sets.Idle.Refresh,{
            main="Zantetsuken X"})
    sets.Idle.Refresh.ZantetsukenX.SAM = set_combine(sets.Idle.Refresh,{
            main="Zantetsuken X"})
    sets.Idle.Refresh.Deathbane = set_combine(sets.Idle.Refresh,{
            main="Deathbane"})
    sets.Idle.Refresh.Deathbane.SAM = set_combine(sets.Idle.Refresh,{
            main="Deathbane"})

    -- Regain Sets --
    sets.Idle.Regain = set_combine(sets.Idle.Regen,{})
    sets.Idle.Regain.Apocalypse = set_combine(sets.Idle.Regain,{
            main="Apocalypse"})
    sets.Idle.Regain.Apocalypse.SAM = set_combine(sets.Idle.Regain,{
            main="Apocalypse"})
    sets.Idle.Regain.ZantetsukenX = set_combine(sets.Idle.Regain,{
            main="Zantetsuken X"})
    sets.Idle.Regain.ZantetsukenX.SAM = set_combine(sets.Idle.Regain,{
            main="Zantetsuken X"})
    sets.Idle.Regain.Deathbane = set_combine(sets.Idle.Regain,{
            main="Deathbane"})
    sets.Idle.Regain.Deathbane.SAM = set_combine(sets.Idle.Regain,{
            main="Deathbane"})

    sets.Twilight = {head="Twilight Helm",body="Twilight Mail"}


    -- Always leave this blank
    -- TP Base Set --
    sets.TP = {}

    -------------------------------------------------------------------------------------------------------
    -- Apocalypse(AM Down) TP Sets ------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.Apocalypse = set_combine(
        drk_gear.tp_low_acc,
        {main="Apocalypse", sub="Utu Grip"}
    )
    sets.TP.Apocalypse.MidACC = set_combine(sets.TP.Apocalypse,  drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC = set_combine(sets.TP.Apocalypse.MidACC,{})

    -- Apocalypse(AM Up) TP Sets --
    sets.TP.Apocalypse.AM = set_combine(sets.TP.Apocalypse,{
        ammo="Seeth. Bomblet +1",
        waist="Sailfi Belt +1",
    })
    sets.TP.Apocalypse.MidACC.AM = set_combine(sets.TP.Apocalypse.AM, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.AM = set_combine(sets.TP.Apocalypse.MidACC.AM,{})

    -- Apocalypse(AM Down: High Haste) TP Sets --
    sets.TP.Apocalypse.HighHaste = set_combine(sets.TP.Apocalypse,{})
    sets.TP.Apocalypse.MidACC.HighHaste = set_combine(sets.TP.Apocalypse.HighHaste, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.HighHaste,{})

    -- Apocalypse(AM Up: High Haste) TP Sets --
    sets.TP.Apocalypse.AM.HighHaste = set_combine(sets.TP.Apocalypse.AM,{})
    sets.TP.Apocalypse.MidACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.AM.HighHaste, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste,{})

    -- Apocalypse(AM Down: Ionis) TP Sets --
    sets.TP.Apocalypse.Ionis = set_combine(sets.TP.Apocalypse,{})
    sets.TP.Apocalypse.MidACC.Ionis = set_combine(sets.TP.Apocalypse.Ionis, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.Ionis = set_combine(sets.TP.Apocalypse.MidACC.Ionis,{})

    -- Apocalypse(AM Up: Ionis) TP Sets --
    sets.TP.Apocalypse.AM.Ionis = set_combine(sets.TP.Apocalypse.AM,{})
    sets.TP.Apocalypse.MidACC.AM.Ionis = set_combine(sets.TP.Apocalypse.AM.Ionis, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.AM.Ionis= set_combine(sets.TP.Apocalypse.MidACC.AM.Ionis,{})

    -- Apocalypse(AM Down: High Haste + Ionis) TP Sets --
    sets.TP.Apocalypse.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighHaste,{})
    sets.TP.Apocalypse.MidACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighHaste.Ionis, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.Ionis,{})

    -- Apocalypse(AM Up: High Haste + Ionis) TP Sets --
    sets.TP.Apocalypse.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.AM.HighHaste,{})
    sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.AM.HighHaste.Ionis, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis,{})

    -- Apocalypse(AM Down: SAM Roll) TP Sets --
    sets.TP.Apocalypse.STP = set_combine(sets.TP.Apocalypse,{})
    sets.TP.Apocalypse.MidACC.STP = set_combine(sets.TP.Apocalypse.MidACC, drk_gear.tp_mid_acc)
    sets.TP.Apocalypse.HighACC.STP = set_combine(sets.TP.Apocalypse.HighACC,{})

    -- Apocalypse(AM Up: SAM Roll) TP Sets --
    sets.TP.Apocalypse.AM.STP = set_combine(sets.TP.Apocalypse.AM,{})
    sets.TP.Apocalypse.MidACC.AM.STP = set_combine(sets.TP.Apocalypse.MidACC.AM,{})
    sets.TP.Apocalypse.HighACC.AM.STP = set_combine(sets.TP.Apocalypse.HighACC.AM,{})

    -- Apocalypse(AM Down: High Haste + SAM Roll) TP Sets --
    sets.TP.Apocalypse.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighHaste,{})
    sets.TP.Apocalypse.MidACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste,{})
    sets.TP.Apocalypse.HighACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste,{})

    -- Apocalypse(AM Up: High Haste + SAM Roll) TP Sets --
    sets.TP.Apocalypse.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighHaste,{})
    sets.TP.Apocalypse.MidACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste,{})
    sets.TP.Apocalypse.HighACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste,{})

    -- Apocalypse(AM Down: Ionis + SAM Roll) TP Sets --
    sets.TP.Apocalypse.Ionis.STP = set_combine(sets.TP.Apocalypse.Ionis,{})
    sets.TP.Apocalypse.MidACC.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.Ionis,{})
    sets.TP.Apocalypse.HighACC.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.Ionis,{})

    -- Apocalypse(AM Up: Ionis + SAM Roll) TP Sets --
    sets.TP.Apocalypse.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.AM,{})
    sets.TP.Apocalypse.MidACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.AM,{})
    sets.TP.Apocalypse.HighACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.AM,{})

    -- Apocalypse(AM Down: High Haste + Ionis + SAM Roll) TP Sets --
    sets.TP.Apocalypse.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighHaste,{})
    sets.TP.Apocalypse.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste,{})
    sets.TP.Apocalypse.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste,{})

    -- Apocalypse(AM Up: High Haste + Ionis + SAM Roll) TP Sets --
    sets.TP.Apocalypse.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighHaste,{})
    sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste,{})
    sets.TP.Apocalypse.HighACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste,{})

    -- -------------------------------------------------------------------------------------------------------
    -- -- Apocalypse(AM Down) /SAM TP Sets -------------------------------------------------------------------
    -- -------------------------------------------------------------------------------------------------------
    -- sets.TP.Apocalypse.SAM = sets.TP.Apocalypse
    -- sets.TP.Apocalypse.SAM.MidACC = set_combine(sets.TP.Apocalypse.MidACC, {})
    -- sets.TP.Apocalypse.SAM.HighACC = set_combine(sets.TP.Apocalypse.HighACC, {})
    --
    -- -- Apocalypse(AM Up) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM = set_combine(sets.TP.Apocalypse.AM, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM = set_combine(sets.TP.Apocalypse.MidACC.AM, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM = set_combine(sets.TP.Apocalypse.HighACC.AM, {})
    --
    -- -- Apocalypse(AM Down: High Haste) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.HighHaste = set_combine(sets.TP.Apocalypse.HighHaste, {})
    -- sets.TP.Apocalypse.SAM.MidACC.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.HighHaste, {})
    -- sets.TP.Apocalypse.SAM.HighACC.HighHaste = set_combine(sets.TP.Apocalypse.HighACC.HighHaste, {})
    --
    -- -- Apocalypse(AM Up: High Haste) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM.HighHaste = set_combine(sets.TP.Apocalypse.AM.HighHaste, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste, {})
    --
    -- -- Apocalypse(AM Down: Ionis) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.Ionis = set_combine(sets.TP.Apocalypse.Ionis, {})
    -- sets.TP.Apocalypse.SAM.MidACC.Ionis = set_combine(sets.TP.Apocalypse.MidACC.Ionis, {})
    -- sets.TP.Apocalypse.SAM.HighACC.Ionis = set_combine(sets.TP.Apocalypse.HighACC.Ionis, {})
    --
    -- -- Apocalypse(AM Up: Ionis) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM.Ionis = set_combine(sets.TP.Apocalypse.AM.Ionis, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM.Ionis = set_combine(sets.TP.Apocalypse.MidACC.AM.Ionis, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM.Ionis = set_combine(sets.TP.Apocalypse.HighACC.AM.Ionis, {})
    --
    -- -- Apocalypse(AM Down: High Haste + Ionis) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighHaste.Ionis, {})
    -- sets.TP.Apocalypse.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.Ionis, {})
    -- sets.TP.Apocalypse.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighACC.HighHaste.Ionis, {})
    --
    -- -- Apocalypse(AM Up: High Haste + Ionis) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.AM.HighHaste.Ionis, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste.Ionis, {})
    --
    -- -- Apocalypse(AM Down: SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.STP = set_combine(sets.TP.Apocalypse.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.STP = set_combine(sets.TP.Apocalypse.MidACC.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.STP = set_combine(sets.TP.Apocalypse.HighACC.STP, {})
    --
    -- -- Apocalypse(AM Up: SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM.STP = set_combine(sets.TP.Apocalypse.AM.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.STP, {})
    --
    -- -- Apocalypse(AM Down: High Haste + SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighHaste.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste.STP, {})
    --
    -- -- Apocalypse(AM Up: High Haste + SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.AM.HighHaste.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste.STP, {})
    --
    -- -- Apocalypse(AM Down: Ionis + SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.Ionis.STP = set_combine(sets.TP.Apocalypse.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.Ionis.STP, {})
    --
    -- -- Apocalypse(AM Up: Ionis + SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.AM.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.Ionis.STP, {})
    --
    -- -- Apocalypse(AM Down: High Haste + Ionis + SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighHaste.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste.Ionis.STP, {})
    --
    -- -- Apocalypse(AM Up: High Haste + Ionis + SAM Roll) /SAM TP Sets --
    -- sets.TP.Apocalypse.SAM.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.AM.HighHaste.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis.STP, {})
    -- sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste.Ionis.STP, {})

    -------------------------------------------------------------------------------------------------------
    ------------------------------------------Zantetsuken X------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.ZantetsukenX = set_combine(
        drk_gear.tp_low_acc,
        {main="Zantetsuken X", sub="Utu Grip"}
    )
    sets.TP.ZantetsukenX.MidACC = set_combine(sets.TP.ZantetsukenX,  drk_gear.tp_mid_acc)
    sets.TP.ZantetsukenX.HighACC = set_combine(sets.TP.ZantetsukenX.MidACC,{})

    sets.TP.ZantetsukenX.HighHaste = set_combine(sets.TP.ZantetsukenX,{})
    sets.TP.ZantetsukenX.MidACC.HighHaste = set_combine(sets.TP.ZantetsukenX.HighHaste, drk_gear.tp_mid_acc)
    sets.TP.ZantetsukenX.HighACC.HighHaste = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste,{})

    sets.TP.ZantetsukenX.Ionis = set_combine(sets.TP.ZantetsukenX,{})
    sets.TP.ZantetsukenX.MidACC.Ionis = set_combine(sets.TP.ZantetsukenX.Ionis, drk_gear.tp_mid_acc)
    sets.TP.ZantetsukenX.HighACC.Ionis = set_combine(sets.TP.ZantetsukenX.MidACC.Ionis,{})

    sets.TP.ZantetsukenX.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.HighHaste,{})
    sets.TP.ZantetsukenX.MidACC.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.HighHaste.Ionis, drk_gear.tp_mid_acc)
    sets.TP.ZantetsukenX.HighACC.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste.Ionis,{})

    sets.TP.ZantetsukenX.STP = set_combine(sets.TP.ZantetsukenX,{})
    sets.TP.ZantetsukenX.MidACC.STP = set_combine(sets.TP.ZantetsukenX.MidACC, drk_gear.tp_mid_acc)
    sets.TP.ZantetsukenX.HighACC.STP = set_combine(sets.TP.ZantetsukenX.HighACC,{})

    sets.TP.ZantetsukenX.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.HighHaste,{})
    sets.TP.ZantetsukenX.MidACC.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste,{})
    sets.TP.ZantetsukenX.HighACC.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste,{})

    sets.TP.ZantetsukenX.Ionis.STP = set_combine(sets.TP.ZantetsukenX.Ionis,{})
    sets.TP.ZantetsukenX.MidACC.Ionis.STP = set_combine(sets.TP.ZantetsukenX.MidACC.Ionis,{})
    sets.TP.ZantetsukenX.HighACC.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighACC.Ionis,{})

    sets.TP.ZantetsukenX.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighHaste,{})
    sets.TP.ZantetsukenX.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste,{})
    sets.TP.ZantetsukenX.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste,{})
    --
    -- -------------------------------------------------------------------------------------------------------
    -- --- Zantetsuken X /SAM ----------------------------------------------------------------------------------------------
    -- -------------------------------------------------------------------------------------------------------
    -- sets.TP.ZantetsukenX.SAM = sets.TP.ZantetsukenX
    -- sets.TP.ZantetsukenX.SAM.MidACC = set_combine(sets.TP.ZantetsukenX.MidACC, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC = set_combine(sets.TP.ZantetsukenX.HighACC, {})
    --
    -- sets.TP.ZantetsukenX.SAM.HighHaste = set_combine(sets.TP.ZantetsukenX.HighHaste, {})
    -- sets.TP.ZantetsukenX.SAM.MidACC.HighHaste = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC.HighHaste = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste, {})
    --
    -- sets.TP.ZantetsukenX.SAM.Ionis = set_combine(sets.TP.ZantetsukenX.Ionis, {})
    -- sets.TP.ZantetsukenX.SAM.MidACC.Ionis = set_combine(sets.TP.ZantetsukenX.MidACC.Ionis, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC.Ionis = set_combine(sets.TP.ZantetsukenX.HighACC.Ionis, {})
    --
    -- sets.TP.ZantetsukenX.SAM.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.HighHaste.Ionis, {})
    -- sets.TP.ZantetsukenX.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste.Ionis, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste.Ionis, {})
    --
    -- sets.TP.ZantetsukenX.SAM.STP = set_combine(sets.TP.ZantetsukenX.STP, {})
    -- sets.TP.ZantetsukenX.SAM.MidACC.STP = set_combine(sets.TP.ZantetsukenX.MidACC.STP, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC.STP = set_combine(sets.TP.ZantetsukenX.HighACC.STP, {})
    --
    -- sets.TP.ZantetsukenX.SAM.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.HighHaste.STP, {})
    -- sets.TP.ZantetsukenX.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste.STP, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste.STP, {})
    --
    -- sets.TP.ZantetsukenX.SAM.Ionis.STP = set_combine(sets.TP.ZantetsukenX.Ionis.STP, {})
    -- sets.TP.ZantetsukenX.SAM.MidACC.Ionis.STP = set_combine(sets.TP.ZantetsukenX.MidACC.Ionis.STP, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighACC.Ionis.STP, {})
    --
    -- sets.TP.ZantetsukenX.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighHaste.Ionis.STP, {})
    -- sets.TP.ZantetsukenX.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste.Ionis.STP, {})
    -- sets.TP.ZantetsukenX.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste.Ionis.STP, {})

    -------------------------------------------------------------------------------------------------------
    -------------------------------Place Holder for Empy---------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.EmpyreanTrainer = set_combine(
        drk_gear.tp_low_acc,
        {main="Break Blade", sub="Utu Grip"}
    )
    sets.TP.EmpyreanTrainer.MidACC = set_combine(sets.TP.EmpyreanTrainer,  drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC = set_combine(sets.TP.EmpyreanTrainer.MidACC,{})

    sets.TP.EmpyreanTrainer.HighHaste = set_combine(sets.TP.EmpyreanTrainer,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.HighHaste, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste,{})

    sets.TP.EmpyreanTrainer.Ionis = set_combine(sets.TP.EmpyreanTrainer,{})
    sets.TP.EmpyreanTrainer.MidACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.Ionis, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis,{})

    sets.TP.EmpyreanTrainer.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighHaste,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighHaste.Ionis, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis,{})

    sets.TP.EmpyreanTrainer.STP = set_combine(sets.TP.EmpyreanTrainer,{})
    sets.TP.EmpyreanTrainer.MidACC.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC,{})

    sets.TP.EmpyreanTrainer.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste,{})
    sets.TP.EmpyreanTrainer.HighACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste,{})

    sets.TP.EmpyreanTrainer.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.Ionis,{})
    sets.TP.EmpyreanTrainer.MidACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis,{})
    sets.TP.EmpyreanTrainer.HighACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.Ionis,{})

    sets.TP.EmpyreanTrainer.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste,{})
    sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste,{})

    -- -------------------------------------------------------------------------------------------------------
    -- -------------------------------Place Holder /SAM-------------------------------------------------------
    -- -------------------------------------------------------------------------------------------------------
    -- sets.TP.EmpyreanTrainer.SAM = sets.TP.EmpyreanTrainer
    -- sets.TP.EmpyreanTrainer.SAM.MidACC = set_combine(sets.TP.EmpyreanTrainer.MidACC, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC = set_combine(sets.TP.EmpyreanTrainer.HighACC, {})
    --
    -- sets.TP.EmpyreanTrainer.SAM.HighHaste = set_combine(sets.TP.EmpyreanTrainer.HighHaste, {})
    -- sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste, {})
    --
    -- sets.TP.EmpyreanTrainer.SAM.Ionis = set_combine(sets.TP.EmpyreanTrainer.Ionis, {})
    -- sets.TP.EmpyreanTrainer.SAM.MidACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighACC.Ionis, {})
    --
    -- sets.TP.EmpyreanTrainer.SAM.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighHaste.Ionis, {})
    -- sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis, {})
    --
    -- sets.TP.EmpyreanTrainer.SAM.STP = set_combine(sets.TP.EmpyreanTrainer.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.MidACC.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.STP, {})
    --
    -- sets.TP.EmpyreanTrainer.SAM.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste.STP, {})
    --
    -- sets.TP.EmpyreanTrainer.SAM.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.Ionis.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.MidACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.Ionis.STP, {})
    --
    -- sets.TP.EmpyreanTrainer.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste.Ionis.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis.STP, {})
    -- sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis.STP, {})

    -------------------------------------------------------------------------------------------------------
    ------------------------------------------Deathbane------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.Deathbane = set_combine(
        drk_gear.tp_low_acc,
        {main="Deathbane", sub="Utu Grip"}
    )
    sets.TP.Deathbane.MidACC = set_combine(sets.TP.Deathbane,  drk_gear.tp_mid_acc)
    sets.TP.Deathbane.HighACC = set_combine(sets.TP.Deathbane.MidACC,{})

    sets.TP.Deathbane.HighHaste = set_combine(sets.TP.Deathbane,{})
    sets.TP.Deathbane.MidACC.HighHaste = set_combine(sets.TP.Deathbane.HighHaste, drk_gear.tp_mid_acc)
    sets.TP.Deathbane.HighACC.HighHaste = set_combine(sets.TP.Deathbane.MidACC.HighHaste,{})

    sets.TP.Deathbane.Ionis = set_combine(sets.TP.Deathbane,{})
    sets.TP.Deathbane.MidACC.Ionis = set_combine(sets.TP.Deathbane.Ionis, drk_gear.tp_mid_acc)
    sets.TP.Deathbane.HighACC.Ionis = set_combine(sets.TP.Deathbane.MidACC.Ionis,{})

    sets.TP.Deathbane.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighHaste,{})
    sets.TP.Deathbane.MidACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighHaste.Ionis, drk_gear.tp_mid_acc)
    sets.TP.Deathbane.HighACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.MidACC.HighHaste.Ionis,{})

    sets.TP.Deathbane.STP = set_combine(sets.TP.Deathbane,{})
    sets.TP.Deathbane.MidACC.STP = set_combine(sets.TP.Deathbane.MidACC, drk_gear.tp_mid_acc)
    sets.TP.Deathbane.HighACC.STP = set_combine(sets.TP.Deathbane.HighACC,{})

    sets.TP.Deathbane.HighHaste.STP = set_combine(sets.TP.Deathbane.HighHaste,{})
    sets.TP.Deathbane.MidACC.HighHaste.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste,{})
    sets.TP.Deathbane.HighACC.HighHaste.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste,{})

    sets.TP.Deathbane.Ionis.STP = set_combine(sets.TP.Deathbane.Ionis,{})
    sets.TP.Deathbane.MidACC.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.Ionis,{})
    sets.TP.Deathbane.HighACC.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.Ionis,{})

    sets.TP.Deathbane.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighHaste,{})
    sets.TP.Deathbane.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste,{})
    sets.TP.Deathbane.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste,{})

    -- -------------------------------------------------------------------------------------------------------
    -- -- Deathbane /SAM -------------------------------------------------------------------------------------
    -- -------------------------------------------------------------------------------------------------------
    -- sets.TP.Deathbane.SAM = sets.TP.Deathbane
    -- sets.TP.Deathbane.SAM.MidACC = set_combine(sets.TP.Deathbane.MidACC, {})
    -- sets.TP.Deathbane.SAM.HighACC = set_combine(sets.TP.Deathbane.HighACC, {})
    --
    -- sets.TP.Deathbane.SAM.HighHaste = set_combine(sets.TP.Deathbane.HighHaste, {})
    -- sets.TP.Deathbane.SAM.MidACC.HighHaste = set_combine(sets.TP.Deathbane.MidACC.HighHaste, {})
    -- sets.TP.Deathbane.SAM.HighACC.HighHaste = set_combine(sets.TP.Deathbane.HighACC.HighHaste, {})
    --
    -- sets.TP.Deathbane.SAM.Ionis = set_combine(sets.TP.Deathbane.Ionis, {})
    -- sets.TP.Deathbane.SAM.MidACC.Ionis = set_combine(sets.TP.Deathbane.MidACC.Ionis, {})
    -- sets.TP.Deathbane.SAM.HighACC.Ionis = set_combine(sets.TP.Deathbane.HighACC.Ionis, {})
    --
    -- sets.TP.Deathbane.SAM.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighHaste.Ionis, {})
    -- sets.TP.Deathbane.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.MidACC.HighHaste.Ionis, {})
    -- sets.TP.Deathbane.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighACC.HighHaste.Ionis, {})
    --
    -- sets.TP.Deathbane.SAM.STP = set_combine(sets.TP.Deathbane.STP, {})
    -- sets.TP.Deathbane.SAM.MidACC.STP = set_combine(sets.TP.Deathbane.MidACC.STP, {})
    -- sets.TP.Deathbane.SAM.HighACC.STP = set_combine(sets.TP.Deathbane.HighACC.STP, {})
    --
    -- sets.TP.Deathbane.SAM.HighHaste.STP = set_combine(sets.TP.Deathbane.HighHaste.STP, {})
    -- sets.TP.Deathbane.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste.STP, {})
    -- sets.TP.Deathbane.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste.STP, {})
    --
    -- sets.TP.Deathbane.SAM.Ionis.STP = set_combine(sets.TP.Deathbane.Ionis.STP, {})
    -- sets.TP.Deathbane.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.Ionis.STP, {})
    -- sets.TP.Deathbane.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.Ionis.STP, {})
    --
    -- sets.TP.Deathbane.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighHaste.Ionis.STP, {})
    -- sets.TP.Deathbane.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste.Ionis.STP, {})
    -- sets.TP.Deathbane.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste.Ionis.STP, {})


    -- AM3 Rancor ON Mantle --
    sets.TP.Rancor = {}

    -- PDT/MDT Sets --
    sets.PDT = set_combine(
        drk_gear.tp_tank,
        {}
    )

    sets.MDT = set_combine(sets.PDT,{})

    sets.Scarlet = set_combine(sets.PDT,{})

    -- Hybrid Set --
    sets.TP.Hybrid = set_combine(sets.PDT,{})
    sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
    sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

    -- WS Base Set --
    sets.WS = drk_gear.generic_ws -- empty table, questionable...

    -- Resolution Sets --
    sets.WS.Resolution = drk_gear.multi_ws
    sets.WS.Resolution.MidACC = set_combine(sets.WS.Resolution,{})
    sets.WS.Resolution.HighACC = set_combine(sets.WS.Resolution.MidACC,{})
    sets.WS.Resolution.MaxACC = set_combine(sets.WS.Resolution.HighACC,{})

    -- Torcleaver Sets --
    sets.WS.Torcleaver = drk_gear.gsword.torcleaver
    sets.WS.Torcleaver.MidACC = set_combine(sets.WS.Torcleaver,{})
    sets.WS.Torcleaver.HighACC = set_combine(sets.WS.Torcleaver.MidACC,{})
    sets.WS.Torcleaver.MaxACC = set_combine(sets.WS.Torcleaver.HighACC,{})

-- Scourge Sets --
    sets.WS.Scourge = drk_gear.gsword.single_ws
    sets.WS.Scourge.MidACC = set_combine(sets.WS.Scourge,{})
    sets.WS.Scourge.HighACC = set_combine(sets.WS.Scourge.MidACC,{})

    -- Resolution(Attack) Set --
    sets.WS.Resolution.ATT = set_combine(sets.WS.Resolution,{})

    -- Catastrophe Sets --
    sets.WS.Catastrophe = drk_gear.scythe.single_ws
    sets.WS.Catastrophe.MidACC = set_combine(sets.WS.Catastrophe,{})
    sets.WS.Catastrophe.HighACC = set_combine(sets.WS.Catastrophe.MidACC,{})
    sets.WS.Catastrophe.MaxACC = set_combine(sets.WS.Catastrophe.MidACC,{})

    -- Catastrophe(Attack) Set --
    sets.WS.Catastrophe.ATT = set_combine(sets.WS.Catastrophe,{})

    -- Entropy Sets --
    sets.WS.Entropy = drk_gear.multi_ws
    sets.WS.Entropy.MidACC = set_combine(sets.WS.Entropy,{})
    sets.WS.Entropy.HighACC = set_combine(sets.WS.Entropy.MidACC,{})

    -- CrossReaper Sets --
    sets.WS.CrossReaper = drk_gear.scythe.single_ws
    sets.WS.CrossReaper.MidACC = set_combine(sets.WS.CrossReaper,{})
    sets.WS.CrossReaper.HighACC = set_combine(sets.WS.CrossReaper.MidACC,{})

    -- Entropy(Attack) Set --
    sets.WS.Entropy.ATT = set_combine(sets.WS.Entropy,{})

    -- Insurgency Sets --
    sets.WS.Insurgency = drk_gear.multi_ws
    sets.WS.Insurgency.MidACC = set_combine(sets.WS.Insurgency,{})
    sets.WS.Insurgency.HighACC = set_combine(sets.WS.Insurgency.MidACC,{})

    -- JA Sets --
    sets.JA ={}
    sets.JA["Blood Weapon"] = {body=drk_relic.body}
    sets.JA["Diabolic Eye"] = {hands=drk_relic.hands}
    sets.JA["Weapon Bash"] = drk_gear.skills.weapon_bash
    sets.JA["Nether Void"] = drk_gear.skills.nether_void
    sets.JA["Arcane Circle"] = {hands=drk_af.feet}
    sets.JA["Last Resort"] = {back=drk_capes.double_atk, feet=drk_relic.feet}
    sets.JA['Dark Seal'] = {head=drk_relic.head}
    sets.JA['Blood Weapon'] = {body=drk_relic.body}
    --sets.JA['Nether Void'] = {legs="Heath. Flanchard +1"}


    -- Waltz Set --
    sets.Waltz = {}

    sets.Precast = {}
    -- Fastcast Set --
    sets.Precast.FastCast = drk_gear.fastcast

    -- Precast Dark Magic --
    sets.Precast['Dark Magic'] = set_combine(sets.Precast.FastCast,{
        head=drk_relic.head,
    })

    -- Midcast Base Set --
    sets.Midcast = {}

    -- Magic Haste Set --
    sets.Midcast.Haste = set_combine(sets.Precast.FastCast,{})

    -- Dark Magic Set --
    sets.Midcast['Dark Magic'] = set_combine(sets.Precast.FastCast, drk_gear.dark_magic)

    -- Absorb Set --
    sets.Midcast.Absorb = set_combine(sets.Midcast['Dark Magic'], {
            head=drk_af.head,
            feet="Rat. Sollerets +1",
        }
    )
    sets.Midcast.Absorb.MidACC = set_combine(sets.Midcast.Absorb,{})
    sets.Midcast.Absorb.HighACC = set_combine(sets.Midcast.Absorb.MidACC,{
        head=misc_gear.augments.carmine_mask_macc,
        feet=drk_af.feet,
    })
    sets.Midcast.Absorb.MaxACC = set_combine(sets.Midcast.Absorb.HighACC,{})
-- Absorb-TP Set --
    sets.Midcast['Absorb-TP'] = set_combine(sets.Midcast.Absorb, {})

    -- Stun Sets --
    sets.Midcast.Stun = set_combine(sets.Precast.FastCast, drk_gear.dark_magic)
    sets.Midcast.Stun.MidACC = set_combine(sets.Midcast.Stun,{})
    sets.Midcast.Stun.HighACC = set_combine(sets.Midcast.Stun.MidACC,{
        head=misc_gear.augments.carmine_mask_macc,
        feet=drk_af.feet,
    })

    -- Endark Set --
    sets.Midcast.Endark2 = set_combine(sets.Midcast['Dark Magic'], {
            head=drk_af.head,
            --legs=heathen flanchard ; ;
            feet="Rat. Sollerets +1",
        }
    )

    -- Enfeebling Magic Set --
    sets.Midcast['Enfeebling Magic'] = drk_gear.simple_nuke

    -- Elemental Magic Set --
    sets.Midcast['Elemental Magic'] = drk_gear.simple_nuke
    -- Dread Spikes Set --
    sets.Midcast['Dread Spikes'] = set_combine(sets.Midcast['Dark Magic'], drk_gear.dreadspikes)
    organizer_items = {
        echos="Echo Drops",
        food="Sublime Sushi",
        food="Red Curry Bun"
    }
end

function pretarget(spell,action)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
        cancel_spell()
        send_command('input /item "Echo Drops" <me>')
    elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
        cancel_spell()
        send_command('Aggressor')
    elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
        cancel_spell()
        send_command('ThirdEye')
    elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 2900 --
        cancel_spell()
        add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
    elseif spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged' then -- Cancel WS If You Are Out Of Range --
        cancel_spell()
        add_to_chat(123, spell.name..' Canceled: [Out of Range]')
        return
    elseif buffactive['Light Arts'] or buffactive['Addendum: White'] then
        if spell.english == "Light Arts" and not buffactive['Addendum: White'] then
            cancel_spell()
            send_command('input /ja Addendum: White <me>')
        elseif spell.english == "Manifestation" then
            cancel_spell()
            send_command('input /ja Accession <me>')
        elseif spell.english == "Alacrity" then
            cancel_spell()
            send_command('input /ja Celerity <me>')
        elseif spell.english == "Parsimony" then
            cancel_spell()
            send_command('input /ja Penury <me>')
        end
    elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
        if spell.english == "Dark Arts" and not buffactive['Addendum: Black'] then
            cancel_spell()
            send_command('input /ja Addendum: Black <me>')
        elseif spell.english == "Accession" then
            cancel_spell()
            send_command('input /ja Manifestation <me>')
        elseif spell.english == "Celerity" then
            cancel_spell()
            send_command('input /ja Alacrity <me>')
        elseif spell.english == "Penury" then
            cancel_spell()
            send_command('input /ja Parsimony <me>')
        end
    end
end

function precast(spell,action)
    if spell.type == "WeaponSkill" then
            equipSet = sets.WS
            if equipSet[spell.english] then
                equipSet = equipSet[spell.english]
            end
            if Attack == 'ON' then
                equipSet = equipSet["ATT"]
            end
            if equipSet[AccArray[AccIndex]] then
                equipSet = equipSet[AccArray[AccIndex]]
            end
            if elements[spell.name] and elements[spell.name]:contains(world.day_element) then
                equipSet = set_combine(equipSet,elements.equip)
            end
            if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
                equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
            end
            if (spell.english == "Entropy" or spell.english == "Resolution" or spell.english == "Insurgency") and (player.tp > 2990 or buffactive.Sekkanoki) then
                if world.time <= (7*60) or world.time >= (17*60) then -- 3000 TP or Sekkanoki: Equip Lugra Earring +1 From Dusk To Dawn --
                    equipSet = set_combine(equipSet,{ear1="Lugra Earring +1"})
                else
                    equipSet = set_combine(equipSet,{ear1="Bale Earring"}) -- 3000 TP or Sekkanoki: Equip Kokou's Earring --
                end
            end
            equip(equipSet)

    elseif spell.type == "JobAbility" then
        if sets.JA[spell.english] then
            equip(sets.JA[spell.english])
        end
    elseif spell.action_type == 'Magic' then
        if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Magic or Ninjutsu If You Are Silenced or Out of Range --
            cancel_spell()
            add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
            return
        else
            if spell.english == "Stun" then
                if buffactive.Hasso or buffactive.Seigan then -- Cancel Hasso or Seigan When You Use Stun --
                    cast_delay(0.2)
                    send_command('cancel Hasso,Seigan')
                end
                equip(sets.Precast.FastCast)
            elseif spell.english == 'Utsusemi: Ni' then
                if buffactive['Copy Image (3)'] then
                    cancel_spell()
                    add_to_chat(123, spell.name .. ' Canceled: [3 Images]')
                    return
                else
                    equip(sets.Precast.FastCast)
                end
            elseif sets.Precast[spell.skill] then
                equip(sets.Precast[spell.skill])
            else
                equip(sets.Precast.FastCast)
            end
        end
    elseif spell.type == "Waltz" then
        refine_waltz(spell,action)
        equip(sets.Waltz)
    elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
        cast_delay(0.2)
        send_command('cancel Sneak')
    end
    if Twilight == 'Twilight' then
        equip(sets.Twilight)
    end
end

function midcast(spell,action)
    equipSet ={}
    if spell.action_type == 'Magic' then
        equipSet = sets.Midcast
        if spell.english:startswith('Absorb') and spell.english ~= "Absorb-TP" then
            equipSet = sets.Midcast.Absorb
        elseif spell.english:startswith('Drain') or spell.english:startswith('Aspir') or spell.english:startswith('Bio') then
            if world.day == "Darksday" or world.weather_element == "Dark" then -- Equip Hachirin-no-Obi On Darksday or Dark Weather --
                equipSet = set_combine(equipSet,{waist="Hachirin-no-Obi"})
            end
            equipSet = sets.Midcast['Dark Magic']
        elseif spell.english == "Stoneskin" then
            if buffactive.Stoneskin then
                send_command('@wait 1.7;cancel stoneskin')
            end
            equipSet = equipSet.Stoneskin
        elseif spell.english == "Sneak" then
            if spell.target.name == player.name and buffactive['Sneak'] then
                send_command('cancel sneak')
            end
            equipSet = equipSet.Haste
        elseif spell.english:startswith('Utsusemi') then
            if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)']) then
                send_command('@wait 1.7;cancel Copy Image*')
            end
            equipSet = equipSet.Haste
        elseif spell.english == 'Monomi: Ichi' then
            if buffactive['Sneak'] then
                send_command('@wait 1.7;cancel sneak')
            end
            equipSet = equipSet.Haste
        else
            if equipSet[spell.english] then
                equipSet = equipSet[spell.english]
            end
            if equipSet[AccArray[AccIndex]] then
                equipSet = equipSet[AccArray[AccIndex]]
            end
            if equipSet[spell.skill] then
                equipSet = equipSet[spell.skill]
            end
            if equipSet[spell.type] then
                equipSet = equipSet[spell.type]
            end
        end
    elseif equipSet[spell.english] then
        equipSet = equipSet[spell.english]
    end
    if buffactive["Dark Seal"] and DarkSealIndex==0 then -- Equip Aug'd Fall. Burgeonet +1 When You Have Dark Seal Up --
                    equipSet = set_combine(equipSet,{head="Fall. Burgeonet +1"})
    end
    if equipSet[AccArray[AccIndex]] then
        equipSet = equipSet[AccArray[AccIndex]]
    end
    equip(equipSet)
end

function aftercast(spell,action)

        if spell.type == "WeaponSkill" then
            send_command('wait 0.2;gs c TP')
        elseif spell.english == "Arcane Circle" then -- Arcane Circle Countdown --
            send_command('wait 260;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..': [OFF]')
        elseif spell.english == "Sleep II" then -- Sleep II Countdown --
            send_command('wait 60;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
        elseif spell.english == "Sleep" then -- Sleep Countdown --
            send_command('wait 30;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
        end
        status_change(player.status)
    end

-- files = require('files')

function traverse_table(tmp_table, spaces)

    if spaces == nil then
        spaces = ''
    end
    for k, v in pairs(tmp_table) do
        if type(v) == 'table' then
            print(spaces .. k)
            --print(spaces .. k)
            -- tmp_file:append('%s\n':format(k))
            traverse_table(v, spaces .. ' ')
        else
            -- tmp_file:append('%1s: %2s\n':format(k, v))
            print(spaces .. k .. ' ' .. v)
        end
    end
end

function status_change(new,old)
    check_equip_lock()
    if Armor == 'PDT' then
        enable('main', 'sub', 'ring1','ring2','back')
        equip(sets.PDT)
    elseif Armor == 'MDT' then
        equip(sets.MDT)
    elseif Armor == 'Scarlet' then
        equip(sets.Scarlet)
    elseif new == 'Engaged' or new ~= 'Engaged' then
        equipSet = sets.TP
        if Armor == 'Hybrid' and equipSet["Hybrid"] then
            equipSet = equipSet["Hybrid"]
        end
        if equipSet[WeaponArray[WeaponIndex]] then
            equipSet = equipSet[WeaponArray[WeaponIndex]]
        end
        if equipSet[player.sub_job] then
            equipSet = equipSet[player.sub_job]
        end
        if equipSet[AccArray[AccIndex]] then
            equipSet = equipSet[AccArray[AccIndex]]
        end
        if buffactive["Aftermath: Lv.3"] and equipSet["AM3"] then
            if (buffactive["Last Resort"]
                and ((buffactive.Haste and buffactive.March == 2)
                    or (buffactive.Embrava
                        and (buffactive.March == 2
                            or (buffactive.March and buffactive.Haste)
                            or (buffactive.March and buffactive['Mighty Guard'])
                            or (buffactive['Mighty Guard'] and buffactive.Haste)
                        )
                    )
                    or (buffactive[580]
                        and (buffactive.March
                            or buffactive.Haste or buffactive.Embrava
                            or buffactive['Mighty Guard']
                        )
                    )
                )
                and equipSet["HighHaste"]
            ) then
                equipSet = equipSet["AM3_HighHaste"]
            elseif Rancor == 'ON' then -- Default Rancor Toggle Is Rancorous Mantle --
                equipSet = set_combine(equipSet["AM3"],sets.TP.Rancor)
            else -- Use Rancor Toggle For Atheling Mantle --
                equipSet = equipSet["AM3"]
            end
        end
        if buffactive.Aftermath and equipSet["AM"] then
            equipSet = equipSet["AM"]
        end
        if (buffactive["Last Resort"]
            and ((buffactive.Haste and buffactive.March == 2)
                or (buffactive.Embrava
                    and (buffactive.March == 2
                        or (buffactive.March and buffactive.Haste)
                        or (buffactive.March and buffactive['Mighty Guard'])
                        or (buffactive['Mighty Guard'] and buffactive.Haste)
                    )
                )
                or (buffactive[580]
                    and (buffactive.March
                        or buffactive.Haste
                        or buffactive.Embrava
                        or buffactive['Mighty Guard']
                    )
                )
            )
            and equipSet["HighHaste"]
        ) then
            equipSet = equipSet["HighHaste"]
        end
        if buffactive.Ionis and equipSet["Ionis"] then
            equipSet = equipSet["Ionis"]
        end
        if buffactive["Samurai Roll"] and equipSet["STP"] and Samurai_Roll == 'ON' then
            equipSet = equipSet["STP"]
        end
        equip(equipSet)
    else
        -- print('poop')
        equipSet = sets.Idle
        if equipSet[IdleArray[IdleIndex]] then
            equipSet = equipSet[IdleArray[IdleIndex]]
        end
        if equipSet[WeaponArray[WeaponIndex]] then
            equipSet = equipSet[WeaponArray[WeaponIndex]]
        end
        if equipSet[player.sub_job] then
            equipSet = equipSet[player.sub_job]
        end
        -- if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
        --     equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
        -- end
        -- if world.area:endswith('Adoulin') then
        --     equipSet = set_combine(equipSet,{body="Councilor's Garb"})
        -- end
        equip(equipSet)
    end
    if Twilight == 'Twilight' then
        equip(sets.Twilight)
    end
end

function buff_change(buff,gain)
    buff = string.lower(buff)
    if buff == "aftermath: lv.3" then -- AM3 Timer/Countdown --
        if gain then
            send_command('timers create "Aftermath: Lv.3" 180 down;wait 150;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 15;input /echo Aftermath: Lv.3 [WEARING OFF IN 15 SEC.];wait 5;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
        else
            send_command('timers delete "Aftermath: Lv.3"')
            add_to_chat(123,'AM3: [OFF]')
        end
    elseif buff == 'weakness' then -- Weakness Timer --
        if gain then
            send_command('timers create "Weakness" 300 up')
        else
            send_command('timers delete "Weakness"')
        end
    end
    if buff == "sleep" and gain and player.hp > 200 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep & Have 200+ HP --
        equip({neck="Berserker's Torque"})
    else
        if not midaction() then
            status_change(player.status)
        end
    end
end



-- Keybinds
windower.send_command('bind f12 gs c dt')            -- toggle damage taken mode
windower.send_command('bind PAGEUP gs c w')         -- cycle weapons
windower.send_command('bind PAGEDOWN gs c acc')        -- cycle through acc modes
-- windower.send_command('bind PAGEDOWN gs c geo indicycle')         -- PgUP Cycles IndiColure Spell

-- Remember to unbind your keybinds on job change.
function user_unload()
    send_command('unbind insert')
    send_command('unbind delete')
    send_command('unbind home')
    send_command('unbind PAGEUP')
    send_command('unbind PAGEDOWN')
    send_command('unbind end')
    send_command('unbind f10')
    send_command('unbind f12')
    send_command('unbind f9')
    send_command('unbind !f9')
    -- send_command('unbind -')
    -- send_command('unbind =')
    -- send_command('unbind !-')
    -- send_command('unbind !=')
    -- send_command('unbind ^-')
    -- send_command('unbind ^=')

end


-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
    if command == 'C1' or command == 'acc' then -- Accuracy Level Toggle --
        AccIndex = (AccIndex % #AccArray) + 1
        status_change(player.status)
        add_to_chat(158,'Accuracy Level: '.. AccArray[AccIndex])
    elseif command == 'C17' or command == 'w' then -- Main Weapon Toggle --
        WeaponIndex = (WeaponIndex % #WeaponArray) + 1
        add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
        status_change(player.status)
        select_default_macro_book()
    elseif command == 'C5' then -- Auto Update Gear Toggle --
        status_change(player.status)
        add_to_chat(158,'Auto Update Gear')
    elseif command == 'C2' then -- Hybrid Toggle --
        if Armor == 'Hybrid' then
            Armor = 'None'
            add_to_chat(123,'Hybrid Set: [Unlocked]')
        else
            Armor = 'Hybrid'
            add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
        end
        status_change(player.status)
        elseif command == 'C10' then -- DarkSeal Toggle --
        if DarkSealIndex == 1 then
            DarkSealIndex = 0
            add_to_chat(158,'DarkSeal Duration: [On]')
        else
            DarkSealIndex = 1
            add_to_chat(158,'DarkSeal Potency: [On]')
        end
        status_change(player.status)
    elseif command == 'C7' or command == 'dt' or command == 'pdt' then -- PDT Toggle --
        if Armor == 'PDT' then
            Armor = 'None'
            add_to_chat(123,'PDT Set: [Unlocked]')
        else
            Armor = 'PDT'
            add_to_chat(158,'PDT Set: [Locked]')
        end
        status_change(player.status)
    elseif command == 'C15' or command == 'mdt' then -- MDT Toggle --
        if Armor == 'MDT' then
            Armor = 'None'
            add_to_chat(123,'MDT Set: [Unlocked]')
        else
            Armor = 'MDT'
            add_to_chat(158,'MDT Set: [Locked]')
        end
        status_change(player.status)
    -- elseif command == 'C7' or command == 'dt' then -- DT Cycle --
    --     if Armor == 'PDT' then
    --         Armor = 'MDT'
    --         add_to_chat(158,'MDT Set: [Locked]')
    --     elseif Armor == 'MDT' then
    --         Armor = 'None'
    --         add_to_chat(123,'DT Set: [Unlocked]')
    --     else
    --         Armor = 'PDT'
    --         add_to_chat(158,'PDT Set: [Locked]')
    --     end
    --     status_change(player.status)
    elseif command == 'C9' then -- Scarlet Toggle --
        if Armor == 'Scarlet' then
            Armor = 'None'
            add_to_chat(123,'Scarlet Set: [Unlocked]')
        else
            Armor = 'Scarlet'
            add_to_chat(158,'Scarlet Set: [Locked]')
        end
        status_change(player.status)
    elseif command == 'C16' then -- Rancor Toggle --
        if Rancor == 'ON' then
            Rancor = 'OFF'
            add_to_chat(123,'Rancor: [OFF]')
        else
            Rancor = 'ON'
            add_to_chat(158,'Rancor: [ON]')
        end
        status_change(player.status)
    elseif command == 'C' then -- Attack Toggle --
        if Attack == 'ON' then
            Attack = 'OFF'
            add_to_chat(123,'Attack: [OFF]')
        else
            Attack = 'ON'
            add_to_chat(158,'Attack: [ON]')
        end
        status_change(player.status)
    elseif command == 'C3' then -- Twilight Toggle --
        if Twilight == 'Twilight' then
            Twilight = 'None'
            add_to_chat(123,'Twilight Set: [Unlocked]')
        else
            Twilight = 'Twilight'
            add_to_chat(158,'Twilight Set: [locked]')
        end
        status_change(player.status)
    elseif command == 'C8' then -- Distance Toggle --
        if player.target.distance then
            target_distance = math.floor(player.target.distance*10)/10
            add_to_chat(158,'Distance: '..target_distance)
        else
            add_to_chat(123,'No Target Selected')
        end
    elseif command == 'C6' then -- Idle Toggle --
        IdleIndex = (IdleIndex % #IdleArray) + 1
        status_change(player.status)
        add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
    elseif command == 'TP' then
        add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
    elseif command:match('^SC%d$') then
        send_command('//' .. sc_map[command])
    end
end

lock_rings = {
    ["Warp Ring"] = true,
    ["Capacity Ring"] = true,
    ["Dim. Ring (Holla)"] = true,
}
--
-- (
--     (player.equipment.left_ring == "Warp Ring")
--     or (player.equipment.right_ring == "Warp Ring")
--     or (player.equipment.left_ring == "Capacity Ring")
--     or (player.equipment.right_ring == "Capacity Ring")
--     or (player.equipment.left_ring == "Capacity Ring")
--     or (player.equipment.right_ring == "Capacity Ring")
-- )
function check_equip_lock() -- Lock Equipment Here --
    if lock_rings[player.equipment.left_ring] or lock_rings[player.equipment.right_ring] then
        disable('ring1','ring2')
    elseif player.equipment.back == "Mecisto. Mantle" or player.equipment.back == "Aptitude Mantle +1" or player.equipment.back == "Aptitude Mantle" then
        disable('back')
    else
        enable('ring1','ring2','back')
    end
    -- enable('ring1','ring2','back')

end

function refine_waltz(spell,action)
    if spell.type ~= 'Waltz' then
        return
    end

    if spell.name == "Healing Waltz" or spell.name == "Divine Waltz" then
        return
    end

    local newWaltz = spell.english
    local waltzID

    local missingHP

    if spell.target.type == "SELF" then
        missingHP = player.max_hp - player.hp
    elseif spell.target.isallymember then
        local target = find_player_in_alliance(spell.target.name)
        local est_max_hp = target.hp / (target.hpp/100)
        missingHP = math.floor(est_max_hp - target.hp)
    end

    if missingHP ~= nil then
        if player.sub_job == 'DNC' then
            if missingHP < 40 and spell.target.name == player.name then
                add_to_chat(123,'Full HP!')
                cancel_spell()
                return
            elseif missingHP < 150 then
                newWaltz = 'Curing Waltz'
                waltzID = 190
            elseif missingHP < 300 then
                newWaltz = 'Curing Waltz II'
                waltzID = 191
            else
                newWaltz = 'Curing Waltz III'
                waltzID = 192
            end
        else
            return
        end
    end

    local waltzTPCost = {['Curing Waltz'] = 20, ['Curing Waltz II'] = 35, ['Curing Waltz III'] = 50}
    local tpCost = waltzTPCost[newWaltz]

    local downgrade

    if player.tp < tpCost then

        if player.tp < 20 then
            add_to_chat(123, 'Insufficient TP ['..tostring(player.tp)..']. Cancelling.')
            cancel_spell()
            return
        elseif player.tp < 35 then
            newWaltz = 'Curing Waltz'
        elseif player.tp < 50 then
            newWaltz = 'Curing Waltz II'
        end

        downgrade = 'Insufficient TP ['..tostring(player.tp)..']. Downgrading to '..newWaltz..'.'
    end

    if newWaltz ~= spell.english then
        send_command('@input /ja "'..newWaltz..'" '..tostring(spell.target.raw))
        if downgrade then
            add_to_chat(8, downgrade)
        end
        cancel_spell()
        return
    end

    if missingHP > 0 then
        add_to_chat(8,'Trying to cure '..tostring(missingHP)..' HP using '..newWaltz..'.')
    end
end

function find_player_in_alliance(name)
    for i,v in ipairs(alliance) do
        for k,p in ipairs(v) do
            if p.name == name then
                return p
            end
        end
    end
end

function sub_job_change(newSubjob, oldSubjob)
    select_default_macro_book()
end

function set_macro_page(set,book)
    if not tonumber(set) then
        add_to_chat(123,'Error setting macro page: Set is not a valid number ('..tostring(set)..').')
        return
    end
    if set < 1 or set > 10 then
        add_to_chat(123,'Error setting macro page: Macro set ('..tostring(set)..') must be between 1 and 10.')
        return
    end

    if book then
        if not tonumber(book) then
            add_to_chat(123,'Error setting macro page: book is not a valid number ('..tostring(book)..').')
            return
        end
        if book < 1 or book > 20 then
            add_to_chat(123,'Error setting macro page: Macro book ('..tostring(book)..') must be between 1 and 20.')
            return
        end
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(set))
    else
        send_command('@input /macro set '..tostring(set))
    end
end

function select_default_macro_book()
    -- Default macro set/book
    if player.sub_job == 'SAM' then
        if WeaponIndex == 1 or WeaponIndex == 3 then -- Apoc
            set_macro_page(1, 1)
        elseif WeaponIndex == 2 or WeaponIndex == 4 then -- Apoc
            set_macro_page(1, 2)
        end
    elseif player.sub_job == 'THF' then
        if WeaponIndex == 1 or WeaponIndex == 3 then -- Apoc
            set_macro_page(1, 3)
        elseif WeaponIndex == 2 or WeaponIndex == 4  then -- Apoc
            set_macro_page(1, 4)
        end
    elseif player.sub_job == 'WAR' or WeaponIndex == 3 then
        if WeaponIndex == 1 then -- Apoc
            set_macro_page(1, 5)
        elseif WeaponIndex == 2 or WeaponIndex == 4  then -- Apoc
            set_macro_page(1, 6)
        end
    -- elseif player.sub_job == 'DNC' then
    --     set_macro_page(9, 6)
    -- elseif player.sub_job == 'SCH' then
    --     set_macro_page(8, 6)
    -- else
    --     set_macro_page(1, 8)
    end
end
