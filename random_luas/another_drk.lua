-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job. Generally should not be modified.

                            --**** READ ME ****--

-- THESE ARE UNIQUE FEATURES TO THIS LUA, IF YOU DO NOT LIKE THEM FEEL FREE TO EDIT ------------


                            --**** JOB ABILITY ***__

-- If you have DS/NV on AND under 600(med) tp you will swap weapon to misanthropy and use duration helm for 4:30 drain3
-- If you are over 600 tp you will still swap to higher drain set, but not swap your weapon
-- SOULEATER will lock souleater helm for its duration, feel free to customize this for your SE gear in sets.
-- Both on with 8k+hp, Souleater and BLOODWEAPON will force a change to Daconmania (best weapon when both are up)
-- Arcane circle will force founder's body into your melee sets for the killer effects bonus-- dont use if not arcane mobs

                            --**** Utility items ****---

-- cast a spell when silenced (try to) and it will instead use an echo drop
-- Will alert in party chat when your doomed, and swap to doom set and try to use a holy water
-- If SLEPT will equip vim torque when your engaged, can change to berzerkers/frenzy also for same effect
-- will use adolin body when in correct towns for +25% mov
-- accounts for reieve neck you chose, while in a reive (never tested)
-- cancels Ws if your over 5 yalms (will still miss on small mobs)

                            --**** GEAR SPECIFIC ****--

-- Lugra is used at night, lugra+moonshade for corresponding ws
-- add ws you want on moonshade earring to have your LEFT EAR be moonshade when under 2800tp else it will fall back to normal
-- when your hp drops BELOW 700 you will equip a special -dt set
-- auto equips correct Fotia Obi if day == spell.


                            --**** SETS ****--

                            -- scythe atm is under constructions
                            -- need cor roll rule for lucky sams
                            -- AM sets
                            -- possibly have an auto detect for weapon, or 2nd toggle

-- has an enmity toggle for casting stun/abs tp
-- You must manually cycle melee sets, you can add more to line 56 which says : for example adding a "Lib" set would look like
-- state.OffenseMode:options('Rag', 'RagACC', 'RagQA', 'Apoc', 'ApocACC', "Omen", "Lib")


                            --**** MY Personal Stats ******
--              low acc         high acc
--Calad         1150            1202
--Rag           1210            1262
--ws base on calad-----------------------
--Torc          1184            1248
--reso          1191            1228
--scor/rag      1226            1266
------------------------------------------
--anguta
--apoc4         1220            1258
--apoc5         1219            1273
--lib
--ws based on apoc -----------------------
--Cr            1247            1275
--cata          1235            1349
--entro         1256            1293
--insur         1261            1286
--quit          1239            1275

-- MAXACC set has 1318 w/ rag
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

-- Load and initialize the include file.
    include('Mote-Include.lua')
end
-- this is my personal aug file, comment it out
include('Include/AugmentedGear.lua')

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job. Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent. Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Rag', 'RagACC', 'Apoc4hit', 'Apoc4hitACC', 'Apoc5hit', 'Apoc5hitACC', 'MAXACC')
    state.HybridMode:options ('Reraise')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'Enmity')
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
    sets.WSDayBonus = {head="Gavialis Helm"}

-- add here to the ws list those you want moonshade on when less than 3000tp
    moonshade_WS = S{"Resolution", "Torcleaver", "Cross Reaper", "Quietus", "Entropy", "Insurgency", "Savage Blade", "Vorpal Blade", "Requiescat", "Sanguine Blade"}

-- Precast sets to enhance JAs
    sets.precast.JA['Diabolic Eye'] = {hands="Fallen's finger gauntlets +1"}
    sets.precast.JA['Arcane Circle'] = {feet="Ignominy Sollerets +2"}
    sets.precast.JA['Nether Void'] = {legs="Heath. Flanchard +1"}
    sets.precast.JA['Souleater'] = {head="Ignominy Burgonet +3"}
    sets.precast.JA['Weapon Bash'] = {hands="Ignominy Gauntlets +2"}
    sets.precast.JA['Last Resort'] = {back="Ankou's Mantle",feet="Fallen's Sollerets"}
    sets.precast.JA['Dark Seal'] = {head="Fallen's Burgeonet +1"}
    sets.precast.JA['Blood Weapon'] = {body="Fallen's Cuirass +1"}

    Ankou={}
    Ankou.WSDSTR=   { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
    Ankou.DA=       { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
    Ankou.WSDVIT=   { name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}}
    Ankou.ACC=      { name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}
    Ankou.FC=       { name="Ankou's Mantle", augments={'Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}
    Ankou.STP=      { name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}}

-- Precast Sets
    sets.precast.FC = {
        ammo="Staunch Tathlum",
        head="Carmine Mask +1", --14
        neck="Voltsurge Torque", --4
        ear1="Loquacious Earring", --2
        ear2="Enchanter Earring +1", --2
        body=OdysBody.FC, --9
        hands="Leyline Gloves", --8
        ring1="Kishar Ring", --4
        ring2="Rahab Ring", --2
        back=Ankou.FC, --10
        waist="Tempus Fugit",
        legs=OdysLegs.FC, --8
        feet=OdysFeet.FC,} -- 9
        --72 FC

-- Specific spells
    sets.midcast.Utsusemi = set_combine(sets.precast.FC,{})

    sets.midcast.Endark = {
        head="Ignominy Burgonet +3",
        neck="Erra Pendant",
        ear2="Dark Earring",
        ear1="Loquacious Earring",
        body="Carmine Scale Mail",
        hands="Fallen's finger gauntlets +1",
        left_ring="Stikini Ring",
        right_ring="Evanescence Ring",
        waist="Casso sash",
        legs="Eschite cuisses",
        feet=OdysFeet.FC,
        back="Niht Mantle",}

    sets.midcast['Endark II'] = set_combine(sets.midcast.Endark, {})

    -- has 3k hp
    sets.midcast['Dread Spikes'] = {
        ammo="Egoist's Tathlum",
        head=OdysHead.WSD,
        body="Heathen's Cuirass +1",
        hands="Emicho Gauntlets",
        legs="Ignominy Flanchard +3",
        feet="Amm greaves",
        neck="Sanctity necklace",
        waist="Eschan Stone",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Meridian Ring",
        right_ring="Moonbeam Ring",
        back="Moonbeam Cape",}

    sets.midcast['Elemental Magic'] = {
        ammo="Pemphredo Tathlum",
        head="Jumalik Helm",
        body="Carmine Scale Mail",
        hands="Leyline gloves",
        legs="Eschite Cuisses",
        feet="Ignominy Sollerets +2",
        neck="Sanctity necklace",
        waist="Eschan Stone",
        left_ear="Hecate's Earring",
        right_ear="Friomisi Earring",
        left_ring="Stikini Ring",
        right_ring="Shiva Ring",
        back=Ankou.FC,}

    sets.midcast['Enfeebling Magic'] = {
        ammo="Pemphredo Tathlum",
        head="Carmine Mask +1",
        body="Ignominy Cuirass +3",
        hands="Leyline Gloves",
        legs="Eschite cuisses",
        feet="Ignominy Sollerets +2",
        neck="Sanctity necklace",
        waist="Eschan Stone",
        left_ear="Enchntr. Earring +1",
        right_ear="Hermetic Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back=Ankou.FC,}

    sets.midcast.DarkMagic = {
        ammo="Pemphredo Tathlum",
        head="Ignominy Burgonet +3",
        body="Carmine Scale Mail",
        hands="Fallen's finger gauntlets +1",
        legs="Eschite cuisses",
        feet="Ignominy Sollerets +2",
        neck="Erra Pendant",
        waist="Casso sash",
        left_ear="Hermetic Earring",
        right_ear="Dark Earring",
        left_ring="Stikini Ring",
        right_ring="Evanescence Ring",
        back="Niht Mantle",}

    sets.midcast.Stun = set_combine(sets.midcast.DarkMagic, {
        head="Carmine Mask +1",
        hands="Leyline Gloves",
        right_ring="Regal Ring",
        waist="Eschan Stone",
        legs="Eschite cuisses",
        feet="Ignominy Sollerets +2",
        back=Ankou.FC})

    sets.midcast['Absorb-STR'] = {
        ammo="Pemphredo Tathlum",
        head="Ignominy Burgonet +3",
        body="Carmine Scale Mail",
        legs="Eschite cuisses",
        feet="Ignominy Sollerets +2",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Hermetic Earring",
        right_ear="Dark Earring",
        right_ring="Regal Ring",
        hands="Pavor Gauntlets",
        left_ring="Kishar Ring",
        back="Chuparrosa Mantle",}

    sets.midcast['Absorb-DEX'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-VIT'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-AGI'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-INT'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-MND'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-CHR'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-ACC'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-Attri'] = sets.midcast['Absorb-STR']
    sets.midcast['Absorb-TP'] = sets.midcast['Absorb-STR']

    sets.midcast.Drain = {
        ammo="Pemphredo Tathlum",
        neck="Erra Pendant",
        left_ear="Hermetic Earring", -- higer macc earring if you got
        right_ear="Hirudinea Earring",
        head="Pixie Hairpin +1",
        body="Carmine Scale Mail",
        hands="Fallen's finger gauntlets +1",
        left_ring="Archon Ring", -- use archon if you have it
        right_ring="Evanescence Ring",
        back="Niht Mantle",
        waist="Austerity belt +1",
        legs="Eschite cuisses",
        feet="Ignominy Sollerets +2"}

    sets.midcast.Aspir = set_combine(sets.midcast.Drain, {})

    sets.Enmity = {
        ammo="Staunch Tathlum",
        head="Loess Barbuta +1", --14
        body="Emet Harness +1", --10
        hands="Macabre Gauntlets +1", --7
        legs=OdysLegs.STP, -- 4
        feet="Eschite Greaves", --15
        neck="Warder's Charm", --8
        waist="Trance Belt", -- 4
        left_ear="Friomisi Earring", --2
        right_ear="Eabani Earring",
        left_ring="Begrudging Ring", --5
        right_ring="Petrov Ring", --4
        back="Agema Cape"} -- 5
        -- enm+83

    --toggle enmity so that all casting sets have +enmity for tanking
    sets.midcast.Stun.Enmity = set_combine(sets.Enmity, {})
    sets.midcast['Absorb-TP'].Enmity = set_combine(sets.Enmity, {})
    sets.midcast['Elemental Magic'].Enmity = set_combine(sets.Enmity, {})
    sets.midcast['Enfeebling Magic'].Enmity = set_combine(sets.Enmity, {})

-- Weaponskill sets
-- FOR ANY WS NOT DEFINED WILL USE BELOW
sets.precast.WS ={
        ammo="Seething Bomblet",
        head="Argosy Celata +1",
        body="Ignominy Cuirass +3",
        hands="Argosy Mufflers +1",
        legs="Ignominy Flanchard +3",
        feet="Argosy Sollerets +1",
        neck="Fotia Gorget",
        waist="Grunfeld rope",
        left_ear="Cessance earring",
        right_ear="Telos earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.WSDSTR}

-------------------------------------------------------------- SCYTHE -----------------------------------------------------------------------
-- Stat Modifier:   40% STR / 40% INT   fTP:    2.75
--Relic Aftermath: 10% Equipment Haste (+102/1024) AG 10% Ability
    sets.precast.WS['Catastrophe'] = {
        ammo="Knobkierrie",
        head=OdysHead.WSD,
        body="Ignominy Cuirass +3",
        hands=OdysHands.WSDSTR,
        legs=OdysLegs.WSDSTR2,
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Brutal earring",
        right_ear="Ishvara Earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.WSDSTR}

    sets.precast.WS['Catastrophe'].Acc = set_combine(sets.precast.WS['Catastrophe'], {
        head="Ignominy Burgonet +3",
        hands=OdysHands.WSDSTR,
        legs="Ignominy Flanchard +3",
        left_ear="Cessance earring",
        right_ear="Telos Earring",
        back=Ankou.WSDSTR})

-- Delivers a two-hit attack. Damage varies with TP.
-- Stat Modifier:   60% STR / 60% MND fTP:  2.0 4.0 7.0
    sets.precast.WS['Cross Reaper'] = {
        ammo="Knobkierrie",
        head="Ignominy Burgonet +3",
        body="Ignominy Cuirass +3",
        hands=OdysHands.WSDSTR,
        legs="Ignominy Flanchard +3",
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Brutal earring",
        right_ear="Ishvara earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.WSDSTR}

    sets.precast.WS['Cross Reaper'].Acc = set_combine(sets.precast.WS['Cross Reaper'], {
        head="Ignominy Burgonet +3",
        hands="Ignominy Gauntlets +2",
        legs="Ignominy Flanchard +3",
        left_ear="Cessance Earring",
        right_ear="Telos earring",})

-- Delivers a triple damage attack that ignores target's defense. Amount ignored varies with TP.
--Stat Modifier:    60% STR / 60% MND Defense ignored:  10% 30% 50% fTP:    3.0
    sets.precast.WS['Quietus'] = {
        ammo="Knobkierrie",
        head=OdysHead.WSD,
        body="Ignominy Cuirass +3",
        hands=OdysHands.WSDSTR,
        legs=OdysLegs.WSDSTR2,
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Brutal earring",
        right_ear="Ishvara earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.WSDSTR}

    sets.precast.WS['Quietus'].Acc = set_combine(sets.precast.WS['Quietus'], {
        head=ValoHead.WSD,
        hands=OdysHands.WSDSTR,
        legs=OdysLegs.WSDSTR,
        right_ear="Telos Earring",
        left_ear="Cessance earring",})

-- Delivers a fourfold attack. Converts some of the damage into MP. Damage varies with TP.
-- Stat Modifier:   73~85% INT fTP: 0.75    1.25    2.0
    sets.precast.WS['Entropy'] = {
        ammo="Pemphredo Tathlum",
        head="Ignominy Burgonet +3",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +2",
        legs="Ignominy Flanchard +3",
        feet="Argosy Sollerets +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Cessance earring",
        right_ear="Telos Earring",
        left_ring="Shiva Ring",
        right_ring="Shiva Ring",
        back=Ankou.ACC}

    sets.precast.WS['Entropy'].Acc = set_combine(sets.precast.WS['Entropy'], {
        ammo="Seething Bomblet",
        back=Ankou.ACC})

--Delivers a fourfold attack. Damage varies with TP.
-- Stat Modifier:   20% STR / 20% INT fTP:  0.5 3.25    6.0
    sets.precast.WS['Insurgency'] = {
        ammo="Seething Bomblet",
        head="Ignominy Burgonet +3",
        body="Ignominy Cuirass +3",
        hands="Argosy Mufflers +1",
        legs="Ignominy Flanchard +3",
        feet="Argosy Sollerets +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Cessance earring",
        right_ear="Brutal earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.DA}

    sets.precast.WS['Insurgency'].Acc = set_combine(sets.precast.WS['Insurgency'], {
        right_ear="Telos Earring",
        back=Ankou.ACC})

-------------------------------------------------------------------- SWORD ---------------------------------------------------------------------------------
-- Stat Modifier:   50% MND / 30% STR   fTP:    2.75
-- dSTAT:   (pINT-mINT)*2
    sets.precast.WS['Sanguine Blade'] = {
        ammo="Knobkierrie",
        head="Pixie Hairpin +1",
        body="Carmine Scale Mail",
        hands="Leyline gloves",
        legs="Eschite Cuisses",
        feet="Ignominy Sollerets +2",
        neck="Sanctity necklace",
        waist="Eschan Stone",
        left_ear="Moonshade Earring",
        right_ear="Ishvara Earring",
        left_ring="Archon Ring",
        right_ring="Shiva Ring",
        back=Ankou.WSDSTR}

-- Delivers an aerial attack comprised of two hits. Damage varies with TP.
-- Stat Modifier:   50% MND / 50% STR          fTP: 4.0 10.25   13.75
    sets.precast.WS['Savage Blade'] = {
        ammo="Knobkierrie",
        head=OdysHead.WSD,
        body="Ignominy Cuirass +3",
        hands=OdysHands.WSDSTR,
        legs=OdysLegs.WSD,
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Brutal earring",
        right_ear="Ishvara Earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.WSDSTR}

-- Delivers a fivefold attack, non-elemental damage. Attack power varies with TP.
-- Stat Modifier:   73~85% MND
    sets.precast.WS['Requiescat'] = {
        ammo="Seething Bomblet",
        head="Carmine Mask +1",
        body="Ignominy Cuirass +3",
        hands="Argosy Mufflers +1",
        legs="Ignominy Flanchard +3",
        feet="Argosy Sollerets +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Cessance earring",
        right_ear="Telos earring",
        left_ring="Rufescent Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.DA}

-- Delivers a fourfold attack. Chance of critical hit varies with TP.
-- Stat Modifier:   60% STR fTP:    1.375
    sets.precast.WS['Vorpal Blade'] = {
        ammo="Seething Bomblet",
        head="Argosy Celata +1",
        body="Ignominy Cuirass +3",
        hands="Argosy Mufflers +1",
        legs="Ignominy Flanchard +3",
        feet="Thereoid greaves",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Cessance earring",
        right_ear="Telos earring",
        left_ring="Begrudging Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.DA}

----------------------------------------------------------------- GREAT SWORD ---------------------------------------------------------------------------
-- Description: Deals triple damage. Damage varies with TP.
-- Stat Modifier:   80% VIT fTP:    4.75    7.5 10
    sets.precast.WS['Torcleaver'] = {
        ammo="Knobkierrie",
        head=OdysHead.WSD,
        body="Ignominy Cuirass +3",
        hands=OdysHands.WSDVIT,
        legs=OdysLegs.WSD,
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Moonshade earring",
        right_ear="Ishvara Earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.WSDVIT}

    sets.precast.WS['Torcleaver'].Acc = set_combine(sets.precast.WS['Torcleaver'], {
        ammo="Knobkierrie",
        head="Ignominy Burgonet +3",
        hands=OdysHands.WSDVITACC,
        right_ear="Telos Earring",})

--Relic Aftermath: +5% Critical Hit Rate 15 acc
-- Stat Modifier:   40% STR / 40% VIT   fTP:    3.0
    sets.precast.WS['Scourge'] = {
        ammo="Knobkierrie",
        head=OdysHead.WSD,
        body="Ignominy Cuirass +3",
        hands=OdysHands.WSDVIT,
        legs=OdysLegs.WSDSTR,
        feet="Sulev. Leggings +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Brutal earring",
        right_ear="Ishvara Earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.WSDSTR}

    sets.precast.WS['Scourge'].Acc = set_combine(sets.precast.WS['Scourge'], {
        hands=OdysHands.WSDSTR,
        legs=OdysLegs.WSD,
        left_ear="Cessance earring",
        right_ear="Telos Earring",})

--Description:  Delivers a fivefold attack. Damage varies with TP.
--Stat Modifier:    73~85% STR fTP: 0.71875 1.5 2.25
    sets.precast.WS['Resolution'] = {
        ammo="Seething Bomblet",
        head="Argosy Celata +1",
        body="Ignominy Cuirass +3",
        hands="Argosy Mufflers +1",
        legs="Ignominy Flanchard +3",
        feet="Argosy Sollerets +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Cessance earring",
        right_ear="Telos earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.DA}


    sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Resolution'], {
        hands="Ignominy gauntlets +2",
        back=Ankou.DA})


-- Idle sets
    sets.idle = {
        neck="Sanctity necklace",
        ammo="Staunch Tathlum",
        ear1="Infused Earring",
        ear2="Genmei Earring",
        body="Lugra cloak +1",
        hands="Sulevia's gauntlets +1",
        left_ring="Defending Ring",
        right_ring="Moonbeam Ring",
        back="Moonbeam Cape",
        waist="Flume belt",
        legs="Carmine cuisses +1",
        feet="Amm greaves"}

    sets.idle.Town = {
        ammo="Knobkierrie",
        head="Argosy Celata +1",
        body="Ignominy Cuirass +3",
        hands="Argosy Mufflers +1",
        legs="Ignominy Flanchard +3",
        feet="Argosy Sollerets +1",
        neck="Loricate Torque +1",
        waist="Gishdubar Sash",
        left_ear="Cessance earring",
        right_ear="Telos earring",
        left_ring="Shneddick Ring",
        right_ring="Niqmaddu Ring",
        back="Moonbeam Cape"}

    sets.idle.Weak = {
        ammo="Egoist's Tathlum",
        head=OdysHead.WSD,
        body="Ignominy Cuirass +3",
        hands="Sulevia's Gauntlets +1",
        legs="Carmine Cuisses +1",
        feet="Amm greaves",
        neck="Sanctity necklace",
        waist="Gishdubar Sash",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Defending Ring",
        right_ring="Moonbeam Ring",
        back="Moonbeam Cape",}

    sets.resting = set_combine(sets.idle, {})

-- Defense sets
    sets.defense.PDT = {
        ammo="Staunch Tathlum",
        head="Sulevia's Mask +1",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Amm greaves",
        neck="Loricate Torque +1",
        waist="Flume belt",
        right_ear="Eabani Earring",
        left_ear="Odnowa earring +1",
        left_ring="Defending Ring",
        right_ring="Shadow Ring",
        back="Shadow mantle",}

    sets.defense.PDTLOWhp = {
        ammo="Staunch Tathlum",
        head="Sulevia's Mask +1",
        body="Sulevia's Plate. +1",
        hands="Sulev. Gauntlets +1",
        legs="Sulevi. Cuisses +1",
        feet="Amm greaves",
        neck="Loricate Torque +1",
        waist="Tempus Fugit",
        right_ear="Telos Earring",
        left_ear="Odnowa earring +1",
        left_ring="Defending Ring",
        right_ring="Niqmaddu Ring",
        back="Shadow mantle",}

    sets.defense.Reraise = set_combine(sets.defense.PDT,{head="Twilight Helm",body="Twilight Mail",})

    sets.defense.MDT = set_combine(sets.defense.PDT,{
        back="Moonbeam Cape",})

-- Engaged sets
-- rag with 20 stp on ws, need 57 stp on tp /sam for 5 hit
-- 14 / 58  61/5

    sets.engaged.Rag = {
        ammo="Ginsen",
        head="Argosy Celata +1",
        hands="Argosy Mufflers +1",
        legs=OdysLegs.STP,
        feet=ValoFeet.STPACC,
        neck="Ainia Collar",
        body=ValoBody.DA,
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ear="Brutal earring",
        left_ring="Petrov Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.ACC}

    sets.engaged.RagACC = {
        ammo="Ginsen",
        head="Argosy Celata +1",
        body=ValoBody.DA,
        hands="Emicho Gauntlets",
        legs=OdysLegs.STP,
        feet=ValoFeet.STPACC,
        neck="Lissome necklace",
        waist="Ioskeha belt",
        left_ear="Cessance earring",
        right_ear="Telos Earring",
        left_ring="Chirich Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.ACC}

-- for 4 hit ws/tp stp values : 0/82, 5/81, 14/78 , 15/77 , 17/76 , 21/75
    sets.engaged.Apoc4hit = {
        ammo="Ginsen", --3
        head="Argosy Celata +1", --7
        hands=ValoHands.STP, --7
        legs=OdysLegs.STP, --11
        feet=ValoFeet.STPACC, --12
        neck="Ainia Collar", --8
        body=ValoBody.STP, --10
        waist="Ioskeha belt",
        right_ear="Telos Earring", --5
        left_ear="Cessance earring", --3
        left_ring="Petrov Ring", --5
        right_ring="Niqmaddu Ring",
        back=Ankou.STP} --10
        -- stp 81

    sets.engaged.Apoc4hitACC = {
        ammo="Seething Bomblet",
        head="Argosy Celata +1", --7
        hands="Emicho Gauntlets", --6
        legs=OdysLegs.STP, --11
        feet=ValoFeet.STPACC, --12
        neck="Lissome Necklace", --4
        body=ValoBody.STP, --10
        waist="Kentarch belt +1",--3
        right_ear="Telos Earring", --5
        left_ear="Cessance earring", --3
        left_ring="Petrov Ring", --5
        right_ring="Chirich Ring",--5
        back=Ankou.STP} --10
        -- stp 81

-- 5 hit: ws/tp stp value : 5/32 only
    sets.engaged.Apoc5hit = {
        ammo="Ginsen", --3
        head="Flamma Zucchetto +1", --5
        hands="Argosy Mufflers +1", --6
        legs="Ignominy Flanchard +3",
        feet="Flamma Gambieras +1", --5
        neck="Lissome Necklace", --4
        body=ValoBody.DA, --3
        waist="Ioskeha belt",
        right_ear="Brutal Earring", --1
        left_ear="Cessance earring", --3
        left_ring="Petrov Ring", --5
        right_ring="Niqmaddu Ring",
        back=Ankou.ACC}
        -- stp 35

        -- 5 hit: ws/tp stp value : 5/32 only
    sets.engaged.Apoc5hitACC = {
        ammo="Ginsen", --3
        head="Flamma Zucchetto +1", --5
        hands="Emicho Gauntlets", --6
        legs="Ignominy Flanchard +3",
        feet="Flamma Gambieras +1", --5
        neck="Lissome Necklace", --4
        body=ValoBody.DA, --3
        waist="Ioskeha belt",
        right_ear="Telos Earring", --5
        left_ear="Cessance earring", --3
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.ACC}
        -- stp 34

    sets.engaged.MAXACC = {
        ammo="Seething Bomblet",
        head="Ignominy Burgonet +3",
        body="Ignominy Cuirass +3",
        hands="Ignominy Gauntlets +2",
        legs="Ignominy Flanchard +3",
        feet=ValoFeet.STPACC,
        neck="Lissome Necklace",
        waist="Ioskeha belt",
        right_ear="Telos Earring",
        left_ear="Cessance Earring",
        left_ring="Regal Ring",
        right_ring="Niqmaddu Ring",
        back=Ankou.STP}

    sets.Reive = {neck="Adoulin's Refuge +1"}
    sets.SEBW = {main="Dacnomania", head="Ignominy Burgonet +3"}
    sets.MAXDrain = {main="Misanthropy", feet="Yorium Sabatons"}
    sets.SE = {head="Ignominy Burgonet +3"}
    sets.buff.Doom = {legs="Shabti Cuisses +1", ring1="Saida Ring", ring2="Saida Ring", waist="Gishdubar Sash"} -- could use holy water rings also

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
    if buffactive['Dark Seal'] and buffactive['Nether Void'] and S{"Drain II","Drain III"}:contains(spell.english) and player.tp<600 then
        equip(sets.MAXDrain)
        add_to_chat(100,'WARNING: Misanthropy is on now ***** manually remove it after Drain3 ******************')
    end
    if buffactive['Dark Seal'] and S{"Drain III"}:contains(spell.english)then
        equip({head="Fallen's Burgeonet +1", feet="Yorium Sabatons"})
    end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' then
        if world.time >= 17*60 or world.time < 7*60 then -- Dusk to Dawn time.
            equip({ear2="Lugra Earring +1", ear1="Lugra Earring"})
        end
    end
    if spell.type == 'WeaponSkill' and buffactive['Arcane Circle'] then
        equip({body="Founder's Breastplate"})
    end
    if spell.action_type=="Magic" and buffactive.Silence then
        eventArgs.cancel = true
        send_command('input /item "Echo Drops" <me>')
    end
    if spell.type=='WeaponSkill' then
        if moonshade_WS:contains(spell.english) and player.tp<2900 then
            equip({ear1="Moonshade Earring"})
        end
    end
    --[[ Lock weaponskill if you are to far from the mob as to not lose TP ]]
    if spell.type == 'WeaponSkill' then
        if spell.target.distance > 5 then
            cancel_spell()
            add_to_chat(8, 'Target to far away. Move closer')
            return
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
        if gain and player.hp > 120 and player.status == "Engaged" then -- Equip Berserker's Torque / frenzy When You Are Asleep
           -- equip({head="Frenzy Sallet"})
           equip({neck="Vim Torque +1"})
        elseif not gain then -- Take Berserker's off
            handle_equipping_gear(player.status)
        end
    end
    if buffactive['Reive Mark'] then
        equip(sets.Reive)
        disable('neck')
    else
        enable('neck')
    end
    if buffactive['Souleater'] then
        equip(sets.SE)
        disable('Head')
    else
        enable('Head')
    end
    if buffactive['Blood Weapon'] and buffactive['Souleater'] and player.hp > 8000 then
        equip(sets.SEBW)
        disable('Head')
    else
        enable('Head')
    end
    if buff == "doom" then
        if gain then
            equip(sets.buff.Doom)
            send_command('@input /p Doomed please cursna.')
            send_command('@input /item "Holy Water" <me>')
            disable('ring1','ring2','waist')
        else
            enable('ring1','ring2','waist')
            handle_equipping_gear(player.status)
        end
    end
end

function customize_melee_set(meleeSet)
    if state.Buff.Sleep and player.hp > 120 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep
        meleeSet = set_combine(meleeSet,{neck="Vim Torque +1"})
    end
    if player.hp < 700 then
        meleeSet = set_combine(meleeSet, sets.defense.PDTLOWhp)
    end
    if state.Buff.Doom then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
    end
    if buffactive['Arcane Circle'] then
        meleeSet = set_combine(meleeSet, {body="Founder's Breastplate", back=Ankou.STP})
    end
    return meleeSet
end

function customize_idle_set(idleSet)
    if state.Buff.Doom then
        idleSet = set_combine(idleSet, sets.buff.Doom)
    end
    return idleSet
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
set_macro_page(2, 7)
end
