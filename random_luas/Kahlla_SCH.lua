--[[
        Custom commands:
        Shorthand versions for each strategem type that uses the version appropriate for
        the current Arts.
                                        Light Arts              Dark Arts
        gs c scholar light              Light Arts/Addendum
        gs c scholar dark                                       Dark Arts/Addendum
        gs c scholar cost               Penury                  Parsimony
        gs c scholar speed              Celerity                Alacrity
        gs c scholar aoe                Accession               Manifestation
        gs c scholar power              Rapture                 Ebullience
        gs c scholar duration           Perpetuance
        gs c scholar accuracy           Altruism                Focalization
        gs c scholar enmity             Tranquility             Equanimity
        gs c scholar skillchain                                 Immanence
        gs c scholar addendum           Addendum: White         Addendum: Black
    
        Toggle Function: 
        gs c toggle melee               Toggle Melee mode on / off and locking of weapons
        gs c toggle mb                  Toggles Magic Burst Mode on / off.
        gs c toggle runspeed            Toggles locking on / off Herald's Gaiters
        gs c toggle idlemode            Toggles between Refresh and DT idle mode. Activating Sublimation JA will auto replace refresh set for sublimation set. DT set will superceed both.        
        gs c toggle regenmode           Toggles between Hybrid, Duration and Potency mode for regen set  
        gs c toggle nukemode            Toggles between Normal and Accuracy mode for midcast Nuking sets (MB included)  
        gs c toggle matchsc             Toggles auto swapping element to match the last SC that just happenned.
                
        Casting functions:
        these are to set fewer macros (1 cycle, 5 cast) to save macro space when playing lazily with controler
        
        gs c nuke cycle                 Cycles element type for nuking & SC
        gs c nuke cycledown             Cycles element type for nuking & SC in reverse order    
        gs c nuke t1                    Cast tier 1 nuke of saved element 
        gs c nuke t2                    Cast tier 2 nuke of saved element 
        gs c nuke t3                    Cast tier 3 nuke of saved element 
        gs c nuke t4                    Cast tier 4 nuke of saved element 
        gs c nuke t5                    Cast tier 5 nuke of saved element 
        gs c nuke helix                 Cast helix2 nuke of saved element 
        gs c nuke storm                 Cast Storm II buff of saved element  
                    
        gs c sc tier                    Cycles SC Tier (1 & 2)
        gs c sc castsc                  Cast All the stuff to create a SC burstable by the nuke element set with '/console gs c nuke element'.
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

-------------------------------------------------------------                                        
--                              
--      ,---.     |    o               
--      |   |,---.|--- .,---.,---.,---.
--      |   ||   ||    ||   ||   |`---.
--      `---'|---'`---'``---'`   '`---'
--           |                         
-------------------------------------------------------------  

include('organizer-lib') -- Can remove this if you dont use organizer
res = require('resources')
texts = require('texts')
include('Modes.lua')

-- Define your modes: 
-- You can add or remove modes in the table below, they will get picked up in the cycle automatically. 
-- to define sets for idle if you add more modes, name them: sets.me.idle.mymode and add 'mymode' in the group.
-- to define sets for regen if you add more modes, name them: sets.midcast.regen.mymode and add 'mymode' in the group.
-- Same idea for nuke modes. 
idleModes = M('Refresh', 'DmgT', 'MagicDT')
regenModes = M('Hybrid', 'Duration', 'Potency')
-- To add a new mode to nuking, you need to define both sets: sets.midcast.nuking.mynewmode as well as sets.midcast.MB.mynewmode
nukeModes = M('Normal', 'ACC')

-- Setting this to true will stop the text spam, and instead display modes in a UI.
-- Currently in construction.
use_UI = true
hud_x_pos = 1400    --important to update these if you have a smaller screen
hud_y_pos = 200     --important to update these if you have a smaller screen
hud_draggable = true
hud_font_size = 10
hud_transparency = 255 -- a value of 0 (invisible) to 255 (no transparency at all)
hud_font = 'Impact'


-- Setup your Key Bindings here:
    windower.send_command('bind  f2 gs c nuke cycle')        -- insert to Cycles Nuke element
    windower.send_command('bind  gs c nuke cycledown')    -- delete to Cycles Nuke element in reverse order   
    windower.send_command('bind  f9 gs c toggle idlemode')       -- F9 to change Idle Mode    
    windower.send_command('bind  f8 gs c toggle runspeed') 		-- Alt-F9 toggles locking on / off Herald's Gaiters
    windower.send_command('bind f7 gs c toggle melee')			-- F12 Toggle Melee mode on / off and locking of weapons
    windower.send_command('bind !` input /ma Stun <t>') 		-- Alt-` Quick Stun Shortcut.
    windower.send_command('bind  f3 gs c sc tier')				-- home to change SC tier between Level 1 or Level 2 SC
    windower.send_command('bind f11 gs c toggle regenmode')		-- end to change Regen Mode	
    windower.send_command('bind  f5 gs c toggle mb')            -- F10 toggles Magic Burst Mode on / off.
    windower.send_command('bind f10 gs c toggle nukemode')		-- Alt-F10 to change Nuking Mode
    windower.send_command('bind  f6 gs c toggle matchsc')      -- CTRL-F10 to change Match SC Mode      	


--[[
    This gets passed in when the Keybinds is turned on.
    Each one matches to a given variable within the text object
    IF you changed the Default Keybind above, Edit the ones below so it can be reflected in the hud using "//gs c hud keybinds" command
]]
keybinds_on = {}
keybinds_on['key_bind_idle'] = '(F9)'
keybinds_on['key_bind_regen'] = '(END)'
keybinds_on['key_bind_casting'] = '(ALT-F10)'
keybinds_on['key_bind_mburst'] = '(F10)'

keybinds_on['key_bind_element_cycle'] = '(INSERT)'
keybinds_on['key_bind_sc_level'] = '(HOME)'
keybinds_on['key_bind_lock_weapon'] = '(F12)'
keybinds_on['key_bind_movespeed_lock'] = '(ALT-F9)'
keybinds_on['key_bind_matchsc'] = '(CTRL-F10)'

-- Remember to unbind your keybinds on job change.
function user_unload()
    send_command('unbind insert')
    send_command('unbind delete')	
    send_command('unbind f9')
    send_command('unbind f10')
    send_command('unbind f12')
    send_command('unbind !`')
    send_command('unbind home')
    send_command('unbind end')
    send_command('unbind !f10')	
    send_command('unbind `f10')
    send_command('unbind !f9')        	
end


--------------------------------------------------------------------------------------------------------------
include('SCH_Lib.lua')          -- leave this as is    
refreshType = idleModes[1]      -- leave this as is   ***********************************************************this could be the issue testing later  
--------------------------------------------------------------------------------------------------------------


-- Optional. Swap to your sch macro sheet / book
set_macros(1,17) -- Sheet, Book


-------------------------------------------------------------                                        
--      ,---.                         |         
--      |  _.,---.,---.,---.,---.,---.|--- ,---.
--      |   ||---',---||    `---.|---'|    `---.
--      `---'`---'`---^`    `---'`---'`---'`---'
-------------------------------------------------------------                                              

-- Setup your Gear Sets below:
function get_sets()
  
    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my avatar's behaviour or abilities are under 'avatar', eg, Perpetuation, Blood Pacts, etc
      
    sets.me = {}        		-- leave this empty
    sets.buff = {} 				-- leave this empty
    sets.me.idle = {}			-- leave this empty

    -- Your idle set
    sets.me.idle.refresh = {
    main="Terra's Staff",
    sub="Staff Strap",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Arbatel Gown",
    hands="Revealer's Mitts",
    legs="Revealer's Pants",
    feet="Mallquis Clogs",
    neck="Morgana's Choker",
    waist="Eschan Stone",
    left_ear="Magnetic Earring",
    right_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    left_ring="Tamas Ring",
    right_ring="Vocane Ring",
    back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Cure" potency +10%',}},
    }

    -- Your idle Sublimation set combine from refresh or DT depening on mode.
    sets.me.idle.sublimation = set_combine(sets.me.idle.refresh,{
    main="Terra's Staff",
    sub="Staff Strap",
    ammo="Homiliary",
    head="Acad. Mortarboard",
    body={ name="Pedagogy Gown", augments={'Enhances "Enlightenment" effect',}},
    hands="Revealer's Mitts",
    legs="Revealer's Pants",
    feet="Mallquis Clogs",
    neck="Morgana's Choker",
    waist="Eschan Stone",
    left_ear="Magnetic Earring",
    right_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    left_ring="Tamas Ring",
    right_ring="Vocane Ring",
    back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Cure" potency +10%',}},
    })   
    -- Your idle Damage Taken set
    sets.me.idle.dt = set_combine(sets.me.idle[refreshType],{
    main="Terra's Staff",
    sub="Staff Strap",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Arbatel Gown",
    hands="Revealer's Mitts",
    legs="Revealer's Pants",
    feet="Mallquis Clogs",
    neck="Morgana's Choker",
    waist="Eschan Stone",
    left_ear="Magnetic Earring",
    right_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    left_ring="Tamas Ring",
    right_ring="Vocane Ring",
    back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Cure" potency +10%',}},
    })  
	
	-- Your idle Magic Damage Taken
    sets.me.idle.mdt = set_combine(sets.me.idle[refreshType],{
    main="Blurred Staff",
    sub="Staff Strap",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Wretched Coat",
    hands="Revealer's Mitts",
    legs="Revealer's Pants",
    feet="Revealer's Pumps",
    neck="Morgana's Choker",
    waist="Eschan Stone",
    left_ear="Magnetic Earring",
    right_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    left_ring="Tamas Ring",
    right_ring="Vocane Ring",
    back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Cure" potency +10%',}},
    })  
	-- Your MP Recovered Whilst Resting Set
    sets.me.resting = { 
    main="Boonwell Staff",
    sub="Staff Strap",
    ammo="Homiliary",
    head={ name="Selenian Cap", augments={'"Mag.Atk.Bns."+2','HP recovered while healing +3','INT+4','Mag. Acc.+2',}},
    body="Errant Hpl.",
    hands="Genie Gages",
    legs="Baron's Slops",
    feet="Goliard Clogs",
    neck="Beak Necklace +1",
    waist="Qiqirn Sash +1",
    left_ear="Magnetic Earring",
    right_ear="Relaxing Earring",
    left_ring="Tamas Ring",
    right_ring="Vocane Ring",
    back={ name="Cortege Cape", augments={'"Resist Paralyze"+2','Spell interruption rate down -2%','MP recovered while healing +1',}},
    }
    
    sets.me.latent_refresh = {waist="Fucho-no-obi"}     
    
	-- Combat Related Sets
    sets.me.melee = set_combine(sets.me.idle[idleModes.current],{
    main="Blurred Staff",
    ammo="Homiliary",
    head="Revealer's Crown",
    body="Wretched Coat",
    hands="Revealer's Mitts",
    legs="Revealer's Pants",
    feet="Mallquis Clogs",
    neck="Love Torque",
    waist="Swift Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    left_ring="Tamas Ring",
    right_ring="Vocane Ring",
    back="Aesir Mantle",
    })
      
    -- Weapon Skills sets just add them by name.
    sets.me["Shattersoul"] = {

    }
    sets.me["Myrkr"] = {

    }
      
    -- Feel free to add new weapon skills, make sure you spell it the same as in game. These are the only two I ever use though
  
    ------------
    -- Buff Sets
    ------------	
    -- Gear that needs to be worn to **actively** enhance a current player buff.
    -- Fill up following with your avaible pieces.
    sets.buff['Rapture'] = {head="Arbatel bonnet +1"}
    sets.buff['Perpetuance'] = {hands="Arbatel Bracers +1"}
    sets.buff['Immanence'] = {hands="Arbatel Bracers +1"}
    sets.buff['Penury'] = {legs="Arbatel Pants +1"}
    sets.buff['Parsimony'] = {legs="Arbatel Pants +1"}
    sets.buff['Celerity'] = {feet="Peda. Loafers +3"}
    sets.buff['Alacrity'] = {feet="Peda. Loafers +3"}
    sets.buff['Klimaform'] = {feet="Arbatel Loafers +1"}	
    -- Ebulience set empy now as we get better damage out of a good Merlinic head
    sets.buff['Ebullience'] = {} -- I left it there still if it becomes needed so the SCH.lua file won't need modification should you want to use this set
   
	
	
    ---------------
    -- Casting Sets
    ---------------
    sets.precast = {}   		-- Leave this empty  
    sets.midcast = {}    		-- Leave this empty  
    sets.aftercast = {}  		-- Leave this empty  
	sets.midcast.nuking = {}	-- leave this empty
	sets.midcast.MB	= {}		-- leave this empty      
    ----------
    -- Precast
    ----------
      
    -- Generic Casting Set that all others take off of. Here you should add all your fast cast 
    -- Grimoire: 10(cap:25) / rdm: 15
    sets.precast.casting = {
	sub="Vivid Strap",
    head="Pedagogy mortarboard",
    body="Goliard Saio",
    hands="Academic's Bracers",
    legs="Revealer's pants",
    feet="Pedagogy loafersc",
    waist="Swift Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
    }
	
	--Nuking Precast Combined
	sets.precast.nuking = set_combine(sets.precast.casting, {
	body="Mallquis saio",
	right_ring="Mallquis ring",
	right_ear="Barkaro. Earring",
	
	})

	sets.precast["Stun"] = {

	}

    -- When spell school is aligned with grimoire, swap relevent pieces -- Can also use Arbatel +1 set here if you value 1% quickcast procs per piece. (2+ pieces)  
    -- Dont set_combine here, as this is the last step of the precast, it will have sorted all the needed pieces already based on type of spell.
    -- Then only swap in what under this set after everything else. 
    sets.precast.grimoire = {
	head="Pedagogy mortarboard",
	feet="Academic's Loafers",
    }

	
    -- Enhancing Magic, eg. Siegal Sash, etc
    sets.precast.enhancing = set_combine(sets.precast.casting,{
    main="Kirin's Pole",
    sub="Staff Strap",
	head="Befouled Crown",
    body="Pedagogy gown",
    neck="Enhancing Torque",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",

    })
  
    -- Stoneskin casting time -, works off of enhancing -
    sets.precast.stoneskin = set_combine(sets.precast.enhancing,{

    })
      
    -- Curing Precast, Cure Spell Casting time -
    sets.precast.cure = set_combine(sets.precast.casting,{
	main="Chatoyant Staff",
    sub="Staff Strap",
    ammo="Incantor Stone",
    head="Mallquis chapeau",
    body="Mallquis Saio",
    hands="revealer's mitts",
    legs="Mallquis Trews",
    feet="Mallquis clogs",
    waist="Korin Obi",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",

    })
      
    ---------------------
    -- Ability Precasting
    ---------------------

    sets.precast["Tabula Rasa"] = {legs="Pedagogy Pants +1"}
    sets.precast["Enlightenment"] = {body="Peda. Gown +3"}	 
    sets.precast["Sublimation"] = {head="Acad. Mortar. +1", body="Peda. Gown +3"}	 

	
	----------
    -- Midcast
    ----------
	
    -- Just go make it, inventory will thank you and making rules for each is meh.
    sets.midcast.Obi = {
    	waist="Hachirin-no-Obi",
    }
	
	-----------------------------------------------------------------------------------------------
	-- Helix sets automatically derives from casting sets. SO DONT PUT ANYTHING IN THEM other than:
	-- Pixie in DarkHelix
	-- Boots that aren't arbatel +1 (15% of small numbers meh, amalric+1 does more)
	-- Belt that isn't Obi.
	-----------------------------------------------------------------------------------------------
    -- Make sure you have a non weather obi in this set. Helix get bonus naturally no need Obi.	
    sets.midcast.DarkHelix = {

    }
    -- Make sure you have a non weather obi in this set. Helix get bonus naturally no need Obi.	
    sets.midcast.Helix = {

    }	

    -- Whatever you want to equip mid-cast as a catch all for all spells, and we'll overwrite later for individual spells
    sets.midcast.casting = {

    }

	sets.midcast["Sublimation"] = {head="Acad. Mortar. +1", body="Peda. Gown +3"}
    
    sets.midcast.nuking.normal = {
	main="Blurred staff",
	sub="Elder's grip +1",
    ammo="Phtm. Tathlum",
    head="Mallquis Chapeau",
    body="Wretched coat",
    hands="Mallquis Cuffs",
    legs="Revealer's pants",
    feet="revealer's pumps",
    neck="Elemental Torque",
    waist="Eschan Stone",
    left_ear="Novio Earring",
    right_ear="Barkaro. Earring",
    left_ring="Tamas Ring",
    right_ring="Mallquis Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    }
	
	-- Staves  CURRENTLY NOT IN USE
	
	--sets.midcast["Thunder"] = set_combine(sets.midcast.nuking, {main="Jupiter's Staff", sub="Thunder Grip", })
	--sets.midcast["Thunder II"] = set_combine(sets.midcast.nuking, {main="Jupiter's Staff", sub="Thunder Grip", })
	--sets.midcast["Thunder III"] = set_combine(sets.midcast.nuking, {main="Jupiter's Staff", sub="Thunder Grip", })
	--sets.midcast["Thunder IV"] = set_combine(sets.midcast.nuking, {main="Jupiter's Staff", sub="Thunder Grip", })
	--sets.midcast["Thunder V"] = set_combine(sets.midcast.nuking, {main="Jupiter's Staff", sub="Thunder Grip", })
	--sets.midcast["Blizzard"] = set_combine(sets.midcast.nuking, {main="Aquilo's Staff", sub="Ice Grip", })		
	--sets.midcast["Blizzard II"] = set_combine(sets.midcast.nuking, {main="Aquilo's Staff", sub="Ice Grip", })
	--sets.midcast["Blizzard III"] = set_combine(sets.midcast.nuking, {main="Aquilo's Staff", sub="Ice Grip", })
	--sets.midcast["Blizzard IV"] = set_combine(sets.midcast.nuking, {main="Aquilo's Staff", sub="Ice Grip", })
	--sets.midcast["Blizzard V"] = set_combine(sets.midcast.nuking, {main="Aquilo's Staff", sub="Ice Grip", })
	--sets.midcast["Aero"] = set_combine(sets.midcast.nuking, {main="Auster's Staff", sub="Wind Grip", })
	--sets.midcast["Aero II"] = set_combine(sets.midcast.nuking, {main="Auster's Staff", sub="Wind Grip", })
	--sets.midcast["Aero III"] = set_combine(sets.midcast.nuking, {main="Auster's Staff", sub="Wind Grip", })
	--sets.midcast["Aero IV"] = set_combine(sets.midcast.nuking, {main="Auster's Staff", sub="Wind Grip", })
	--sets.midcast["Aero V"] = set_combine(sets.midcast.nuking, {main="Auster's Staff", sub="Wind Grip", })
	--sets.midcast["Fire"] = set_combine(sets.midcast.nuking, {main="Vulcan's Staff", sub="Fire Grip", })
	--sets.midcast["Fire II"] = set_combine(sets.midcast.nuking, {main="Vulcan's Staff", sub="Fire Grip", })
	--sets.midcast["Fire III"] = set_combine(sets.midcast.nuking, {main="Vulcan's Staff", sub="Fire Grip", })
	--sets.midcast["Fire IV"] = set_combine(sets.midcast.nuking, {main="Vulcan's Staff", sub="Fire Grip", })
	--sets.midcast["Fire V"] = set_combine(sets.midcast.nuking, {main="Vulcan's Staff", sub="Fire Grip", })
	--sets.midcast["Water"] = set_combine(sets.midcast.nuking, {main="Neptune's Staff", sub="Water Grip", })
	--sets.midcast["Water II"] = set_combine(sets.midcast.nuking, {main="Neptune's Staff", sub="Water Grip", })
	--sets.midcast["Water III"] = set_combine(sets.midcast.nuking, {main="Neptune's Staff", sub="Water Grip", })
	--sets.midcast["Water IV"] = set_combine(sets.midcast.nuking, {main="Neptune's Staff", sub="Water Grip", })
	--sets.midcast["Water V"] = set_combine(sets.midcast.nuking, {main="Neptune's Staff", sub="Water Grip", })
	--sets.midcast["Stone"] = set_combine(sets.midcast.nuking, {main="Terra's Staff", sub="Earth Grip", })
	--sets.midcast["Stone II"] = set_combine(sets.midcast.nuking, {main="Terra's Staff", sub="Earth Grip", })
	--sets.midcast["Stone III"] = set_combine(sets.midcast.nuking, {main="Terra's Staff", sub="Earth Grip", })
	--sets.midcast["Stone IV"] = set_combine(sets.midcast.nuking, {main="Terra's Staff", sub="Earth Grip", })
	--sets.midcast["Stone V"] = set_combine(sets.midcast.nuking, {main="Terra's Staff", sub="Earth Grip", })
			
    -- used with toggle, default: F10
    -- Pieces to swap from freen nuke to Magic Burst
    sets.midcast.MB.normal = set_combine(sets.midcast.nuking.normal, {

    })
	
    sets.midcast.nuking.acc = {

    }
    -- used with toggle, default: F10
    -- Pieces to swap from freen nuke to Magic Burst
    sets.midcast.MB.acc = set_combine(sets.midcast.nuking.normal, {

    })	
	
    -- Enfeebling
	sets.midcast["Stun"] = {

	}	
    sets.midcast.IntEnfeebling = {
    main="Blurred Staff",
    sub="Elder's grip +1",
    ammo="Phtm. Tathlum",
    head="Befouled Crown",
    body="Mallquis Saio",
    hands="Pedagogy bracers",
    legs="Mallquis Trews",
    feet="Mallquis Clogs",
    neck="Enfeebling Torque",
    waist="Argute Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    }
    sets.midcast.MndEnfeebling = {
    main="Blurred Staff",
    sub="Elder's grip +1",
    ammo="Phtm. Tathlum",
    head="Befouled Crown",
    body="Mallquis Saio",
    hands="Pedagogy bracers",
    legs="Mallquis Trews",
    feet="Mallquis Clogs",
    neck="Enfeebling Torque",
    waist="Argute Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",
    back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Cure" potency +10%',}},
    }
	
    -- Enhancing
    sets.midcast.enhancing = set_combine(sets.midcast.casting,{
    main="Kirin's Pole",
	head="Befouled Crown",
    body="Pedagogy gown",
    neck="Enhancing Torque",
    left_ring="Stikini Ring",
	right_ring="Stikini Ring",

    })
    sets.midcast.storm = set_combine(sets.midcast.enhancing,{

    })       
    -- Stoneskin
    sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
		waist="Siegel Sash",
    })
    sets.midcast.refresh = set_combine(sets.midcast.enhancing,{
		head="Amal.Head.A",
    })
    sets.midcast.aquaveil = sets.midcast.refresh
	
    sets.midcast["Drain"] = set_combine(sets.midcast.nuking, {
    main="Pluto's Staff",
    sub="Dark Grip",
    ammo="Phtm. Tathlum",
    neck="Dark Torque",
    waist="Anrin Obi",
	left_ring="Stikini Ring",
	right_ring="Stikini Ring",

    })
    sets.midcast["Aspir"] = sets.midcast["Drain"]
 	
 	sets.midcast.cure = {} -- Leave This Empty
    -- Cure Potency
    sets.midcast.cure.normal = set_combine(sets.midcast.casting,{
	back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Cure" potency +10%',}},

    })
    sets.midcast.cure.weather = set_combine(sets.midcast.cure.normal,{
		main="Chatoyant Staff",

    })    

    ------------
    -- Regen
    ------------	
	sets.midcast.regen = {} 	-- leave this empty
	-- Normal hybrid well rounded Regen
    sets.midcast.regen.hybrid = {

    }
	-- Focus on Regen Duration 	
    sets.midcast.regen.duration = set_combine(sets.midcast.regen.hybrid,{
	
    }) 
	-- Focus on Regen Potency 	
    sets.midcast.regen.potency = set_combine(sets.midcast.regen.hybrid,{
	head="Arbatel Bonnet",
    }) 
	
    ------------
    -- Aftercast
    ------------
      
    -- I don't use aftercast sets, as we handle what to equip later depending on conditions using a function.
	
end