------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job. Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

-- Load and initialize the include file.
    include('Mote-Include.lua')
end



-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job. Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent. Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Rag', 'RagACC', 'Apoc', 'ApocACC', "DW", "DWACC")
    state.HybridMode:options ('Reraise')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'Resistant')
    state.PhysicalDefenseMode:options('PDT')
    state.MagicalDefenseMode:options('MDT')

    select_default_macro_book()
end

-- Elements for skillchain names
    skillchain_elements = {}
    skillchain_elements.Light = S{'Light','Fire','Wind','Lightning'}
    skillchain_elements.Darkness = S{'Dark','Ice','Earth','Water'}
    skillchain_elements.Fusion = S{'Light','Fire'}
    skillchain_elements.Fragmentation = S{'Wind','Lightning'}
    skillchain_elements.Distortion = S{'Ice','Water'}
    skillchain_elements.Gravitation = S{'Dark','Earth'}
    skillchain_elements.Transfixion = S{'Light'}
    skillchain_elements.Compression = S{'Dark'}
    skillchain_elements.Liquification = S{'Fire'}
    skillchain_elements.Induration = S{'Ice'}
    skillchain_elements.Detonation = S{'Wind'}
    skillchain_elements.Scission = S{'Earth'}
    skillchain_elements.Impaction = S{'Lightning'}
    skillchain_elements.Reverberation = S{'Water'}

-- Define sets and vars used by this job file.
function init_gear_sets()
--------------------------------------
-- Start defining the sets
--------------------------------------
-- Precast Sets
    sets.WSDayBonus = {}

-- add here to the ws list those you want moonshade on when less than 3000tp
    moonshade_WS = S{"Resolution", "Torcleaver", "Cross Reaper", "Quietus", "Entropy", "Insurgency", "Savage Blade", "Vorpal Blade", "Requiescat", "Sanguine Blade"}

-- Precast sets to enhance JAs
    sets.precast.JA['Diabolic Eye'] = {}
    sets.precast.JA['Arcane Circle'] = {}
    sets.precast.JA['Nether Void'] = {}
    sets.precast.JA['Souleater'] = {}
    sets.precast.JA['Weapon Bash'] = {}
    sets.precast.JA['Last Resort'] = {back="Ankou's Mantle",feet="Fallen's Sollerets"}
    sets.precast.JA['Dark Seal'] = {head="Fallen's Burgeonet"}
    sets.precast.JA['Blood Weapon'] = {body="Fallen's Cuirass"}

    sets.buff.Doom = {waist="Gishdubar sash",ring1="Saida Ring",ring2="Saida Ring"}

    Ankou={}
    Ankou.WSDSTR=   { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
    Ankou.DA=       { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
    Ankou.WSDVIT=   { name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
    Ankou.ACC=      { name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}

-- Precast Sets
    sets.precast.FC = {}

-- Specific spells
    sets.midcast.Utsusemi = set_combine(sets.precast.FC,{
        ammo="Staunch Tathlum",
        neck="Willpower Torque",
        ring2="Evanescence Ring",})

    sets.midcast.Endark = {
    ammo="Staunch Tathlum",
    head="Flam. Zucchetto +2",
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    hands={ name="Fall. Fin. Gaunt.", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Wayfarer Clogs",
    neck={ name="Jeweled Collar", augments={'"Fast Cast"+1','MP recovered while healing +1','INT+2',}},
    waist="Sanctuary Obi",
    left_ear="Abyssal Earring",
    right_ear="Hecate's Earring",
    left_ring={ name="Diamond Ring", augments={'MND+1',}},
    right_ring="Diamond Ring",
    }

    sets.midcast['Endark II'] = set_combine(sets.midcast.Endark, {})

    sets.midcast['Dread Spikes'] = {
    head="Flam. Zucchetto +2",
    body={ name="Yorium Cuirass", augments={'DEF+17','Spell interruption rate down -8%','Phys. dmg. taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    left_ear="Bloodgem Earring",
    right_ear="Thureous Earring",
    left_ring="Moonbeam Ring",
    right_ring="Meridian Ring",
    back="Moonbeam Cape",
}

    sets.midcast['Elemental Magic'] = {
    ammo="Staunch Tathlum",
    head="Flam. Zucchetto +2",
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    hands={ name="Fall. Fin. Gaunt.", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Sanctuary Obi",
    left_ear="Abyssal Earring",
    right_ear="Hecate's Earring",
    left_ring={ name="Diamond Ring", augments={'MND+1',}},
    right_ring="Diamond Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.midcast['Enfeebling Magic'] = {
    ammo="Staunch Tathlum",
    head="Flam. Zucchetto +2",
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    hands={ name="Fall. Fin. Gaunt.", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Sanctuary Obi",
    left_ear="Moldavite Earring",
    right_ear="Hecate's Earring",
    left_ring={ name="Diamond Ring", augments={'MND+1',}},
    right_ring="Diamond Ring",
    }

    sets.midcast.DarkMagic = {
    ammo="Staunch Tathlum",
    head="Flam. Zucchetto +2",
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    hands={ name="Fall. Fin. Gaunt.", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Sanctuary Obi",
    left_ear="Abyssal Earring",
    right_ear="Hecate's Earring",
    left_ring={ name="Diamond Ring", augments={'MND+1',}},
    right_ring="Diamond Ring",
    }

    sets.midcast.Stun = set_combine(sets.midcast.DarkMagic, {
        neck={ name="Jeweled Collar", augments={'"Fast Cast"+1','MP recovered while healing +1','INT+2',}},
        waist="Eschan Stone",
        legs="Eschite cuisses",
        })

    sets.midcast.Absorb = set_combine(sets.midcast.DarkMagic, {
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}}
        )

    sets.midcast.Drain = {
    ammo="Staunch Tathlum",
    head="Flam. Zucchetto +2",
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    hands={ name="Fall. Fin. Gaunt.", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Sanctuary Obi",
    left_ear="Abyssal Earring",
    right_ear="Hecate's Earring",
    left_ring={ name="Diamond Ring", augments={'MND+1',}},
    right_ring="Diamond Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.midcast.Aspir = set_combine(sets.midcast.Drain, {})

-- Weaponskill sets
-- FOR ANY WS NOT DEFINED WILL USE BELOW
sets.precast.WS = {
    ammo="Hagneia Stone",
    head="Flam. Zucchetto +2",
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    legs="Sulevi. Cuisses +1",
    feet="Sulev. Leggings +2",
    neck="Chivalrous Chain",
    waist="Prosilio Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Rajas Ring",
    right_ring="Thundersoul Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

-------------------------------------------------------------- SCYTHE -----------------------------------------------------------------------
-- Stat Modifier:   40% STR / 40% INT   fTP:    2.75
--Relic Aftermath: 10% Equipment Haste (+102/1024) AG 10% Ability
    sets.precast.WS['Catastrophe'] = {
        ammo="Seething Bomblet",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Prosilio Belt +1",
        left_ear="Cessance earring",
        right_ear="Brutal Earring",
        left_ring="Ifrit Ring +1",
        right_ring="Ifrit Ring +1",
        }

    sets.precast.WS['Catastrophe'].Acc = set_combine(sets.precast.WS['Catastrophe'], {
        right_ear="Telos Earring",
        left_ring="Petrov Ring",
        right_ring="Cacoethic ring",
        })

-- Delivers a two-hit attack. Damage varies with TP.
-- Stat Modifier:   60% STR / 60% MND fTP:  2.0 4.0 7.0
    sets.precast.WS['Cross Reaper'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS['Cross Reaper'].Acc = set_combine(sets.precast.WS['Cross Reaper'], {
        right_ear="Telos Earring",
        left_ring="Cacoethic Ring",})

-- Delivers a triple damage attack that ignores target's defense. Amount ignored varies with TP.
--Stat Modifier:    60% STR / 60% MND Defense ignored:  10% 30% 50% fTP:    3.0
    sets.precast.WS['Quietus'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS['Quietus'].Acc = set_combine(sets.precast.WS['Quietus'], {})

-- Delivers a fourfold attack. Converts some of the damage into MP. Damage varies with TP.
-- Stat Modifier:   73~85% INT fTP: 0.75    1.25    2.0
-- This weaponskill has its fTP transferred across all hits, making Elemental
-- Gorgets and Elemental Belts excellent neck and waist gear options.
    sets.precast.WS['Entropy'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS['Entropy'].Acc = set_combine(sets.precast.WS['Entropy'], {})

--Delivers a fourfold attack. Damage varies with TP.
-- Stat Modifier:   20% STR / 20% INT fTP:  0.5 3.25    6.0
    sets.precast.WS['Insurgency'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS['Insurgency'].Acc = set_combine(sets.precast.WS['Insurgency'], {
        right_ear="Telos Earring",
        left_ring="Cacoethic Ring",})

-------------------------------------------------------------------- SWORD ---------------------------------------------------------------------------------
-- Stat Modifier:   50% MND / 30% STR   fTP:    2.75
-- dSTAT:   (pINT-mINT)*2
    sets.precast.WS['Sanguine Blade'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

-- Delivers an aerial attack comprised of two hits. Damage varies with TP.
-- Stat Modifier:   50% MND / 50% STR          fTP: 4.0 10.25   13.75
    sets.precast.WS['Savage Blade'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

-- Delivers a fivefold attack, non-elemental damage. Attack power varies with TP.
-- Stat Modifier:   73~85% MND
    sets.precast.WS['Requiescat'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

-- Delivers a fourfold attack. Chance of critical hit varies with TP.
-- Stat Modifier:   60% STR fTP:    1.375
-- This weaponskill has its fTP transferred across all hits, making Elemental Gorgets
-- and Elemental Belts excellent neck and waist gear options.
    sets.precast.WS['Vorpal Blade'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

----------------------------------------------------------------- GREAT SWORD ---------------------------------------------------------------------------
-- Description: Deals triple damage. Damage varies with TP.
-- Stat Modifier:   80% VIT fTP:    4.75    7.5 10
    sets.precast.WS['Torcleaver'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS['Torcleaver'].Acc = set_combine(sets.precast.WS['Torcleaver'], {
        ammo="Seething bomblet",
        left_ear="Cessance earring",
        right_ear="Telos Earring",})

--Relic Aftermath: +5% Critical Hit Rate
-- Stat Modifier:   40% STR / 40% VIT   fTP:    3.0
    sets.precast.WS['Scourge'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS['Scourge'].Acc = set_combine(sets.precast.WS['Scourge'], {
        left_ear="Cessance earring",
        right_ear="Telos Earring",
        left_ring="Cacoethic Ring",
        right_ring="Begrudging Ring",})

--Description:  Delivers a fivefold attack. Damage varies with TP.
--Stat Modifier:    73~85% STR fTP: 0.71875 1.5 2.25
-- This weaponskill has its fTP transferred across all hits, making
-- Elemental Gorgets and Elemental Belts excellent neck and waist gear options.
    sets.precast.WS['Resolution'] = {
        ammo="Hagneia Stone",
        head="Flam. Zucchetto +2",
        body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
        legs="Sulevi. Cuisses +1",
        feet="Sulev. Leggings +2",
        neck="Chivalrous Chain",
        waist="Prosilio Belt +1",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Thundersoul Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Resolution'], {
        hands="Sulevia's gauntlets +1",
        left_ear="Mache earring",
        right_ear="Telos earring",
        left_ring="Cacoethic Ring",
        right_ring="Apate Ring",
        })

-- Idle sets
    sets.idle = {
        ammo="Staunch Tathlum",
        head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Weapon skill damage +3%','STR+3','Attack+3',}},
        body={ name="Yorium Cuirass", augments={'DEF+17','Spell interruption rate down -8%','Phys. dmg. taken -3%',}},
        hands={ name="Yorium Gauntlets", augments={'DEF+22','Enemy crit. hit rate -3','Damage taken-3%',}},
        legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="Sulev. Leggings +2",
        neck="Sanctity Necklace",
        waist="Flume Belt",
        left_ear="Abyssal Earring",
        right_ear="Ethereal Earring",
        left_ring="Moonbeam Ring",
        right_ring="Chirich Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        }

    sets.enmity = {
        neck="Sanctity necklace",
        ammo="Staunch Tathlum",
        ear1="Infused Earring",
        ear2="Genmei Earring",
        body="Lugra cloak +1",
        hands="Sulevia's gauntlets +1",
        ring1="Defending Ring",
        ring2="Shneddick Ring",
        back="Agema cape",
        waist="Flume belt",
        legs="Sulevia's cuisses +1",
        feet="Amm greaves"}

    sets.resting = set_combine(sets.idle, {})

-- Defense sets
    sets.defense.PDT = {
        ammo="Staunch Tathlum",
        head="Loess Barbuta +1",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Amm greaves",
        neck="Loricate Torque",
        waist="Flume belt",
        right_ear="Eabani Earring",
        left_ear="Static earring",
        left_ring="Shadow Ring",
        right_ring="Defending Ring",
        back="Shadow mantle",}

    sets.defense.Reraise = set_combine(sets.defense.PDT,{head="Twilight Helm",body="Twilight Mail",})

    sets.defense.MDT = set_combine(sets.defense.PDT,{
        back="Agema cape",})

-- Engaged sets
-- rag with 20 stp on ws, need 57 stp on tp /sam for 5 hit
-- 20 / 23 stp tp will give 6 hit
-- 1111 acc 58 stp
    sets.engaged.Rag = {
    ammo="Hagneia Stone",
    head="Flam. Zucchetto +2",
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    hands={ name="Acro Gauntlets", augments={'Accuracy+23','"Dbl.Atk."+3','Crit. hit damage +2%',}},
    legs="Sulevi. Cuisses +1",
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Ioskeha Belt",
    left_ear="Abyssal Earring",
    right_ear="Brutal Earring",
    left_ring="Rajas Ring",
    right_ring="Chirich Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

--1200 acc 25 stp, needs 27 stp more without acc loss
    sets.engaged.RagACC = set_combine(sets.engaged.Rag, {
        ammo="Seething Bomblet",
        body="Emicho haubert",
        hands="Emicho Gauntlets",
        feet="Sulev. Leggings +1",
        neck="Subtlety spectacles",
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ring="Etana Ring",
        right_ring="Cacoethic Ring",
        })

-- 4 hit if ws with 21 stp /sam requires 75 stp in tp gear, only 28stp if 5 hit w/ 21 on ws
-- 16 / 77  14/78
--currently have 78 stp
    sets.engaged.Apoc = {
        ammo="Ginsen",
        hands="Emicho Gauntlets",
        neck="Lissome Necklace",
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ear="Cessance earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        }

--1196 acc (using rag) 31 stp
    sets.engaged.ApocACC = set_combine(sets.engaged.Apoc, {
        ammo="Seething Bomblet",
        body="Emicho haubert",
        hands="Emicho Gauntlets",
        feet="Sulev. Leggings +1",
        neck="Subtlety spectacles",
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ear="Cessance Earring",
        left_ring="Etana Ring",
        right_ring="Cacoethic Ring",
        })

    sets.engaged.DW = {
        ammo="Ginsen",
        hands="Sulev. Guantlets +1",
        neck="Lissome Necklace",
        body="Emicho haubert",
        waist="Ioskeha belt",
        right_ear="Suppanomimi",
        left_ear="Eabani earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        }

    sets.engaged.DWACC = set_combine(sets.engaged.DW, {
        ammo="Seething bomblet",
        hands="Emicho Gauntlets",
        neck="Subtlety Spec.",
        })
end

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.skill == 'Elemental Magic' then
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(sets.midcast['Elemental Magic'], {waist="Hachirin-no-Obi"})
        end
    end
    if S{"Torcleaver","Resolution","Catastrophe","Scourge","Cross Reaper"}:contains(spell.english) and (spell.element==world.day_element or spell.element==world.weather_element) then
        equip({head="Gavialis Helm"})
    end
    if S{"Drain","Drain II","Drain III", "Aspir", "Aspir II", "Aspir III"}:contains(spell.english) and (spell.element==world.day_element or spell.element==world.weather_element) then
        equip({waist="Hachirin-no-obi"})
    end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' then
        if world.time >= 17*60 or world.time < 7*60 then -- Dusk to Dawn time.
            equip({ear1="Lugra Earring +1", ear2="Lugra Earring"})
        end
    end
    if spell.action_type=="Magic" and buffactive.Silence then
        eventArgs.cancel = true
        send_command('input /item "Echo Drops" <me>')
    end
    if spell.type=='WeaponSkill' then
        if moonshade_WS:contains(spell.english) and player.tp<2850 then
            equip({ear2="Moonshade Earring"})
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if buff:lower()=='terror' or buff:lower()=='petrification' or buff:lower()=='sleep' or buff:lower()=='stun' then
        if gain then
            equip(sets.defense.PDT)
        elseif not gain then
            handle_equipping_gear(player.status)
        end
    end
    if state.Buff[buff] ~= nil then
        state.Buff[buff] = gain
    end
    if buff:lower()=='sleep' then
        if gain and player.hp > 120 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep
            equip({neck="Berserker's Torque"})
        elseif not gain then -- Take Berserker's off
            handle_equipping_gear(player.status)
        end
    end
        if buff:lower()=='Reive Mark' then
        if gain then
            equip({neck="Adoulin's Refuge +1"}) disable('neck')
        else
            enable('neck')
        end
    end
end

ninjaTools = {
        Utsusemi = S{"Shihei",},--"Shikanofuda"
        Hojo = S{"Kaginawa",},--"Chonofuda"
        Migawari = S{"Mokujin",},
        Kakka = S{"Ryuno",},
        Tonko = S{"Shinobi-tabi",},
        Kurayami = S{"Sairui-Ran",},
        Raiton = S{"Hiraishin",},
        Hyoton = S{"Tsurara",},
        Monomi = S{"Sanjaku",},
    }

function job_precast(spell, action, spellMap, eventArgs)
    if spell.type=="Ninjutsu" then check_tools(spell) end
end
function check_tools(spell)
    for prefix,tools in pairs(ninjaTools) do
        if spell.english:startswith(prefix) then
            for tool in tools:it() do
                if not player.inventory[tool] then
                    add_to_chat(100,'WARNING: You are out of '..tool..'.')
                elseif player.inventory[tool].count < 10 then
                    add_to_chat(100,'WARNING: You are low on '..tool..'. '..player.inventory[tool].count..' remaining.')
                end
            end
        end
    end
end

function customize_melee_set(meleeSet)
    if state.Buff.Sleep and player.hp > 120 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep
        meleeSet = set_combine(meleeSet,{neck="Berserker's Torque"})
    end
    if state.Buff.Doom then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
    end
    return meleeSet
end

function customize_idle_set(idleSet)
    if state.Buff.Doom then
        idleSet = set_combine(idleSet, sets.buff.Doom)
    end
    if S{"Eastern Adoulin","Western Adoulin"}:contains(world.area) then
        idleSet = set_combine(idleSet,{body="Councilor's Garb", head="Jumalik helm"})
    end
    return idleSet
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
set_macro_page(1, 9)
end
Top Show Op
Reply
Post As

levelxplane
Bold
Italic
Underline
Strike
---------------
Picture
Link
Youtube
Video
---------------
Bulleted list
Numeric list
List item
Table generator
---------------
Quotes
Code
Spoiler
---------------
Clean
 Forum Rules
