local misc = {
    augments = {
        espiritus = {
            name="Espiritus",
            augments={
                'Summoning magic skill +15',
                'Pet: Mag. Acc.+30',
                'Pet: Damage taken -4%'
            }
        },
        apogee_crown = {
            name="Apogee Crown +1",
            augments={
                'Pet: Attack+25',
                'Pet: "Mag.Atk.Bns."+25',
                'Blood Pact Dmg.+8'
            }
        },
        apogee_slacks = {
            name="Apogee Slacks +1",
            augments={
                'Pet: STR+20',
                'Blood Pact Dmg.+14',
                'Pet: "Dbl. Atk."+4'
            }
        },
        apogee_pumps = {
            name="Apogee Pumps +1",
            augments={
                'Pet: Attack+25',
                'Pet: "Mag.Atk.Bns."+25',
                'Blood Pact Dmg.+8',
            }
        },
        merlinic_jubbah_fastcast = {
            name="Merlinic Jubbah",
            augments={
                '"Fast Cast"+5',
                'Mag. Acc.+14',
            },
        },
        merlinic_dastanas_fastcast = {
            name="Merlinic Dastanas",
            augments={
                '"Mag.Atk.Bns."+21',
                '"Fast Cast"+5',
                'Mag. Acc.+11',
            }
        },
        merlinic_dastanas_bp = {
            name="Merlinic Dastanas",
            augments={
                'Pet: Attack+8 Pet: Rng.Atk.+8',
                'Blood Pact Dmg.+9',
                'Pet: "Mag.Atk.Bns."+5',
            }
        },
        merlinic_crakows_fastcast = {
            name="Merlinic Crackows",
            augments={
                'Attack+23',
                '"Fast Cast"+5',
                'Mag. Acc.+6',
                '"Mag.Atk.Bns."+6'
            }
        },
        vanya_hood = {
            name="Vanya Hood",
            augments={
                'MP+50',
                '"Cure" potency +7%',
                'Enmity-6',
            }
        },
        vanya_robe = {
            name="Vanya Robe",
            augments={
                'Healing magic skill +20',
                '"Cure" spellcasting time -7%',
                'Magic dmg. taken -3',
            }
        },
        vanya_slops = {
            name="Vanya Slops",
            augments={
                'Healing magic skill +20',
                '"Cure" spellcasting time -7%',
                'Magic dmg. taken -3',
            }
        },
        vanya_clogs = {
            name="Vanya Clogs",
            augments={
                'Healing magic skill +20',
                '"Cure" spellcasting time -7%',
                'Magic dmg. taken -3',
            }
        },
    },
    jse = {
        geo_necks = {
            bagua_charm = "Bagua Charm"
        },
        geo_af = {
            head="Geo. Galero +2",
            body="Geomancy Tunic +2",
            hands="Geo. Mitaines +2",
            legs="Geomancy Pants +2",
            feet="Geo. Sandals +3",
        },
        geo_relic = {
            head={ name="Bagua Galero +3", augments={'Enhances "Primeval Zeal" effect',}},
            body={ name="Bagua Tunic +3", augments={'Enhances "Bolster" effect',}},
            hands={ name="Bagua Mitaines +3", augments={'Enhances "Curative Recantation" effect',}},
            legs={ name="Bagua Pants +3", augments={'Enhances "Mending Halation" effect',}},
            feet={ name="Bagua Sandals +3", augments={'Enhances "Radial Arcana" effect',}},
        },
        geo_empyrean = {
            head="Azimuth Hood +1",
            body="Azimuth Coat +1",
            hands="Azimuth Gloves +1",
            legs="Azimuth Tights +1",
            feet="Azimuth Gaiters +1",
        },
        smn_af = {
            head="Convoker's Horn +2",
            head="Convoker's Horn +2",
            -- hands="Geo. Mitaines +2",
            -- legs="Geomancy Pants +2",
            feet="Convo. Pigaches +2",
        },
        smn_relic = {
            -- head={ name="Bagua Galero +3", augments={'Enhances "Primeval Zeal" effect',}},
            -- body={ name="Bagua Tunic +3", augments={'Enhances "Bolster" effect',}},
            -- hands={ name="Bagua Mitaines +3", augments={'Enhances "Curative Recantation" effect',}},
            -- legs={ name="Bagua Pants +3", augments={'Enhances "Mending Halation" effect',}},
            -- feet={ name="Bagua Sandals +3", augments={'Enhances "Radial Arcana" effect',}},
        },
        smn_empyrean = {
            -- head="Azimuth Hood +1",
            -- body="Azimuth Coat +1",
            -- hands="Azimuth Gloves +1",
            -- legs="Azimuth Tights +1",
            -- feet="Azimuth Gaiters +1",
        },
    },
    capes = {
        geo = {
            pet_regen = {
                name="Nantosuelta's Cape",
                augments={
                    'MND+20',
                    'Eva.+20 /Mag. Eva.+20',
                    'Pet: "Regen"+10',
                    'Pet: "Regen"+5',
                    'Mag. Evasion+10',
                }
            },
            healing = {
                name="Nantosuelta's Cape",
                augments={
                    'MND+20',
                    'Eva.+10 /Mag. Eva.+10',
                    'MND+10',
                    '"Cure" potency +10%',
                    'Phys. dmg. taken-10%'
                }
            },
            fastcast = {
                name="Nantosuelta's Cape",
                augments={
                    'MND+20',
                    'Mag. Acc+20 /Mag. Dmg.+20',
                    '"Fast Cast"+10',
                    'Spell interruption rate down-10%',
                }
            },
            nuke = {
                name="Nantosuelta's Cape",
                augments={
                    'INT+20',
                    'Mag. Acc+20 /Mag. Dmg.+20',
                    '"Mag.Atk.Bns."+10',
                    'Mag. Acc.+10',
                }
            },
        },
        smn = {
            pet_idle = {
                name="Campestres's Cape",
                augments={
                    'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20',
                    'Pet: Accuracy+5 Pet: Rng. Acc.+5',
                    '"Fast Cast"+10',
                }
            },
            blood_pact = {},
        }
    },
}

local jse = misc.jse
local augments = misc.augments
local capes = misc.capes

return {
    misc = misc,
    geo = {
        idle = {
            main="Solstice",
            sub="Sors Shield",
            range="Dunna",
            head=jse.geo_empyrean.head,
            body="Jhakri Robe +2",
            hands=jse.geo_af.hands,
            legs="Mallquis Trews +1",
            feet=jse.geo_af.feet,
            neck=jse.geo_necks.bagua_charm,
            waist="Belisama's Rope +1",
            left_ear="Gna Earring",
            right_ear="Fulla Earring",
            left_ring="Jhakri Ring",
            right_ring="Acumen Ring",
            back=capes.geo.pet_regen,
        },
        pdt = {},
        mdt = {},
        healing = {
            main="Gada",
            sub="Sors Shield",
            range="Dunna",
            head="Vanya Hood",
            body="Jhakri Robe +2",
            hands="Mallquis Cuffs +1",
            legs="Mallquis Trews +1",
            feet="Umbani Boots",
            neck=jse.geo_necks.bagua_charm,
            waist="Belisama's Rope +1",
            left_ear="Mendi. Earring",
            right_ear="Influx Earring",
            left_ring="Jhakri Ring",
            right_ring="Perception Ring",
            back=capes.geo.healing,
        },
        enfeebling = {
            main="Gada",
            sub="Sors Shield",
            range="Dunna",
            head="Nahtirah Hat",
            body="Jhakri Robe +2",
            hands="Mallquis Cuffs +1",
            legs="Mallquis Trews +1",
            feet="Umbani Boots",
            neck=jse.geo_necks.bagua_charm,
            waist="Belisama's Rope +1",
            left_ear="Gna Earring",
            right_ear="Fulla Earring",
            left_ring="Jhakri Ring",
            right_ring="Acumen Ring",
            back=capes.geo.fastcast,
        },
        fastcast = {
            main="Solstice",
            sub="Sors Shield",
            range="Dunna",
            head="Nahtirah Hat", -- merlinic hood
            body=augments.merlinic_jubbah_fastcast,
            hands=augments.merlinic_dastanas_fastcast,
            legs=jse.geo_af.legs,
            feet=augments.merlinic_crakows_fastcast,
            neck=jse.geo_necks.bagua_charm,
            waist="Belisama's Rope +1",
            left_ear="Gna Earring",
            right_ear="Fulla Earring",
            left_ring="Jhakri Ring",
            right_ring="Acumen Ring",
            back=capes.geo.fastcast,
        },
        nuke = {
            main="Raetic Staff",
            sub="Enki Strap",
            range="Dunna",
            head=jse.geo_relic.head,
            body="Jhakri Robe +2",
            hands="Psycloth Manillas",
            legs="Mallquis Trews +1",
            feet="Mallquis Clogs +1",
            neck=jse.geo_necks.bagua_charm,
            waist="Eschan Stone",
            left_ear="Mendi. Earring",
            right_ear="Influx Earring",
            left_ring="Jhakri Ring",
            right_ring="Acumen Ring",
            back=capes.geo.nuke,
        },
        luopan_idle = {
            main="Solstice",
            sub="Sors Shield",
            range="Dunna",
            head=jse.geo_empyrean.head,
            body=jse.geo_af.body,
            hands=jse.geo_af.hands,
            legs="Mallquis Trews +1",-- Psycloth Lappas Path D
            feet=jse.geo_relic.feet,
            neck=jse.geo_necks.bagua_charm,
            waist="Belisama's Rope +1",
            left_ear="Gna Earring",
            right_ear="Fulla Earring",
            left_ring="Jhakri Ring",
            right_ring="Acumen Ring",
            back=capes.geo.pet_regen,
        },
        buff_luopan = {
            main="Solstice",
            sub="Sors Shield",
            range="Dunna",
            head=jse.geo_empyrean.head,
            body=jse.geo_relic.body,
            hands=jse.geo_af.hands,
            legs=jse.geo_relic.legs,
            feet=jse.geo_relic.feet,
            neck=jse.geo_necks.bagua_charm,
            waist="Belisama's Rope +1",
            left_ear="Gna Earring",
            right_ear="Fulla Earring",
            left_ring="Stikini Ring",
            right_ring="Stikini Ring",
            back=capes.geo.pet_regen,
        },
        buff_indi = {
            main="Solstice",
            sub="Sors Shield",
            range="Dunna",
            head="Nahtirah Hat",
            body="Jhakri Robe +2",
            hands=jse.geo_af.hands,
            legs=jse.geo_relic.legs,
            feet=jse.geo_empyrean.feet,
            neck=jse.geo_necks.bagua_charm,
            waist="Belisama's Rope +1",
            left_ear="Gna Earring",
            right_ear="Fulla Earring",
            left_ring="Stikini Ring",
            right_ring="Stikini Ring",
            back=capes.geo.pet_regen,
        },
    },
    smn = {
        idle = { -- no pet
            ammo="Sancus Sachet +1",
            main="Espiritus",
            sub="Enki Strap",
            head="Inyanga Tiara +1",
            body="Inyanga Jubbah +1",
            hands="Inyan. Dastanas +1",
            legs="Inyanga Shalwar +1",
            feet="Inyan. Crackows +1",
            neck="Shulmanu Collar",
            waist="Belisama's Rope +1",
            left_ear="Flashward Earring",
            right_ear="Influx Earring",
            left_ring="Inyanga Ring",
            right_ring="Tali'ah Ring",
            back=capes.smn.pet_idle,
        },
        perpetuation = {
            ammo="Sancus Sachet +1",
            main="Was",
            sub="Enki Strap",
            head="Inyanga Tiara +1",
            body="Inyanga Jubbah +1",
            hands="Inyan. Dastanas +1",
            legs="Inyanga Shalwar +1",
            feet=augments.apogee_pumps,
            neck="Shulmanu Collar",
            waist="Incarnation Sash",
    		ear1="Influx Earring",
    		ear2="Lodurr Earring",
    		ring1="Stikini Ring",
    		ring2="Stikini Ring",
            back=capes.smn.pet_idle,
        },
        fastcast = {
            ammo="Seraphicaller",
            main="Espiritus",
            sub="Enki Strap",
            head="Nahtirah Hat",
            body="Inyanga Jubbah +1",
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            hands=augments.merlinic_dastanas_fastcast,
            legs="Vanya Slops",
            feet=augments.merlinic_crakows_fastcast,
            neck="Shulmanu Collar",
            waist="Belisama's Rope +1",
            left_ear="Flashward Earring",
            right_ear="Influx Earring",
            left_ring="Inyanga Ring",
            right_ring="Tali'ah Ring",
            back=capes.smn.pet_idle,
        },
        bloodpact = {
            main=augments.espiritus,
            sub="Vox Grip",
    		ammo="Sancus Sachet +1",
    		head=jse.smn_af.head, -- jse.smn_empyrean.head -- "Beckoner's Horn +1",
    		neck={ name="Smn. Collar +1", augments={'Path: A',}},--"Incanter's Torque",
    		ear1="Influx Earring", --"Lugalbanda Earring",--"Cath Palug Earring",
    		ear2="Lodurr Earring",
    		body="Baayami Robe",
    		hands="Baayami Cuffs",
    		ring1="Stikini Ring", --"Evoker's Ring",
    		ring2="Stikini Ring",
    		-- back="Conveyance Cape",--"Conveyance Cape",--{ name="Conveyance Cape", augments={'Summoning magic skill +4','Blood Pact Dmg.+2','Blood Pact ab. del. II -1',}},--{ name="Conveyance Cape", augments={'Summoning magic skill +5','Pet: Enmity+12','Blood Pact Dmg.+2',}},
    		waist="Lucidity Sash",--"Kobo Obi",
    		legs="Baayami Slops",
    		feet="Baayami Sabots"
        },
        healing = {
    		main="Gada",
    		sub="Sors Shield",
    		head=augments.vanya_hood,
    		neck="Loricate Torque", -- "Orunmila's Torque",
    		ear1="Mendicant's Earring", -- "Meili Earring",
    		-- ear2="Novia Earring",
    		-- body="Zendik Robe",
    		hands="Inyanga Dastanas +1", --{ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
    		ring1="Stikini Ring", -- ring1="Lebeche Ring",
    		ring2="Stikini Ring", -- ring2="Menelaus's Ring",
    		-- back="Tempered Cape +1",
    		-- waist="Luminary Sash",
    		legs=augments.vanya_slops, -- "Convoker's Spats +3",
    		feet=augments.vanya_clogs,
        },
        siphon = {
    		-- main="Chatoyant Staff",
    		sub="Vox Grip",
    		-- ammo="Esper Stone +1",
    		head=jse.smn_af.head, -- "Baayami Hat +1",
    		-- neck="Incanter's Torque",
    		-- ear1="Cath Palug Earring",
    		ear2="Lodurr Earring",
    		body="Baayami Robe",
    		hands="Baayami Cuffs",
    		ring1="Stikini Ring", --"Evoker's Ring",
    		ring2="Stikini Ring",
    		-- back="Conveyance Cape",
    		waist="Lucidity Sash",--"Kobo Obi",
    		legs="Baayami Slops",
    		-- feet="Beck. Pigaches +1"
        },
        nuke = {},
        summoning = {
    		main=augments.espiritus,
    		sub="Vox Grip",
    		ammo="Sancus Sachet +1",
    		head=jse.smn_af.head,--"Baayami Hat +1",
    		neck={ name="Smn. Collar +1", augments={'Path: A',}}, --"Incanter's Torque",
    		-- ear1="Cath Palug Earring",
    		ear2="Lodurr Earring",
    		body="Baayami Robe",
    		hands="Baayami Cuffs", -- "Lamassu Mitts +1",
    		ring1="Stikini Ring", --"Evoker's Ring",
    		ring2="Stikini Ring",
    		back=capes.smn.pet_idle,
    		waist="Lucidity Sash",--"Kobo Obi",
    		legs="Baayami Slops",
    		feet="Baayami Sabots"
        },
    }
}
