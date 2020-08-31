
--[[
        Custom commands:

        Toggle Function:
        gs c toggle melee               Toggle Melee mode on / off and locking of weapons
        gs c toggle mb                  Toggles Magic Burst Mode on / off.
        gs c toggle runspeed            Toggles locking on / off Herald's Gaiters
        gs c toggle idlemode            Toggles between Refresh and DT idle mode. Activating Sublimation JA will auto replace refresh set for sublimation set. DT set will superceed both.
        gs c toggle regenmode           Toggles between Hybrid, Duration and Potency mode for regen set
        gs c toggle nukemode            Toggles between Normal and Accuracy mode for midcast Nuking sets (MB included)
        gs c toggle matchsc             Toggles auto swapping element to match the last SC that just happenned.

        Casting functions:
        these are to set fewer macros (2 cycle, 5 cast) to save macro space when playing lazily with controler

        gs c nuke cycle              	Cycles element type for nuking & SC
		gs c nuke cycledown				Cycles element type for nuking & SC	in reverse order
        gs c nuke t1                    Cast tier 1 nuke of saved element
        gs c nuke t2                    Cast tier 2 nuke of saved element
        gs c nuke t3                    Cast tier 3 nuke of saved element
        gs c nuke t4                    Cast tier 4 nuke of saved element
        gs c nuke t5                    Cast tier 5 nuke of saved element
        gs c nuke ra1                   Cast tier 1 -ra nuke of saved element
        gs c nuke ra2                   Cast tier 2 -ra nuke of saved element
        gs c nuke ra3                   Cast tier 3 -ra nuke of saved element

		gs c geo geocycle				Cycles Geomancy Spell
		gs c geo geocycledown			Cycles Geomancy Spell in reverse order
		gs c geo indicycle				Cycles IndiColure Spell
		gs c geo indicycledown			Cycles IndiColure Spell in reverse order
		gs c geo geo					Cast saved Geo Spell
		gs c geo indi					Cast saved Indi Spell

        HUD Functions:
        gs c hud hide                   Toggles the Hud entirely on or off
        gs c hud hidemode               Toggles the Modes section of the HUD on or off
        gs c hud hidejob                Toggles the job section of the HUD on or off
        gs c hud hidebattle             Toggles the Battle section of the HUD on or off
        gs c hud lite                   Toggles the HUD in lightweight style for less screen estate usage. Also on ALT-END
        gs c hud keybinds               Toggles Display of the HUD keybindings (my defaults) You can change just under the binds in the Gearsets file.

        // OPTIONAL IF YOU WANT / NEED to skip the cycles...
        gs c nuke Ice                   Set Element Type to Ice DO NOTE the Element needs a Capital letter.
        gs c nuke Air                   Set Element Type to Air DO NOTE the Element needs a Capital letter.
        gs c nuke Dark                  Set Element Type to Dark DO NOTE the Element needs a Capital letter.
        gs c nuke Light                 Set Element Type to Light DO NOTE the Element needs a Capital letter.
        gs c nuke Earth                 Set Element Type to Earth DO NOTE the Element needs a Capital letter.
        gs c nuke Lightning             Set Element Type to Lightning DO NOTE the Element needs a Capital letter.
        gs c nuke Water                 Set Element Type to Water DO NOTE the Element needs a Capital letter.
        gs c nuke Fire                  Set Element Type to Fire DO NOTE the Element needs a Capital letter.
--]]


include('organizer-lib') -- Remove if you dont use Organizer

--------------------------------------------------------------------------------------------------------------
res = require('resources')      -- leave this as is
texts = require('texts')        -- leave this as is
include('Modes.lua')            -- leave this as is
--------------------------------------------------------------------------------------------------------------

-- Define your modes:
-- You can add or remove modes in the table below, they will get picked up in the cycle automatically.
-- to define sets for idle if you add more modes, name them: sets.me.idle.mymode and add 'mymode' in the group.
-- to define sets for regen if you add more modes, name them: sets.midcast.regen.mymode and add 'mymode' in the group.
-- Same idea for nuke modes.
idleModes = M('normal', 'dt', 'mdt')
-- To add a new mode to nuking, you need to define both sets: sets.midcast.nuking.mynewmode as well as sets.midcast.MB.mynewmode
nukeModes = M('normal', 'acc')

-- Setting this to true will stop the text spam, and instead display modes in a UI.
-- Currently in construction.
use_UI = true
hud_x_pos = 1400    --important to update these if you have a smaller screen
hud_y_pos = 200     --important to update these if you have a smaller screen
hud_draggable = true
hud_font_size = 10
hud_transparency = 200 -- a value of 0 (invisible) to 255 (no transparency at all)
hud_font = 'Impact'

-- Setup your Key Bindings here:
    windower.send_command('bind insert gs c nuke cycle')            -- insert Cycles Nuke element
    windower.send_command('bind delete gs c nuke cycledown')        -- delete Cycles Nuke element in reverse order
    windower.send_command('bind home gs c geo geocycle') 			-- home Cycles Geomancy Spell
    windower.send_command('bind PAGEUP gs c geo geocycledown') 		-- end Cycles Geomancy Spell in reverse order
    windower.send_command('bind PAGEDOWN gs c geo indicycle') 		-- PgUP Cycles IndiColure Spell
    windower.send_command('bind end gs c geo indicycledown') 	    -- PgDown Cycles IndiColure Spell in reverse order
    windower.send_command('bind !f9 gs c toggle runspeed') 			-- Alt-F9 toggles locking on / off Herald's Gaiters
	windower.send_command('bind f10 gs c toggle mb')				-- F10 toggles Magic Burst Mode on / off.
    windower.send_command('bind !f10 gs c toggle nukemode')         -- Alt-F10 to change Nuking Mode
    windower.send_command('bind ^F10 gs c toggle matchsc')          -- CTRL-F10 to change Match SC Mode
    windower.send_command('bind f12 gs c toggle melee')				-- F12 Toggle Melee mode on / off and locking of weapons
	windower.send_command('bind f9 gs c toggle idlemode')			-- F9 Toggles between MasterRefresh or MasterDT when no luopan is out
--[[
    This gets passed in when the Keybinds is turned on.
    Each one matches to a given variable within the text object
    IF you changed the Default Keybind above, Edit the ones below so it can be reflected in the hud using "//gs c hud keybinds" command
]]																	-- or between Full Pet Regen+DT or Hybrid PetDT and MasterDT when a Luopan is out
keybinds_on = {}
keybinds_on['key_bind_idle'] = '(F9)'
keybinds_on['key_bind_regen'] = '(END)'
keybinds_on['key_bind_casting'] = '(ALT-F10)'
keybinds_on['key_bind_mburst'] = '(F10)'
keybinds_on['key_bind_matchsc'] = '(CTRL-F10)'

keybinds_on['key_bind_element_cycle'] = '(INS + DEL)'
keybinds_on['key_bind_geo_cycle'] = '(HOME + PgUP)'
keybinds_on['key_bind_indi_cycle'] = '(End + PgDOWN)'
keybinds_on['key_bind_lock_weapon'] = '(F12)'
keybinds_on['key_bind_movespeed_lock'] = '(ALT-F9)'


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
end

--------------------------------------------------------------------------------------------------------------
include('GEO_Lib.lua')          -- leave this as is
local character_gear = require 'Nuiyuyu_Gear'
local geo_gear = character_gear.geo
local geo_capes = character_gear.capes.geo
--------------------------------------------------------------------------------------------------------------

geomancy:set('Geo-Frailty')     -- Geo Spell Default      (when you first load lua / change jobs the saved spells is this one)
indicolure:set('Indi-Haste')    -- Indi Spell Default     (when you first load lua / change jobs the saved spells is this one)
validateTextInformation()

-- Optional. Swap to your geo macro sheet / book
set_macros(1,2) -- Sheet, Book

-- Setup your Gear Sets below:
function get_sets()

    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my.pan's behaviour or abilities are under .pan', eg, Perpetuation, Blood Pacts, etc

    sets.me = {}        -- leave this empty
    sets.pan = {}       -- leave this empty
	sets.me.idle = {}	-- leave this empty
	sets.pan.idle = {}	-- leave this empty

	-- sets starting with sets.me means you DONT have a luopan currently out.
	-- sets starting with sets.pan means you DO have a luopan currently out.

    -- Your idle set when you DON'T have a luopan out
    sets.me.idle.normal = geo_gear.idle

	-- This or herald gaiters or +1 +2 +3...
	sets.me.movespeed = {feet="Geomancy Sandals"}

    -- Your idle MasterDT set (Notice the sets.me, means no Luopan is out)
    sets.me.idle.dt = geo_gear.idle

    sets.me.idle.mdt = geo_gear.idle

    -- Your MP Recovered Whilst Resting Set
    sets.me.resting = geo_gear.idle

	sets.me.latent_refresh = {waist="Fucho-no-obi"}


    -----------------------
    -- Luopan Perpetuation
    -----------------------

    -- Luopan's Out --  notice sets.pan
    -- This is the base for all perpetuation scenarios, as seen below
    sets.pan.idle.normal = geo_gear.idle

	-- This is when you have a Luopan out but want to sacrifice some slot for master DT, put those slots in.
    sets.pan.idle.dt = geo_gear.idle

    sets.pan.idle.mdt = geo_gear.idle

    -- Combat Related Sets

    -- Melee
    -- Anything you equip here will overwrite the perpetuation/refresh in that slot.
	-- No Luopan out
	-- they end in [idleMode] so it will derive from either the normal or the dt set depending in which mode you are then add the pieces filled in below.
    sets.me.melee = geo_gear.idle

    -- Luopan is out
	sets.pan.melee = geo_gear.idle

    -- Weapon Skill sets
	-- Example:
    sets.me["Flash Nova"] = geo_gear.idle

    sets.me["Realmrazer"] = geo_gear.idle

    sets.me["Exudation"] = geo_gear.idle
    -- Feel free to add new weapon skills, make sure you spell it the same as in game.

    ---------------
    -- Casting Sets
    ---------------

    sets.precast = {}               -- leave this empty
    sets.midcast = {}               -- leave this empty
    sets.aftercast = {}             -- leave this empty
    sets.midcast.nuking = {}        -- leave this empty
    sets.midcast.MB = {}            -- leave this empty
    ----------
    -- Precast
    ----------

    -- Generic Casting Set that all others take off of. Here you should add all your fast cast
    sets.precast.casting = geo_gear.fastcast

    sets.precast.geomancy = geo_gear.fastcast

    -- Enhancing Magic, eg. Siegal Sash, etc
    sets.precast.enhancing = geo_gear.fastcast

    -- Stoneskin casting time -, works off of enhancing -
    sets.precast.stoneskin = geo_gear.fastcast

    -- Curing Precast, Cure Spell Casting time -
    sets.precast.cure = geo_gear.fastcast

    sets.precast.regen = geo_gear.fastcast
    ---------------------
    -- Ability Precasting
    ---------------------

	-- Fill up with your JSE!
    sets.precast["Life Cycle"] = {
    	-- body = "Geomancy Tunic +2",
        -- back = "Nantosuelta's Cape",
        body = "Geomancy Tunic",
		back = geo_capes.healing
    }

    sets.precast["Bolster"] = {
        body = "Bagua Tunic +1",
    	-- body = "Bagua Tunic +3",
    }
    sets.precast["Primeval Zeal"] = {
        head = "Bagua Galero",
    	-- head = "Bagua Galero +3",
    }
    sets.precast["Cardinal Chant"] = {
    	head = "Geomancy Galero",
        -- head = "Geomancy Galero +2",
    }
    sets.precast["Full Circle"] = {
    	head = "Azimuth Hood +1",
    }
    sets.precast["Curative Recantation"] = {
        hands = "Bagua Mitaines",
        -- hands = "Bagua Mitaines +3",
    }
    sets.precast["Mending Halation"] = {
        legs = "Bagua Pants +1",
        -- legs = "Bagua Pants +3",
    }
    sets.precast["Radial Arcana"] = {
        feet = "Bagua Sandals",
        -- feet = "Bagua Sandals +3",
    }

    ----------
    -- Midcast
    ----------

    -- Whatever you want to equip mid-cast as a catch all for all spells, and we'll overwrite later for individual spells
    sets.midcast.casting = geo_gear.idle

	-- For Geo spells /
    sets.midcast.geo = geo_gear.luopan

	-- For Indi Spells
    sets.midcast.indi = geo_gear.luopan

	sets.midcast.Obi = {
	    waist="Hachirin-no-Obi",
	}

	-- Nuking
    sets.midcast.nuking.normal = geo_gear.nuke
	sets.midcast.MB.normal = geo_gear.nuke
    sets.midcast.nuking.acc = geo_gear.enfeebling

    sets.midcast.MB.acc = geo_gear.enfeebling

	-- Enfeebling
	sets.midcast.IntEnfeebling = geo_gear.enfeebling

	sets.midcast.MndEnfeebling = geo_gear.enfeebling

    -- Enhancing
    sets.midcast.enhancing = set_combine(sets.midcast.casting,{})

    -- Stoneskin
    sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{})
    sets.midcast.refresh = set_combine(sets.midcast.enhancing,{})
    sets.midcast.aquaveil = sets.midcast.refresh

	sets.midcast["Drain"] = geo_gear.nuke

	sets.midcast["Aspir"] = sets.midcast["Drain"]

    sets.midcast.cure = {} -- Leave This Empty

    -- Cure Potency
    sets.midcast.cure.normal = geo_gear.healing

    sets.midcast.cure.weather = geo_gear.healing

    sets.midcast.regen = geo_gear.healing

    ------------
    -- Aftercast
    ------------

    -- I don't use aftercast sets, as we handle what to equip later depending on conditions using a function, eg, do we have a Luopan pan out?

end
