-- local character_gear = require 'Berlioz_Gear'
-- local drk_gear = character_gear.drk
local misc = {
    augments = {
        argosy_hauberk = {
            name="Argosy Hauberk +1",
            augments={
                'STR+12',
                'DEX+12',
                'Attack+20',
            }
        },
        argosy_mufflers = {
            name="Argosy Mufflers +1",
            augments={
                'STR+20',
                '"Dbl.Atk."+3',
                'Haste+3%',
            }
        },
        carmine_mask_macc={
            name="Carmine Mask +1",
            augments={
                'Accuracy+20',
                'Mag. Acc.+12',
                '"Fast Cast"+4',
            }
        },
        carmine_scale_mail_drain={
            name="Carm. Sc. Mail +1",
            augments={
                'MP+80',
                'INT+12',
                'MND+12',
            }
        },
        odyssean_cuisses_fastcast = {
            name="Odyssean Cuisses",
            augments={
                'STR+2',
                'Pet: Attack+27 Pet: Rng.Atk.+27',
                '"Fast Cast"+6',
                'Accuracy+7 Attack+7',
                'Mag. Acc.+3 "Mag.Atk.Bns."+3',
            }
        },
        odyssean_gauntlets_atk = {
            -- since not using GS, put fastcast?
            name="Odyssean Gauntlets",
            augments={
                'Accuracy+22',
                'STR+13',
                'STR+8 DEX+8',
                'Accuracy+16 Attack+16',
            }
        },
        odyssean_greaves_fastcast = {
            name="Odyssean Greaves",
            augments={
                '"Mag.Atk.Bns."+8',
                '"Fast Cast"+5',
                'CHR+5',
                'Mag. Acc.+3',
            }
        },
        valorous_mask_ws = {
            name="Valorous Mask",
            augments={
                'VIT+11',
                '"Conserve MP"+2',
                'Weapon skill damage +6%',
            }
        },
        valorous_mail_tp = {
            name="Valorous Mail",
            augments={
                'MND+7',
                '"Dbl.Atk."+1',
                'Quadruple Attack +3',
            }
        },
        valorous_greaves_tp = {
            name="Valorous Greaves",
            augments={
                '"Mag.Atk.Bns."+22',
                'Accuracy+1',
                'Quadruple Attack +1',
                'Accuracy+16 Attack+16',
            }
        },
    },
    jse = {
        drk_necks = {
            abyssal_beads = {
                name="Abyssal Beads +1",
                augments={'Path: A',}
            },
        },
        drk_af = {
            head="Ig. Burgonet +3",
            body="Ignominy Cuirass +3",
            hands="Ig. Gauntlets +3",
            legs="Ig. Flanchard +3",
            feet="Ig. Sollerets +3",
        },
        drk_relic = {
            head={
                name="Fall. Burgeonet +3",
                augments={'Enhances "Dark Seal" effect',}
            },
            body={
                name="Fall. Cuirass +3",
                augments={'Enhances "Blood Weapon" effect',}
            },
            hands={
                name="Fall. Fin. Gaunt. +3",
                augments={'Enhances "Diabolic Eye" effect',}
            },
            legs={
                name="Fall. Flanchard +3",
                augments={'Enhances "Muted Soul" effect',}
            },
            feet={
                name="Fall. Sollerets +3",
                augments={'Enhances "Desperate Blows" effect',}
            },
        },
        drk_empyrean = {
            head="Bale Burgeonet",
            body="Bale Cuirass",
            hands="Bale Gauntlets",
            legs="Bale Flanchard",
            feet="Bale Sollerets",
        },
    },
    capes = {
        drk = {
            double_atk = {
                name="Ankou's Mantle",
                augments={
                    'STR+20',
                    'Accuracy+20 Attack+20',
                    'STR+10',
                    '"Dbl.Atk."+10',
                    'Phys. dmg. taken-10%',
                }
            },
            str_ws = {
                name="Ankou's Mantle",
                augments={
                    'STR+20',
                    'Accuracy+20 Attack+20',
                    'Weapon skill damage +10%',
                    'STR+10',
                }
            },
            vit_ws = {
                name="Ankou's Mantle",
                augments={
                    'VIT+20',
                    'Accuracy+20 Attack+20',
                    'VIT+10',
                    'Weapon skill damage +10%',
                }
            },
            int_nuke = {
                name="Ankou's Mantle",
                augments={
                    'INT+20',
                    'Mag. Acc+20 /Mag. Dmg.+20',
                    'Mag. Acc.+10', -- 5 dyes
                    '"Fast Cast"+10',
                    'Spell interruption rate down-10%',
                }
            },
        },
    },
}

local jse = misc.jse
local augments = misc.augments
local capes = misc.capes

local gearmap = {
    misc = misc,
    drk = {
        skills = {
            weapon_bash = {
                ammo="Seeth. Bomblet +1",
                hands=jse.drk_af.hands,
                legs=jse.drk_af.legs,
            },
            nether_void = {
                legs=jse.drk_af.legs,
            },
        },
        idle = {}, --- ???
        tp_low_acc = {
            ammo="Seething Bomblet +1",
            head="Flam. Zucchetto +2",
            body=augments.valorous_mail_tp,
            hands="Sulev. Gauntlets +2",
            legs=jse.drk_af.legs,
            feet=augments.valorous_greaves_tp,
            neck=jse.drk_necks.abyssal_beads,
            waist="Sailfi Belt +1",
            left_ear="Mache Earring +1",
            right_ear="Mache Earring +1",
            left_ring="Niqmaddu Ring",
            right_ring="Petrov Ring",
            back=capes.drk.double_atk,
        },
        tp_mid_acc = { -- high acc/haste
            feet="Flam. Gambieras +2",
        },
        tp_pre_am3 = { -- high acc/high haste
            ammo="Seething Bomblet +1",
            head="Flam. Zucchetto +2",
            body=augments.valorous_mail_tp,
            hands="Sulev. Gauntlets +2",
            legs=jse.drk_af.legs,
            feet="Flam. Gambieras +2",
            neck=jse.drk_necks.abyssal_beads,
            waist="Sailfi Belt +1",
            left_ear="Mache Earring +1",
            right_ear="Mache Earring +1",
            left_ring="Niqmaddu Ring",
            right_ring="Petrov Ring",
            back=capes.drk.double_atk
        },
        tp_post_am3 = {
            ammo="Seeth. Bomblet +1",
            head="Flam. Zucchetto +2",
            body=augments.valorous_mail_tp,
            hands="Sulev. Gauntlets +2",
            legs=jse.drk_af.legs,
            feet="Flam. Gambieras +2",
            neck=jse.drk_necks.abyssal_beads,
            waist="Sailfi Belt +1",
            left_ear="Mache Earring +1",
            right_ear="Mache Earring +1",
            left_ring="Niqmaddu Ring",
            right_ring="Petrov Ring",
            back=capes.drk.double_atk,
        },
        tp_tank = {
            ammo="Hasty Pinion +1",
            head="Hjarrandi Helm",
            body="Hjarrandi Breast.",
            hands="Sulev. Gauntlets +2",
            legs="Sulevi. Cuisses +1",
            feet="Sulev. Leggings +2",
            neck=jse.drk_necks.abyssal_beads,
            waist="Tempus Fugit",
            left_ear="Mache Earring +1",
            right_ear="Mache Earring +1",
            left_ring="Niqmaddu Ring",
            right_ring="Petrov Ring",
            back=capes.drk.double_atk
        },
        generic_ws = {},
        fastcast = {
            ammo="Seeth. Bomblet +1",
            head=augments.carmine_mask_macc, -- specific to dark magic only. want to get carmine mask +1(PathD) for generic
            body=jse.drk_relic.body,
            hands=jse.drk_relic.hands, -- replace with augmented odyssean_guanlets???
            legs=augments.odyssean_cuisses_fastcast, --
            feet=augments.odyssean_greaves_fastcast, -- or carmine +1 if can't get better augs
            neck="Erra Pendant",
            waist="Tempus Fugit",
            left_ear="Halasz Earring",
            right_ear="Etiolation Earring",
            left_ring="Evanescence Ring",
            right_ring="Kishar Ring",
            back=capes.drk.int_nuke
        },
        nuke_basic = {
            ammo="Seeth. Bomblet +1",
            head="Ratri Sallet +1",
            body=jse.drk_relic.body, -- af +3 ?
            hands=jse.drk_relic.hands,
            legs=jse.drk_relic.legs,
            feet=jse.drk_af.feet,
            neck="Erra Pendant",
            waist="Sailfi Belt +1",
            -- left_ear="Gwati Earring",
            right_ear="Gwati Earring",
            left_ring="Evanescence Ring",
            right_ring="Kishar Ring",
            back=capes.drk.int_nuke
        },
        dark_magic = {
    		head=jse.drk_af.head,
            body=augments.carmine_scale_mail_drain,
            hands=jse.drk_relic.hands,
    		legs=jse.drk_relic.legs,
            feet=jse.drk_af.feet,
    		neck="Erra Pendant",
    		right_ring="Evanescence Ring",
    	},
        drains = {
    		head=jse.drk_af.head,
            body=augments.carmine_scale_mail_drain,
            hands=jse.drk_relic.hands,
    		legs=jse.drk_relic.legs,
            feet=jse.drk_af.feet,
    		neck="Erra Pendant",
    		right_ring="Evanescence Ring",
    	},
        dreadspikes = {
            head="Ratri Sallet +1",
    		-- body="Heathen's Cuirass",
            body="Ratri Plate",
            hands="Rat. Gadlings +1",
            legs="Ratri Cuisses",
            feet="Rat. Sollerets +1",
    		neck="Sanctity necklace",
    		-- waist="Eschan Stone",
        },
        multi_ws = {
            ammo="Knobkierrie",
            head="Hjarrandi Helm",
            body=augments.argosy_hauberk,
            hands=augments.argosy_mufflers,
            legs=jse.drk_af.legs,
            feet="Flam. Gambieras +2",
            neck=jse.drk_necks.abyssal_beads,
            waist="Sailfi Belt +1",
            left_ear="Steelflash Earring",
            right_ear="Bladeborn Earring",
            left_ring="Niqmaddu Ring",
            right_ring="Petrov Ring",
            back=capes.drk.double_atk
        },
        scythe = {
            single_ws = {
                ammo="Knobkierrie",
                head="Ratri Sallet +1",
                body=jse.drk_af.body, -- af +3 ?
                hands="Rat. Gadlings +1",
                legs="Ratri Cuisses", -- relic +3
                feet="Rat. Sollerets +1",
                neck=jse.drk_necks.abyssal_beads,
                waist="Prosilio Belt +1",
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Ifrit Ring",
                back=capes.drk.str_ws,
            },
        },
        gsword = {
            single_ws = {
                ammo="Knobkierrie",
                head=augments.valorous_mask_ws,
                body=jse.drk_af.body,
                hands=augments.odyssean_gauntlets_atk, -- need better augs.
                legs=jse.drk_relic.legs,
                feet="Sulev. Leggings +2",
                neck=jse.drk_necks.abyssal_beads,
                waist="Prosilio Belt +1",
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Ifrit Ring",
                back=capes.drk.str_ws,
            },
            torcleaver = {
                ammo="Knobkierrie",
                head=augments.valorous_mask_ws,
                body=jse.drk_af.body,
                hands=augments.odyssean_gauntlets_atk,
                legs=jse.drk_relic.legs,
                feet="Sulev. Leggings +2",
                neck=jse.drk_necks.abyssal_beads,
                waist="Prosilio Belt +1",
                left_ear="Ishvara Earring",
                right_ear="Thrud Earring",
                left_ring="Niqmaddu Ring",
                right_ring="Ifrit Ring",
                back=capes.drk.vit_ws,
            },
        },
    },
}

return gearmap
