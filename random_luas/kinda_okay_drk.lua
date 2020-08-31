include('organizer-lib')

-- **Ganno's DRK lua** --
-- ** I Use Some of Motenten's Functions ** --

function get_sets()
	send_command('bind ^f4 gs c C10') -- Toggle ofr Dark Seal
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid/Stun. First Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below. Most of These Sets Are Empty So You Need To Edit Them On Your Own. Remember To Check What The Combined Set Is For Each Sets. --
	WeaponIndex = 1
	WeaponArray = {"Ragnarok","Caladbolg","Liberator","Apocalypse","Anguta"} -- Default Main Weapon Is Liberator. Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	IdleIndex = 1
	IdleArray = {"Movement","Regen","Refresh","Regain"} -- Default Idle Set Is Movement --
	DarkSealIndex = 0 --Index for Dark Seal headpiece Potency(0) vs Duration(1)
	add_to_chat(158,'DarkSeal Potency: [On]')
	Armor = 'None'
	Twilight = 'None'
	Attack = 'OFF' -- Set Default WS Attack Set ON or OFF Here --
	Rancor = 'ON' -- Set Default Rancor ON or OFF Here --
	Samurai_Roll = 'ON' -- Set Default SAM Roll ON or OFF Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	-- Gavialis Helm --
	elements = {}
	elements.equip = {head="Gavialis Helm"}
	elements.Resolution = S{"Lightning","Wind","Earth"}
	elements.Entropy = S{"Dark","Water","Earth"}
	elements.Catastrophe = S{"Dark","Earth"}
	elements.Insurgency = S{"Light","Dark","Fire"}

	sc_map = {SC1="Entropy", SC2="Insurgency", SC3="LastResort"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	sets.Idle = {			ammo="Ginsen",
							head="Flamma Zucchetto +1",
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							waist="Ioskeha Belt",
							legs="Ignominy Flanchard +3",
							feet="Flamma Gambieras +1"}
	-- Regen Set --
	sets.Idle.Regen = {
							ammo="Brigantia Pebble",
                            neck="Wiglen Gorget",
							ear1="Ethereal Earring",
							ear2="Infused Earring",
                            body="Lugra Cloak +1",
                            hands="Founder's Gauntlets",
                            ring1="Defending Ring",
                            ring2="Paguroidea Ring",
                            back="Scuta Cape",
                            waist="Nierenschutz",
                            legs="Founder's Hose",
                            feet="Founder's Greaves"}
	sets.Idle.Regen.Liberator = set_combine(sets.Idle.Regen,{
			main="Liberator"})
	sets.Idle.Regen.Liberator.SAM = set_combine(sets.Idle.Regen,{
			main="Liberator"})
	sets.Idle.Regen.Ragnarok = set_combine(sets.Idle.Regen,{
			main="Ragnarok"})
	sets.Idle.Regen.Ragnarok.SAM = set_combine(sets.Idle.Regen,{
			main="Ragnarok"})
	sets.Idle.Regen.Caladbolg = set_combine(sets.Idle.Regen,{
			main="Caladbolg"})
	sets.Idle.Regen.Caladbolg.SAM = set_combine(sets.Idle.Regen,{
			main="Caladbolg"})
	sets.Idle.Regen.Apocalypse = set_combine(sets.Idle.Regen,{
			main="Apocalypse"})
	sets.Idle.Regen.Apocalypse.SAM = set_combine(sets.Idle.Regen,{
			main="Apocalypse"})
	sets.Idle.Regen.Anguta = set_combine(sets.Idle.Regen,{
			main="Anguta"})
	sets.Idle.Regen.Anguta.SAM = set_combine(sets.Idle.Regen,{
			main="Anguta"})

	-- Movement Sets --
	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
			ring2="Karieyh Ring",
			back="Shadow Mantle",
			legs="Carmine Cuisses +1"})
	sets.Idle.Movement.Liberator = set_combine(sets.Idle.Movement,{
			main="Liberator"})
	sets.Idle.Movement.Liberator.SAM = set_combine(sets.Idle.Movement,{
			main="Liberator"})
	sets.Idle.Movement.Ragnarok = set_combine(sets.Idle.Movement,{
			main="Ragnarok"})
	sets.Idle.Movement.Ragnarok.SAM = set_combine(sets.Idle.Movement,{
			main="Ragnarok"})
	sets.Idle.Movement.Caladbolg = set_combine(sets.Idle.Movement,{
			main="Caladbolg"})
	sets.Idle.Movement.Caladbolg.SAM = set_combine(sets.Idle.Movement,{
			main="Caladbolg"})
	sets.Idle.Movement.Apocalypse = set_combine(sets.Idle.Movement,{
			main="Apocalypse"})
	sets.Idle.Movement.Apocalypse.SAM = set_combine(sets.Idle.Movement,{
			main="Apocalypse"})
	sets.Idle.Movement.Anguta = set_combine(sets.Idle.Movement,{
			main="Anguta"})
	sets.Idle.Movement.Anguta.SAM = set_combine(sets.Idle.Movement,{
			main="Anguta"})

	-- Refresh Sets --
	sets.Idle.Refresh = set_combine(sets.Idle.Regen,{
			neck="Bale Choker",
            body="Lugra Cloak +1",
            hands="Ogier's Gauntlets",
			back="Shadow Mantle",
			feet={ name="Valorous Greaves", augments={'AGI+7','Weapon Skill Acc.+4','"Refresh"+2',}}})
	sets.Idle.Refresh.Liberator = set_combine(sets.Idle.Refresh,{
			main="Liberator"})
	sets.Idle.Refresh.Liberator.SAM = set_combine(sets.Idle.Refresh,{
			main="Liberator"})
	sets.Idle.Refresh.Ragnarok = set_combine(sets.Idle.Refresh,{
			main="Ragnarok"})
	sets.Idle.Refresh.Ragnarok.SAM = set_combine(sets.Idle.Refresh,{
			main="Ragnarok"})
	sets.Idle.Refresh.Caladbolg = set_combine(sets.Idle.Refresh,{
			main="Caladbolg"})
	sets.Idle.Refresh.Caladbolg.SAM = set_combine(sets.Idle.Refresh,{
			main="Caladbolg"})
	sets.Idle.Refresh.Apocalypse = set_combine(sets.Idle.Refresh,{
			main="Apocalypse"})
	sets.Idle.Refresh.Apocalypse.SAM = set_combine(sets.Idle.Refresh,{
			main="Apocalypse"})
	sets.Idle.Refresh.Anguta = set_combine(sets.Idle.Refresh,{
			main="Anguta"})
	sets.Idle.Refresh.Anguta.SAM = set_combine(sets.Idle.Refresh,{
			main="Anguta"})

	-- Regain Sets --
	sets.Idle.Regain = set_combine(sets.Idle.Regen,{
			head="Valorous Mask",
			body="Tartarus Platemail",
			hands="Sulevia's Gauntlets +1",
			ring2="Karieyh Ring",
			back="Shadow Mantle",
			legs="Carmine Cuisses +1"})
	sets.Idle.Regain.Liberator = set_combine(sets.Idle.Regain,{
			main="Liberator"})
	sets.Idle.Regain.Liberator.SAM = set_combine(sets.Idle.Regain,{
			main="Liberator"})
	sets.Idle.Regain.Ragnarok = set_combine(sets.Idle.Regain,{
			main="Ragnarok"})
	sets.Idle.Regain.Ragnarok.SAM = set_combine(sets.Idle.Regain,{
			main="Ragnarok"})
	sets.Idle.Regain.Caladbolg = set_combine(sets.Idle.Regain,{
			main="Caladbolg"})
	sets.Idle.Regain.Caladbolg.SAM = set_combine(sets.Idle.Regain,{
			main="Caladbolg"})
	sets.Idle.Regain.Apocalypse = set_combine(sets.Idle.Regain,{
			main="Apocalypse"})
	sets.Idle.Regain.Apocalypse.SAM = set_combine(sets.Idle.Regain,{
			main="Apocalypse"})
	sets.Idle.Regain.Anguta = set_combine(sets.Idle.Regain,{
			main="Anguta"})
	sets.Idle.Regain.Anguta.SAM = set_combine(sets.Idle.Regain,{
			main="Anguta"})

	sets.Twilight = {head="Twilight Helm",body="Twilight Mail"}

	-- TP Base Set --
	sets.TP = {}

	-- Liberator(AM3 Down) TP Sets --
	sets.TP.Liberator = {
							main="Liberator",
							ammo="Ginsen",
							head="Flamma Zucchetto +1",
							neck="Lissome Necklace",
							ear1="Digni. Earring",
							ear2="Telos Earring",
							body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
							hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
							ring1="Rajas Ring",
                            ring2="Petrov Ring",
							back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							waist="Sailfi Belt +1",
							legs={ name="Odyssean Cuisses", augments={'Accuracy+27','"Dbl.Atk."+4',}},
							feet="Flamma Gambieras +1"}
	sets.TP.Liberator.MidACC = set_combine(sets.TP.Liberator,{
							neck="Clotharius Torque",
							body="Flamma Korazin +1",
							ring1="Ramuh Ring +1",
                            ring2="Hetairoi Ring",
							legs="Sulevi. Cuisses +1"})
	sets.TP.Liberator.HighACC = set_combine(sets.TP.Liberator.MidACC,{
							ammo="Seething Bomblet +1"})

	-- Liberator(AM3 Up) TP Sets --
	sets.TP.Liberator.AM3 = set_combine(sets.TP.Liberator,{
							ammo="Ginsen",
							neck="Ganesha's Mala",
							ear1="Digni. Earring",
							ear2="Telos Earring",
							body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
							hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
							ring1="Rajas Ring",
                            ring2="Hetairoi Ring",
							back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							waist="Sailfi Belt +1",
							legs="Sulevi. Cuisses +1",
							feet="Flamma Gambieras +1"})
	sets.TP.Liberator.MidACC.AM3 = set_combine(sets.TP.Liberator.AM3,{
							neck="Clotharius Torque",
							body="Flamma Korazin +1",
							ring1="Ramuh Ring +1",
                            ring2="Hetairoi Ring",
							feet={ name="Valorous Greaves", augments={'"Triple Atk."+2','CHR+10','Accuracy+18 Attack+18','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},})
	sets.TP.Liberator.HighACC.AM3 = set_combine(sets.TP.Liberator.MidACC.AM3,{
							ammo="Seething Bomblet +1",
							head="Flamma Zucchetto +1",
							ear1="Digni. Earring",
							ear2="Telos Earring",
							hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
							ring1="Ramuh Ring +1",
                            ring2="Ramuh Ring +1",
							waist="Sailfi Belt +1",
							legs="Sulevi. Cuisses +1",
							feet={ name="Valorous Greaves", augments={'"Triple Atk."+2','CHR+10','Accuracy+18 Attack+18','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},})

	-- Liberator(AM3 Down: High Haste) TP Sets --
	sets.TP.Liberator.HighHaste = set_combine(sets.TP.Liberator,{
							ammo="Ginsen",
							head="Flamma Zucchetto +1",
							neck="Ganesha's Mala",
							ear1="Digni. Earring",
							ear2="Telos Earring",
							body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
							hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
							ring1="Rajas Ring",
                            ring2="Petrov Ring",
							back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							waist="Windbuffet Belt +1",
							legs={ name="Odyssean Cuisses", augments={'Accuracy+27','"Dbl.Atk."+4',}},
							feet="Flamma Gambieras +1"})
	sets.TP.Liberator.MidACC.HighHaste = set_combine(sets.TP.Liberator.HighHaste,{
							neck="Clotharius Torque",
							ring1="Ramuh Ring +1",
                            ring2="Hetairoi Ring",
							waist="Sailfi Belt +1",
							legs="Sulevi. Cuisses +1"})
	sets.TP.Liberator.HighACC.HighHaste = set_combine(sets.TP.Liberator.MidACC.HighHaste,{
							ammo="Seething Bomblet +1",
                            ring2="Ramuh Ring +1"})

	-- Liberator(AM3 Up: High Haste) TP Sets --
	sets.TP.Liberator.AM3_HighHaste = set_combine(sets.TP.Liberator.AM3,{})
	sets.TP.Liberator.MidACC.AM3_HighHaste = set_combine(sets.TP.Liberator.AM3_HighHaste,{})
	sets.TP.Liberator.HighACC.AM3_HighHaste = set_combine(sets.TP.Liberator.MidACC.AM3_HighHaste,{})

	-- Liberator(AM3 Down: Ionis) TP Sets --
	sets.TP.Liberator.Ionis = set_combine(sets.TP.Liberator,{})
	sets.TP.Liberator.MidACC.Ionis = set_combine(sets.TP.Liberator.Ionis,{})
	sets.TP.Liberator.HighACC.Ionis = set_combine(sets.TP.Liberator.MidACC.Ionis,{})

	-- Liberator(AM3 Up: Ionis) TP Sets --
	sets.TP.Liberator.AM3.Ionis = set_combine(sets.TP.Liberator.AM3,{})
	sets.TP.Liberator.MidACC.AM3.Ionis = set_combine(sets.TP.Liberator.AM3.Ionis,{})
	sets.TP.Liberator.HighACC.AM3.Ionis = set_combine(sets.TP.Liberator.MidACC.AM3.Ionis,{})

	-- Liberator(AM3 Down: High Haste + Ionis) TP Sets --
	sets.TP.Liberator.HighHaste.Ionis = set_combine(sets.TP.Liberator.HighHaste,{})
	sets.TP.Liberator.MidACC.HighHaste.Ionis = set_combine(sets.TP.Liberator.HighHaste.Ionis,{})
	sets.TP.Liberator.HighACC.HighHaste.Ionis = set_combine(sets.TP.Liberator.MidACC.HighHaste.Ionis,{})

	-- Liberator(AM3 Up: High Haste + Ionis) TP Sets --
	sets.TP.Liberator.AM3_HighHaste.Ionis = set_combine(sets.TP.Liberator.AM3_HighHaste,{})
	sets.TP.Liberator.MidACC.AM3_HighHaste.Ionis = set_combine(sets.TP.Liberator.AM3_HighHaste.Ionis,{})
	sets.TP.Liberator.HighACC.AM3_HighHaste.Ionis = set_combine(sets.TP.Liberator.MidACC.AM3_HighHaste.Ionis,{})

	-- Liberator(AM3 Down: SAM Roll) TP Sets --
	sets.TP.Liberator.STP = set_combine(sets.TP.Liberator,{})
	sets.TP.Liberator.MidACC.STP = set_combine(sets.TP.Liberator.MidACC,{})
	sets.TP.Liberator.HighACC.STP = set_combine(sets.TP.Liberator.HighACC,{})

	-- Liberator(AM3 Up: SAM Roll) TP Sets --
	sets.TP.Liberator.AM3.STP = set_combine(sets.TP.Liberator.AM3,{})
	sets.TP.Liberator.MidACC.AM3.STP = set_combine(sets.TP.Liberator.MidACC.AM3,{})
	sets.TP.Liberator.HighACC.AM3.STP = set_combine(sets.TP.Liberator.HighACC.AM3,{})

	-- Liberator(AM3 Down: High Haste + SAM Roll) TP Sets --
	sets.TP.Liberator.HighHaste.STP = set_combine(sets.TP.Liberator.HighHaste,{})
	sets.TP.Liberator.MidACC.HighHaste.STP = set_combine(sets.TP.Liberator.MidACC.HighHaste,{})
	sets.TP.Liberator.HighACC.HighHaste.STP = set_combine(sets.TP.Liberator.HighACC.HighHaste,{})

	-- Liberator(AM3 Up: High Haste + SAM Roll) TP Sets --
	sets.TP.Liberator.AM3_HighHaste.STP = set_combine(sets.TP.Liberator.HighHaste,{})
	sets.TP.Liberator.MidACC.AM3_HighHaste.STP = set_combine(sets.TP.Liberator.MidACC.HighHaste,{})
	sets.TP.Liberator.HighACC.AM3_HighHaste.STP = set_combine(sets.TP.Liberator.HighACC.HighHaste,{})

	-- Liberator(AM3 Down: Ionis + SAM Roll) TP Sets --
	sets.TP.Liberator.Ionis.STP = set_combine(sets.TP.Liberator.Ionis,{})
	sets.TP.Liberator.MidACC.Ionis.STP = set_combine(sets.TP.Liberator.MidACC.Ionis,{})
	sets.TP.Liberator.HighACC.Ionis.STP = set_combine(sets.TP.Liberator.HighACC.Ionis,{})

	-- Liberator(AM3 Up: Ionis + SAM Roll) TP Sets --
	sets.TP.Liberator.AM3.Ionis.STP = set_combine(sets.TP.Liberator.AM3,{})
	sets.TP.Liberator.MidACC.AM3.Ionis.STP = set_combine(sets.TP.Liberator.MidACC.AM3,{})
	sets.TP.Liberator.HighACC.AM3.Ionis.STP = set_combine(sets.TP.Liberator.HighACC.AM3,{})

	-- Liberator(AM3 Down: High Haste + Ionis + SAM Roll) TP Sets --
	sets.TP.Liberator.HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.HighHaste,{})
	sets.TP.Liberator.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.MidACC.HighHaste,{})
	sets.TP.Liberator.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.HighACC.HighHaste,{})

	-- Liberator(AM3 Up: High Haste + Ionis + SAM Roll) TP Sets --
	sets.TP.Liberator.AM3_HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.HighHaste,{})
	sets.TP.Liberator.MidACC.AM3_HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.MidACC.HighHaste,{})
	sets.TP.Liberator.HighACC.AM3_HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.HighACC.HighHaste,{})

	-- Ragnarok TP Sets --
	sets.TP.Ragnarok = {
							main="Ragnarok",
							ammo="Seething Bomblet +1",
							head="Flamma Zucchetto +1",
                            neck="Lissome Necklace",
                            ear1="Digni. Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							waist="Ioskeha Belt",
							legs="Ignominy Flanchard +3",
							feet="Flamma Gambieras +1"}
	sets.TP.Ragnarok.MidACC = set_combine(sets.TP.Ragnarok,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="Hetairoi Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}}})
	sets.TP.Ragnarok.HighACC = set_combine(sets.TP.Ragnarok.MidACC,{
							ammo="Seething Bomblet +1",
							head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
                            neck="Lissome Necklace",
                            ear1="Digni. Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
                            ring1="Ramuh Ring +1",
                            ring2="Ramuh Ring +1",
                            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
							waist="Kentarch Belt +1",
							legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
							feet={ name="Valorous Greaves", augments={'Accuracy+26','"Fast Cast"+3','INT+7 MND+7 CHR+7','Accuracy+15 Attack+15',}},})

	-- Ragnarok(High Haste) TP Sets --
	sets.TP.Ragnarok.HighHaste = set_combine(sets.TP.Ragnarok,{
							ammo="Seething Bomblet +1",
							head="Flamma Zucchetto +1",
                            neck="Lissome Necklace",
                            ear1="Digni. Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							waist="Ioskeha Belt",
							legs="Ignominy Flanchard +3",
							feet="Flamma Gambieras +1"})
	sets.TP.Ragnarok.MidACC.HighHaste = set_combine(sets.TP.Ragnarok.HighHaste,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.HighACC.HighHaste = set_combine(sets.TP.Ragnarok.MidACC.HighHaste,{
							ammo="Seething Bomblet +1",
							head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
                            neck="Lissome Necklace",
                            ear1="Digni. Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
                            ring1="Ramuh Ring +1",
                            ring2="Ramuh Ring +1",
                            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
							waist="Kentarch Belt +1",
							legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
							feet={ name="Valorous Greaves", augments={'Accuracy+26','"Fast Cast"+3','INT+7 MND+7 CHR+7','Accuracy+15 Attack+15',}},})

	-- Ragnarok(Ionis) TP Sets --
	sets.TP.Ragnarok.Ionis = set_combine(sets.TP.Ragnarok,{
							ammo="Focal Orb",
                            head="Argosy Celata +1",
                            neck="Asperity Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body="Argosy Hauberk",
                            hands="Argosy Mufflers +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={name ="Ankou's Mantle", augments={'DEX +20'}},
                            waist="Kentarch Belt +1",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.MidACC.Ionis = set_combine(sets.TP.Ragnarok.Ionis,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.HighACC.Ionis = set_combine(sets.TP.Ragnarok.MidACC.Ionis,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(High Haste + Ionis) TP Sets --
	sets.TP.Ragnarok.HighHaste.Ionis = set_combine(sets.TP.Ragnarok.HighHaste,{
							ammo="Focal Orb",
                            head="Argosy Celata +1",
                            neck="Asperity Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body="Argosy Hauberk",
                            hands="Argosy Mufflers +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={name ="Ankou's Mantle", augments={'DEX +20'}},
                            waist="Kentarch Belt +1",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.MidACC.HighHaste.Ionis = set_combine(sets.TP.Ragnarok.HighHaste.Ionis,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.HighACC.HighHaste.Ionis = set_combine(sets.TP.Ragnarok.MidACC.HighHaste.Ionis,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})
	-- Ragnarok(SAM Roll) TP Sets --
	sets.TP.Ragnarok.STP = set_combine(sets.TP.Ragnarok,{
							ammo="Seething Bomblet +1",
							head="Flamma Zucchetto +1",
                            neck="Lissome Necklace",
                            ear1="Digni. Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							waist="Ioskeha Belt",
							legs="Ignominy Flanchard +3",
							feet="Flamma Gambieras +1"})
	sets.TP.Ragnarok.MidACC.STP = set_combine(sets.TP.Ragnarok.STP,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.HighACC.STP = set_combine(sets.TP.Ragnarok.MidACC.STP,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(High Haste + SAM Roll) TP Sets --
	sets.TP.Ragnarok.HighHaste.STP = set_combine(sets.TP.Ragnarok.HighHaste,{
							ammo="Seething Bomblet +1",
							head="Flamma Zucchetto +1",
                            neck="Lissome Necklace",
                            ear1="Digni. Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							waist="Ioskeha Belt",
							legs="Ignominy Flanchard +3",
							feet="Flamma Gambieras +1"})
	sets.TP.Ragnarok.MidACC.HighHaste.STP = set_combine(sets.TP.Ragnarok.HighHaste.STP,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.HighACC.HighHaste.STP = set_combine(sets.TP.Ragnarok.MidACC.HighHaste.STP,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(Ionis + SAM Roll) TP Sets --
	sets.TP.Ragnarok.Ionis.STP = set_combine(sets.TP.Ragnarok.Ionis,{
							ammo="Focal Orb",
                            head="Argosy Celata +1",
                            neck="Asperity Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body="Argosy Hauberk",
                            hands="Argosy Mufflers +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={name ="Ankou's Mantle", augments={'DEX +20'}},
                            waist="Kentarch Belt +1",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.MidACC.Ionis.STP = set_combine(sets.TP.Ragnarok.MidACC.Ionis,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.HighACC.Ionis.STP = set_combine(sets.TP.Ragnarok.HighACC.Ionis,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(High Haste + Ionis + SAM Roll) TP Sets --
	sets.TP.Ragnarok.HighHaste.Ionis.STP = set_combine(sets.TP.Ragnarok.HighHaste,{
							ammo="Focal Orb",
                            head="Argosy Celata +1",
                            neck="Asperity Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body="Argosy Hauberk",
                            hands="Argosy Mufflers +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={name ="Ankou's Mantle", augments={'DEX +20'}},
                            waist="Kentarch Belt +1",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Ragnarok.MidACC.HighHaste,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Ragnarok.HighACC.HighHaste,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Apocalypse(AM Down) TP Sets --
	sets.TP.Apocalypse = {
			main="Apocalypse"}
	sets.TP.Apocalypse.MidACC = set_combine(sets.TP.Apocalypse,{})
	sets.TP.Apocalypse.HighACC = set_combine(sets.TP.Apocalypse.MidACC,{})

	-- Apocalypse(AM Up) TP Sets --
	sets.TP.Apocalypse.AM = set_combine(sets.TP.Apocalypse,{})
	sets.TP.Apocalypse.MidACC.AM = set_combine(sets.TP.Apocalypse.AM,{})
	sets.TP.Apocalypse.HighACC.AM = set_combine(sets.TP.Apocalypse.MidACC.AM,{})

	-- Apocalypse(AM Down: High Haste) TP Sets --
	sets.TP.Apocalypse.HighHaste = set_combine(sets.TP.Apocalypse,{})
	sets.TP.Apocalypse.MidACC.HighHaste = set_combine(sets.TP.Apocalypse.HighHaste,{})
	sets.TP.Apocalypse.HighACC.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.HighHaste,{})

	-- Apocalypse(AM Up: High Haste) TP Sets --
	sets.TP.Apocalypse.AM.HighHaste = set_combine(sets.TP.Apocalypse.AM,{})
	sets.TP.Apocalypse.MidACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.AM.HighHaste,{})
	sets.TP.Apocalypse.HighACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste,{})

	-- Apocalypse(AM Down: Ionis) TP Sets --
	sets.TP.Apocalypse.Ionis = set_combine(sets.TP.Apocalypse,{})
	sets.TP.Apocalypse.MidACC.Ionis = set_combine(sets.TP.Apocalypse.Ionis,{})
	sets.TP.Apocalypse.HighACC.Ionis = set_combine(sets.TP.Apocalypse.MidACC.Ionis,{})

	-- Apocalypse(AM Up: Ionis) TP Sets --
	sets.TP.Apocalypse.AM.Ionis = set_combine(sets.TP.Apocalypse.AM,{})
	sets.TP.Apocalypse.MidACC.AM.Ionis = set_combine(sets.TP.Apocalypse.AM.Ionis,{})
	sets.TP.Apocalypse.HighACC.AM.Ionis= set_combine(sets.TP.Apocalypse.MidACC.AM.Ionis,{})

	-- Apocalypse(AM Down: High Haste + Ionis) TP Sets --
	sets.TP.Apocalypse.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighHaste,{})
	sets.TP.Apocalypse.MidACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighHaste.Ionis,{})
	sets.TP.Apocalypse.HighACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.Ionis,{})

	-- Apocalypse(AM Up: High Haste + Ionis) TP Sets --
	sets.TP.Apocalypse.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.AM.HighHaste,{})
	sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.AM.HighHaste.Ionis,{})
	sets.TP.Apocalypse.HighACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis,{})

	-- Apocalypse(AM Down: SAM Roll) TP Sets --
	sets.TP.Apocalypse.STP = set_combine(sets.TP.Apocalypse,{})
	sets.TP.Apocalypse.MidACC.STP = set_combine(sets.TP.Apocalypse.MidACC,{})
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

	-- Caladbolg(AM Down) TP Sets --
	sets.TP.Caladbolg = {
							main="Caladbolg",
							ammo="Ginsen",
							head="Flamma Zucchetto +1",
                            neck="Ganesha's Mala",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
                            ring1="Niqmaddu Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							waist="Ioskeha Belt",
							legs={ name="Odyssean Cuisses", augments={'"Store TP"+8','Accuracy+12','Attack+7',}},
							feet="Flamma Gambieras +1"}
	sets.TP.Caladbolg.MidACC = set_combine(sets.TP.Caladbolg,{
							neck="Lissome Necklace",
							hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
							ring1="Rajas Ring",
							legs="Ignominy Flanchard +3",})
	sets.TP.Caladbolg.HighACC = set_combine(sets.TP.Caladbolg.MidACC,{
							head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
							ring1="Ramuh Ring +1",
                            ring2="Ramuh Ring +1",
							back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},})

	-- Caladbolg(AM Up) TP Sets --
	sets.TP.Caladbolg.AM = set_combine(sets.TP.Caladbolg,{})
	sets.TP.Caladbolg.MidACC.AM = set_combine(sets.TP.Caladbolg.AM,{})
	sets.TP.Caladbolg.HighACC.AM = set_combine(sets.TP.Caladbolg.MidACC.AM,{})

	-- Caladbolg(AM Down: High Haste) TP Sets --
	sets.TP.Caladbolg.HighHaste = set_combine(sets.TP.Caladbolg,{
							waist="Windbuffet Belt +1",})
	sets.TP.Caladbolg.MidACC.HighHaste = set_combine(sets.TP.Caladbolg.HighHaste,{
							waist="Olseni Belt",})
	sets.TP.Caladbolg.HighACC.HighHaste = set_combine(sets.TP.Caladbolg.MidACC.HighHaste,{})

	-- Caladbolg(AM Up: High Haste) TP Sets --
	sets.TP.Caladbolg.AM.HighHaste = set_combine(sets.TP.Caladbolg.AM,{
							waist="Windbuffet Belt +1",	})
	sets.TP.Caladbolg.MidACC.AM.HighHaste = set_combine(sets.TP.Caladbolg.AM.HighHaste,{})
	sets.TP.Caladbolg.HighACC.AM.HighHaste = set_combine(sets.TP.Caladbolg.MidACC.AM.HighHaste,{})

	-- Caladbolg(AM Down: Ionis) TP Sets --
	sets.TP.Caladbolg.Ionis = set_combine(sets.TP.Caladbolg,{})
	sets.TP.Caladbolg.MidACC.Ionis = set_combine(sets.TP.Caladbolg.Ionis,{})
	sets.TP.Caladbolg.HighACC.Ionis = set_combine(sets.TP.Caladbolg.MidACC.Ionis,{})

	-- Caladbolg(AM Up: Ionis) TP Sets --
	sets.TP.Caladbolg.AM.Ionis = set_combine(sets.TP.Caladbolg.AM,{})
	sets.TP.Caladbolg.MidACC.AM.Ionis = set_combine(sets.TP.Caladbolg.AM.Ionis,{})
	sets.TP.Caladbolg.HighACC.AM.Ionis= set_combine(sets.TP.Caladbolg.MidACC.AM.Ionis,{})

	-- Caladbolg(AM Down: High Haste + Ionis) TP Sets --
	sets.TP.Caladbolg.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.HighHaste,{})
	sets.TP.Caladbolg.MidACC.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.HighHaste.Ionis,{})
	sets.TP.Caladbolg.HighACC.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.MidACC.HighHaste.Ionis,{})

	-- Caladbolg(AM Up: High Haste + Ionis) TP Sets --
	sets.TP.Caladbolg.AM.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.AM.HighHaste,{})
	sets.TP.Caladbolg.MidACC.AM.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.AM.HighHaste.Ionis,{})
	sets.TP.Caladbolg.HighACC.AM.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.MidACC.AM.HighHaste.Ionis,{})

	-- Caladbolg(AM Down: SAM Roll) TP Sets --
	sets.TP.Caladbolg.STP = set_combine(sets.TP.Caladbolg,{
							feet={ name="Valorous Greaves", augments={'Accuracy+7 Attack+7','"Store TP"+6','Accuracy+13','Attack+6',}}})
	sets.TP.Caladbolg.MidACC.STP = set_combine(sets.TP.Caladbolg.MidACC,{})
	sets.TP.Caladbolg.HighACC.STP = set_combine(sets.TP.Caladbolg.HighACC,{})

	-- Caladbolg(AM Up: SAM Roll) TP Sets --
	sets.TP.Caladbolg.AM.STP = set_combine(sets.TP.Caladbolg.STP,{})
	sets.TP.Caladbolg.MidACC.AM.STP = set_combine(sets.TP.Caladbolg.MidACC.AM,{})
	sets.TP.Caladbolg.HighACC.AM.STP = set_combine(sets.TP.Caladbolg.HighACC.AM,{})

	-- Caladbolg(AM Down: High Haste + SAM Roll) TP Sets --
	sets.TP.Caladbolg.HighHaste.STP = set_combine(sets.TP.Caladbolg.STP,{
							waist="Windbuffet Belt +1",})
	sets.TP.Caladbolg.MidACC.HighHaste.STP = set_combine(sets.TP.Caladbolg.MidACC.HighHaste,{})
	sets.TP.Caladbolg.HighACC.HighHaste.STP = set_combine(sets.TP.Caladbolg.HighACC.HighHaste,{})

	-- Caladbolg(AM Up: High Haste + SAM Roll) TP Sets --
	sets.TP.Caladbolg.AM.HighHaste.STP = set_combine(sets.TP.Caladbolg.HighHaste.STP,{})
	sets.TP.Caladbolg.MidACC.AM.HighHaste.STP = set_combine(sets.TP.Caladbolg.MidACC.HighHaste,{})
	sets.TP.Caladbolg.HighACC.AM.HighHaste.STP = set_combine(sets.TP.Caladbolg.HighACC.HighHaste,{})

	-- Caladbolg(AM Down: Ionis + SAM Roll) TP Sets --
	sets.TP.Caladbolg.Ionis.STP = set_combine(sets.TP.Caladbolg.Ionis,{})
	sets.TP.Caladbolg.MidACC.Ionis.STP = set_combine(sets.TP.Caladbolg.MidACC.Ionis,{})
	sets.TP.Caladbolg.HighACC.Ionis.STP = set_combine(sets.TP.Caladbolg.HighACC.Ionis,{})

	-- Caladbolg(AM Up: Ionis + SAM Roll) TP Sets --
	sets.TP.Caladbolg.AM.Ionis.STP = set_combine(sets.TP.Caladbolg.AM,{})
	sets.TP.Caladbolg.MidACC.AM.Ionis.STP = set_combine(sets.TP.Caladbolg.MidACC.AM,{})
	sets.TP.Caladbolg.HighACC.AM.Ionis.STP = set_combine(sets.TP.Caladbolg.HighACC.AM,{})

	-- Caladbolg(AM Down: High Haste + Ionis + SAM Roll) TP Sets --
	sets.TP.Caladbolg.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.HighHaste,{})
	sets.TP.Caladbolg.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.MidACC.HighHaste,{})
	sets.TP.Caladbolg.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.HighACC.HighHaste,{})

	-- Caladbolg(AM Up: High Haste + Ionis + SAM Roll) TP Sets --
	sets.TP.Caladbolg.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.HighHaste,{})
	sets.TP.Caladbolg.MidACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.MidACC.HighHaste,{})
	sets.TP.Caladbolg.HighACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.HighACC.HighHaste,{})

	-- Anguta TP Sets --
	-- 1116 accuracy --
	sets.TP.Anguta = {
							main="Anguta",
							ammo="Ginsen",
                            head="Flamma Zucchetto +1",
                            neck="Ainia Collar",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							waist="Ioskeha Belt",
							legs={ name="Odyssean Cuisses", augments={'"Store TP"+8','Accuracy+12','Attack+7',}},
							feet={ name="Valorous Greaves", augments={'Accuracy+7 Attack+7','"Store TP"+6','Accuracy+13','Attack+6',}}}
	sets.TP.Anguta.MidACC = set_combine(sets.TP.Anguta,{})
	sets.TP.Anguta.HighACC = set_combine(sets.TP.Anguta.MidACC,{})

	-- Anguta(High Haste) TP Sets --
	sets.TP.Anguta.HighHaste = set_combine(sets.TP.Anguta,{})
	sets.TP.Anguta.MidACC.HighHaste = set_combine(sets.TP.Anguta.HighHaste,{})
	sets.TP.Anguta.HighACC.HighHaste = set_combine(sets.TP.Anguta.MidACC.HighHaste,{})

	-- Anguta(Ionis) TP Sets --
	sets.TP.Anguta.Ionis = set_combine(sets.TP.Anguta,{})
	sets.TP.Anguta.MidACC.Ionis = set_combine(sets.TP.Anguta.Ionis,{})
	sets.TP.Anguta.HighACC.Ionis = set_combine(sets.TP.Anguta.MidACC.Ionis,{})

	-- Anguta(High Haste + Ionis) TP Sets --
	sets.TP.Anguta.HighHaste.Ionis = set_combine(sets.TP.Anguta.HighHaste,{})
	sets.TP.Anguta.MidACC.HighHaste.Ionis = set_combine(sets.TP.Anguta.HighHaste.Ionis,{})
	sets.TP.Anguta.HighACC.HighHaste.Ionis = set_combine(sets.TP.Anguta.MidACC.HighHaste.Ionis,{})

	-- Anguta(SAM Roll) TP Sets --
	sets.TP.Anguta.STP = set_combine(sets.TP.Anguta,{})
	sets.TP.Anguta.MidACC.STP = set_combine(sets.TP.Anguta.MidACC,{})
	sets.TP.Anguta.HighACC.STP = set_combine(sets.TP.Anguta.HighACC,{})

	-- Anguta(High Haste + SAM Roll) TP Sets --
	sets.TP.Anguta.HighHaste.STP = set_combine(sets.TP.Anguta.HighHaste,{})
	sets.TP.Anguta.MidACC.HighHaste.STP = set_combine(sets.TP.Anguta.MidACC.HighHaste,{})
	sets.TP.Anguta.HighACC.HighHaste.STP = set_combine(sets.TP.Anguta.HighACC.HighHaste,{})

	-- Anguta(Ionis + SAM Roll) TP Sets --
	sets.TP.Anguta.Ionis.STP = set_combine(sets.TP.Anguta.Ionis,{})
	sets.TP.Anguta.MidACC.Ionis.STP = set_combine(sets.TP.Anguta.MidACC.Ionis,{})
	sets.TP.Anguta.HighACC.Ionis.STP = set_combine(sets.TP.Anguta.HighACC.Ionis,{})

	-- Anguta(High Haste + Ionis + SAM Roll) TP Sets --
	sets.TP.Anguta.HighHaste.Ionis.STP = set_combine(sets.TP.Anguta.HighHaste,{})
	sets.TP.Anguta.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Anguta.MidACC.HighHaste,{})
	sets.TP.Anguta.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Anguta.HighACC.HighHaste,{})

	-- Liberator(AM3 Down) /SAM TP Sets --
	sets.TP.Liberator.SAM = {
							main="Liberator",
							ammo="Ginsen",
							head="Flamma Zucchetto +1",
							neck="Ganesha's Mala",
							ear1="Digni. Earring",
							ear2="Telos Earring",
							body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
							hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
							ring1="Niqmaddu Ring",
                            ring2="Hetairoi Ring",
							back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							waist="Sailfi Belt +1",
							legs={ name="Odyssean Cuisses", augments={'"Store TP"+8','Accuracy+12','Attack+7',}},
							feet={ name="Valorous Greaves", augments={'Accuracy+7 Attack+7','"Store TP"+6','Accuracy+13','Attack+6',}}}
	sets.TP.Liberator.SAM.MidACC = set_combine(sets.TP.Liberator.SAM,{})
	sets.TP.Liberator.SAM.HighACC = set_combine(sets.TP.Liberator.SAM.MidACC,{})

	-- Liberator(AM3 Up) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3 = set_combine(sets.TP.Liberator.SAM,{})
	sets.TP.Liberator.SAM.MidACC.AM3 = set_combine(sets.TP.Liberator.SAM.AM3,{})
	sets.TP.Liberator.SAM.HighACC.AM3 = set_combine(sets.TP.Liberator.SAM.MidACC.AM3,{})

	-- Liberator(AM3 Down: High Haste) /SAM TP Sets --
	sets.TP.Liberator.SAM.HighHaste = set_combine(sets.TP.Liberator.SAM,{
							waist="Windbuffet Belt +1",})
	sets.TP.Liberator.SAM.MidACC.HighHaste = set_combine(sets.TP.Liberator.SAM.HighHaste,{})
	sets.TP.Liberator.SAM.HighACC.HighHaste = set_combine(sets.TP.Liberator.SAM.MidACC.HighHaste,{})

	-- Liberator(AM3 Up: High Haste) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3_HighHaste = set_combine(sets.TP.Liberator.SAM.AM3,{
							waist="Windbuffet Belt +1",})
	sets.TP.Liberator.SAM.MidACC.AM3_HighHaste = set_combine(sets.TP.Liberator.SAM.AM3_HighHaste,{})
	sets.TP.Liberator.SAM.HighACC.AM3_HighHaste = set_combine(sets.TP.Liberator.SAM.MidACC.AM3_HighHaste,{})

	-- Liberator(AM3 Down: Ionis) /SAM TP Sets --
	sets.TP.Liberator.SAM.Ionis = set_combine(sets.TP.Liberator.SAM,{})
	sets.TP.Liberator.SAM.MidACC.Ionis = set_combine(sets.TP.Liberator.SAM.Ionis,{})
	sets.TP.Liberator.SAM.HighACC.Ionis = set_combine(sets.TP.Liberator.SAM.MidACC.Ionis,{})

	-- Liberator(AM3 Up: Ionis) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3.Ionis = set_combine(sets.TP.Liberator.SAM.AM3,{})
	sets.TP.Liberator.SAM.MidACC.AM3.Ionis = set_combine(sets.TP.Liberator.SAM.AM3.Ionis,{})
	sets.TP.Liberator.SAM.HighACC.AM3.Ionis = set_combine(sets.TP.Liberator.SAM.MidACC.AM3.Ionis,{})

	-- Liberator(AM3 Down: High Haste + Ionis) /SAM TP Sets --
	sets.TP.Liberator.SAM.HighHaste.Ionis = set_combine(sets.TP.Liberator.SAM.HighHaste,{})
	sets.TP.Liberator.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Liberator.SAM.HighHaste.Ionis,{})
	sets.TP.Liberator.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Liberator.SAM.MidACC.HighHaste.Ionis,{})

	-- Liberator(AM3 Up: High Haste + Ionis) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3_HighHaste.Ionis = set_combine(sets.TP.Liberator.SAM.AM3_HighHaste,{})
	sets.TP.Liberator.SAM.MidACC.AM3_HighHaste.Ionis = set_combine(sets.TP.Liberator.SAM.AM3_HighHaste.Ionis,{})
	sets.TP.Liberator.SAM.HighACC.AM3_HighHaste.Ionis = set_combine(sets.TP.Liberator.SAM.MidACC.AM3_HighHaste.Ionis,{})

	-- Liberator(AM3 Down: SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.STP = set_combine(sets.TP.Liberator.SAM,{})
	sets.TP.Liberator.SAM.MidACC.STP = set_combine(sets.TP.Liberator.SAM.MidACC,{})
	sets.TP.Liberator.SAM.HighACC.STP = set_combine(sets.TP.Liberator.SAM.HighACC,{})

	-- Liberator(AM3 Up: SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3.STP = set_combine(sets.TP.Liberator.SAM.AM3,{})
	sets.TP.Liberator.SAM.MidACC.AM3.STP = set_combine(sets.TP.Liberator.SAM.MidACC.AM3,{})
	sets.TP.Liberator.SAM.HighACC.AM3.STP = set_combine(sets.TP.Liberator.SAM.HighACC.AM3,{})

	-- Liberator(AM3 Down: High Haste + SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.HighHaste.STP = set_combine(sets.TP.Liberator.SAM.HighHaste,{})
	sets.TP.Liberator.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Liberator.SAM.MidACC.HighHaste,{})
	sets.TP.Liberator.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Liberator.SAM.HighACC.HighHaste,{})

	-- Liberator(AM3 Up: High Haste + SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3_HighHaste.STP = set_combine(sets.TP.Liberator.SAM.HighHaste,{})
	sets.TP.Liberator.SAM.MidACC.AM3_HighHaste.STP = set_combine(sets.TP.Liberator.SAM.MidACC.HighHaste,{})
	sets.TP.Liberator.SAM.HighACC.AM3_HighHaste.STP = set_combine(sets.TP.Liberator.SAM.HighACC.HighHaste,{})

	-- Liberator(AM3 Down: Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.Ionis.STP = set_combine(sets.TP.Liberator.SAM.Ionis,{})
	sets.TP.Liberator.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Liberator.SAM.MidACC.Ionis,{})
	sets.TP.Liberator.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Liberator.SAM.HighACC.Ionis,{})

	-- Liberator(AM3 Up: Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3.Ionis.STP = set_combine(sets.TP.Liberator.SAM.AM3,{})
	sets.TP.Liberator.SAM.MidACC.AM3.Ionis.STP = set_combine(sets.TP.Liberator.SAM.MidACC.AM3,{})
	sets.TP.Liberator.SAM.HighACC.AM3.Ionis.STP = set_combine(sets.TP.Liberator.SAM.HighACC.AM3,{})

	-- Liberator(AM3 Down: High Haste + Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.SAM.HighHaste,{})
	sets.TP.Liberator.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.SAM.MidACC.HighHaste,{})
	sets.TP.Liberator.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.SAM.HighACC.HighHaste,{})

	-- Liberator(AM3 Up: High Haste + Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Liberator.SAM.AM3_HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.SAM.HighHaste,{})
	sets.TP.Liberator.SAM.MidACC.AM3_HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.SAM.MidACC.HighHaste,{})
	sets.TP.Liberator.SAM.HighACC.AM3_HighHaste.Ionis.STP = set_combine(sets.TP.Liberator.SAM.HighACC.HighHaste,{})

	-- Ragnarok /SAM TP Sets --
	sets.TP.Ragnarok.SAM = {}
	sets.TP.Ragnarok.SAM.MidACC = set_combine(sets.TP.Ragnarok.SAM,{})
	sets.TP.Ragnarok.SAM.HighACC = set_combine(sets.TP.Ragnarok.SAM.MidACC,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(High Haste) /SAM TP Sets --
	sets.TP.Ragnarok.SAM.HighHaste = set_combine(sets.TP.Ragnarok.SAM,{})
	sets.TP.Ragnarok.SAM.MidACC.HighHaste = set_combine(sets.TP.Ragnarok.SAM.HighHaste,{})
	sets.TP.Ragnarok.SAM.HighACC.HighHaste = set_combine(sets.TP.Ragnarok.SAM.MidACC.HighHaste,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Windbuffet Belt +1",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(Ionis) /SAM TP Sets --
	sets.TP.Ragnarok.SAM.Ionis = set_combine(sets.TP.Ragnarok.SAM,{})
	sets.TP.Ragnarok.SAM.MidACC.Ionis = set_combine(sets.TP.Ragnarok.SAM.Ionis,{
							ammo="Focal Orb",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet={ name="Valorous Greaves", augments={'Accuracy+19','"Dbl.Atk."+4','Attack+9',}}})
	sets.TP.Ragnarok.SAM.HighACC.Ionis = set_combine(sets.TP.Ragnarok.SAM.MidACC.Ionis,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(High Haste + Ionis) /SAM TP Sets --
	sets.TP.Ragnarok.SAM.HighHaste.Ionis = set_combine(sets.TP.Ragnarok.SAM.HighHaste,{})
	sets.TP.Ragnarok.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Ragnarok.SAM.HighHaste.Ionis,{
							ammo="Focal Orb",
							head={ name="Argosy Celata +1", augments={'DEX+12','Accuracy+20','"Dbl.Atk."+3',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
							body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Argosy Sollerets +1"})
	sets.TP.Ragnarok.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Ragnarok.SAM.MidACC.HighHaste.Ionis,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(SAM Roll) /SAM TP Sets --
	sets.TP.Ragnarok.SAM.STP = set_combine(sets.TP.Ragnarok.SAM,{})
	sets.TP.Ragnarok.SAM.MidACC.STP = set_combine(sets.TP.Ragnarok.SAM.MidACC,{})
	sets.TP.Ragnarok.SAM.HighACC.STP = set_combine(sets.TP.Ragnarok.SAM.HighACC,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(High Haste + SAM Roll) /SAM TP Sets --
	sets.TP.Ragnarok.SAM.HighHaste.STP = set_combine(sets.TP.Ragnarok.SAM.HighHaste,{})
	sets.TP.Ragnarok.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Ragnarok.SAM.MidACC.HighHaste,{})
	sets.TP.Ragnarok.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Ragnarok.SAM.HighACC.HighHaste,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Ragnarok.SAM.Ionis.STP = set_combine(sets.TP.Ragnarok.SAM.Ionis,{})
	sets.TP.Ragnarok.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Ragnarok.SAM.MidACC.Ionis,{})
	sets.TP.Ragnarok.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Ragnarok.SAM.HighACC.Ionis,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Ragnarok(High Haste + Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Ragnarok.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Ragnarok.SAM.HighHaste,{})
	sets.TP.Ragnarok.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Ragnarok.SAM.MidACC.HighHaste,{})
	sets.TP.Ragnarok.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Ragnarok.SAM.HighACC.HighHaste,{
							ammo="Ginsen",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Sulev. Gauntlets +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
                            waist="Goading Belt",
                            legs={ name="Valor. Hose", augments={'Accuracy+30','"Dbl.Atk."+4',}},
                            feet="Flamma Gambieras +1"})

	-- Apocalypse(AM Down) /SAM TP Sets --
	sets.TP.Apocalypse.SAM = {
			main="Apocalypse"}
	sets.TP.Apocalypse.SAM.MidACC = set_combine(sets.TP.Apocalypse.SAM,{
							ammo="Seething Bomblet +1",
							head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Argosy Mufflers +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back="Letalis Mantle",
                            waist="Kentarch Belt +1",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"})
	sets.TP.Apocalypse.SAM.HighACC = set_combine(sets.TP.Apocalypse.SAM.MidACC,{})

	-- Apocalypse(AM Up) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM = set_combine(sets.TP.Apocalypse.SAM,{})
	sets.TP.Apocalypse.SAM.MidACC.AM = set_combine(sets.TP.Apocalypse.SAM.AM,{})
	sets.TP.Apocalypse.SAM.HighACC.AM = set_combine(sets.TP.Apocalypse.SAM.MidACC.AM,{})

	-- Apocalypse(AM Down: High Haste) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.HighHaste = set_combine(sets.TP.Apocalypse.SAM,{})
	sets.TP.Apocalypse.SAM.MidACC.HighHaste = set_combine(sets.TP.Apocalypse.SAM.HighHaste,{
							ammo="Seething Bomblet +1",
							head="Argosy Celata +1",
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Argosy Mufflers +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back="Letalis Mantle",
                            waist="Kentarch Belt +1",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"})
	sets.TP.Apocalypse.SAM.HighACC.HighHaste = set_combine(sets.TP.Apocalypse.SAM.MidACC.HighHaste,{})

	-- Apocalypse(AM Up: High Haste) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM.HighHaste = set_combine(sets.TP.Apocalypse.SAM.AM,{})
	sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.SAM.AM.HighHaste,{
							ammo="Seething Bomblet +1",
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands="Argosy Mufflers +1",
                            ring1="Petrov Ring",
                            ring2="K'ayres Ring",
                            back="Letalis Mantle",
                            waist="Kentarch Belt +1",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"})
	sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste,{})

	-- Apocalypse(AM Down: Ionis) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.Ionis = set_combine(sets.TP.Apocalypse.SAM,{})
	sets.TP.Apocalypse.SAM.MidACC.Ionis = set_combine(sets.TP.Apocalypse.SAM.Ionis,{})
	sets.TP.Apocalypse.SAM.HighACC.Ionis = set_combine(sets.TP.Apocalypse.SAM.MidACC.Ionis,{})

	-- Apocalypse(AM Up: Ionis) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM.Ionis = set_combine(sets.TP.Apocalypse.SAM.AM,{})
	sets.TP.Apocalypse.SAM.MidACC.AM.Ionis = set_combine(sets.TP.Apocalypse.SAM.AM.Ionis,{})
	sets.TP.Apocalypse.SAM.HighACC.AM.Ionis = set_combine(sets.TP.Apocalypse.SAM.MidACC.AM.Ionis,{})

	-- Apocalypse(AM Down: High Haste + Ionis) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.SAM.HighHaste,{})
	sets.TP.Apocalypse.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.SAM.HighHaste.Ionis,{})
	sets.TP.Apocalypse.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.SAM.MidACC.HighHaste.Ionis,{})

	-- Apocalypse(AM Up: High Haste + Ionis) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.SAM.AM.HighHaste,{})
	sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.SAM.AM.HighHaste.Ionis,{})
	sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.Ionis,{})

	-- Apocalypse(AM Down: SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.STP = set_combine(sets.TP.Apocalypse.SAM,{})
	sets.TP.Apocalypse.SAM.MidACC.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC,{})
	sets.TP.Apocalypse.SAM.HighACC.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC,{})

	-- Apocalypse(AM Up: SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM.STP = set_combine(sets.TP.Apocalypse.SAM.AM,{})
	sets.TP.Apocalypse.SAM.MidACC.AM.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC.AM,{})
	sets.TP.Apocalypse.SAM.HighACC.AM.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC.AM,{})

	-- Apocalypse(AM Down: High Haste + SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.HighHaste.STP = set_combine(sets.TP.Apocalypse.SAM.HighHaste,{})
	sets.TP.Apocalypse.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC.HighHaste,{})
	sets.TP.Apocalypse.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC.HighHaste,{})

	-- Apocalypse(AM Up: High Haste + SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.SAM.HighHaste,{})
	sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC.HighHaste,{})
	sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC.HighHaste,{})

	-- Apocalypse(AM Down: Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.Ionis,{})
	sets.TP.Apocalypse.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC.Ionis,{})
	sets.TP.Apocalypse.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC.Ionis,{})

	-- Apocalypse(AM Up: Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.AM,{})
	sets.TP.Apocalypse.SAM.MidACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC.AM,{})
	sets.TP.Apocalypse.SAM.HighACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC.AM,{})

	-- Apocalypse(AM Down: High Haste + Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.HighHaste,{})
	sets.TP.Apocalypse.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC.HighHaste,{})
	sets.TP.Apocalypse.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC.HighHaste,{})

	-- Apocalypse(AM Up: High Haste + Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Apocalypse.SAM.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.HighHaste,{})
	sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.MidACC.HighHaste,{})
	sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.SAM.HighACC.HighHaste,{})

	-- Caladbolg /SAM TP Sets --
	sets.TP.Caladbolg.SAM = {
							main="Caladbolg",
							ammo="Ginsen",
							head="Flamma Zucchetto +1",
                            neck="Lissome Necklace",
                            ear1="Cessance Earring",
                            ear2="Brutal Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
							waist="Ioskeha Belt",
							legs={ name="Odyssean Cuisses", augments={'"Store TP"+8','Accuracy+12','Attack+7',}},
							feet={ name="Valorous Greaves", augments={'Accuracy+7 Attack+7','"Store TP"+6','Accuracy+13','Attack+6',}}}
	sets.TP.Caladbolg.SAM.MidACC = set_combine(sets.TP.Caladbolg.SAM,{
							ring1="Ramuh Ring +1",
                            ring2="Ramuh Ring +1",
							waist="Olseni Belt"})
	sets.TP.Caladbolg.SAM.HighACC = set_combine(sets.TP.Caladbolg.SAM.MidACC,{
							head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
							back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
							feet={ name="Valorous Greaves", augments={'Accuracy+26','"Fast Cast"+3','INT+7 MND+7 CHR+7','Accuracy+15 Attack+15',}},})

	-- Caladbolg(High Haste) /SAM TP Sets --
	sets.TP.Caladbolg.SAM.HighHaste = set_combine(sets.TP.Caladbolg.SAM,{
							waist="Windbuffet Belt +1"})
	sets.TP.Caladbolg.SAM.MidACC.HighHaste = set_combine(sets.TP.Caladbolg.SAM.HighHaste,{})
	sets.TP.Caladbolg.SAM.HighACC.HighHaste = set_combine(sets.TP.Caladbolg.SAM.MidACC.HighHaste,{})

	-- Caladbolg(Ionis) /SAM TP Sets --
	sets.TP.Caladbolg.SAM.Ionis = set_combine(sets.TP.Caladbolg.SAM,{})
	sets.TP.Caladbolg.SAM.MidACC.Ionis = set_combine(sets.TP.Caladbolg.SAM.Ionis,{})
	sets.TP.Caladbolg.SAM.HighACC.Ionis = set_combine(sets.TP.Caladbolg.SAM.MidACC.Ionis,{})

	-- Caladbolg(High Haste + Ionis) /SAM TP Sets --
	sets.TP.Caladbolg.SAM.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.SAM.HighHaste,{})
	sets.TP.Caladbolg.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.SAM.HighHaste.Ionis,{})
	sets.TP.Caladbolg.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Caladbolg.SAM.MidACC.HighHaste.Ionis,{})

	-- Caladbolg(SAM Roll) /SAM TP Sets --
	sets.TP.Caladbolg.SAM.STP = set_combine(sets.TP.Caladbolg.SAM,{})
	sets.TP.Caladbolg.SAM.MidACC.STP = set_combine(sets.TP.Caladbolg.SAM.MidACC,{})
	sets.TP.Caladbolg.SAM.HighACC.STP = set_combine(sets.TP.Caladbolg.SAM.HighACC,{})

	-- Caladbolg(High Haste + SAM Roll) /SAM TP Sets --
	sets.TP.Caladbolg.SAM.HighHaste.STP = set_combine(sets.TP.Caladbolg.SAM.HighHaste,{})
	sets.TP.Caladbolg.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Caladbolg.SAM.MidACC.HighHaste,{})
	sets.TP.Caladbolg.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Caladbolg.SAM.HighACC.HighHaste,{})

	-- Caladbolg(Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Caladbolg.SAM.Ionis.STP = set_combine(sets.TP.Caladbolg.SAM.Ionis,{})
	sets.TP.Caladbolg.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Caladbolg.SAM.MidACC.Ionis,{})
	sets.TP.Caladbolg.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Caladbolg.SAM.HighACC.Ionis,{})

	-- Caladbolg(High Haste + Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Caladbolg.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.SAM.HighHaste,{})
	sets.TP.Caladbolg.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.SAM.MidACC.HighHaste,{})
	sets.TP.Caladbolg.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Caladbolg.SAM.HighACC.HighHaste,{})

	-- Anguta /SAM TP Sets --
	sets.TP.Anguta.SAM = {	main="Anguta",
							ammo="Ginsen",
                            head="Flamma Zucchetto +1",
                            neck="Ainia Collar",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body={ name="Valorous Mail", augments={'Accuracy+22','"Dbl.Atk."+5','STR+6',}},
                            hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
                            ring1="Rajas Ring",
                            ring2="Petrov Ring",
                            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
							waist="Ioskeha Belt",
							legs={ name="Odyssean Cuisses", augments={'"Store TP"+8','Accuracy+12','Attack+7',}},
							feet={ name="Valorous Greaves", augments={'Accuracy+7 Attack+7','"Store TP"+6','Accuracy+13','Attack+6',}}}
	sets.TP.Anguta.SAM.MidACC = set_combine(sets.TP.Anguta.SAM,{})
	sets.TP.Anguta.SAM.HighACC = set_combine(sets.TP.Anguta.SAM.MidACC,{})

	-- Anguta(High Haste) /SAM TP Sets --
	sets.TP.Anguta.SAM.HighHaste = set_combine(sets.TP.Anguta.SAM,{})
	sets.TP.Anguta.SAM.MidACC.HighHaste = set_combine(sets.TP.Anguta.SAM.HighHaste,{})
	sets.TP.Anguta.SAM.HighACC.HighHaste = set_combine(sets.TP.Anguta.SAM.MidACC.HighHaste,{})

	-- Anguta(Ionis) /SAM TP Sets --
	sets.TP.Anguta.SAM.Ionis = set_combine(sets.TP.Anguta.SAM,{})
	sets.TP.Anguta.SAM.MidACC.Ionis = set_combine(sets.TP.Anguta.SAM.Ionis,{})
	sets.TP.Anguta.SAM.HighACC.Ionis = set_combine(sets.TP.Anguta.SAM.MidACC.Ionis,{})

	-- Anguta(High Haste + Ionis) /SAM TP Sets --
	sets.TP.Anguta.SAM.HighHaste.Ionis = set_combine(sets.TP.Anguta.SAM.HighHaste,{})
	sets.TP.Anguta.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Anguta.SAM.HighHaste.Ionis,{})
	sets.TP.Anguta.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Anguta.SAM.MidACC.HighHaste.Ionis,{})

	-- Anguta(SAM Roll) /SAM TP Sets --
	sets.TP.Anguta.SAM.STP = set_combine(sets.TP.Anguta.SAM,{})
	sets.TP.Anguta.SAM.MidACC.STP = set_combine(sets.TP.Anguta.SAM.MidACC,{})
	sets.TP.Anguta.SAM.HighACC.STP = set_combine(sets.TP.Anguta.SAM.HighACC,{})

	-- Anguta(High Haste + SAM Roll) /SAM TP Sets --
	sets.TP.Anguta.SAM.HighHaste.STP = set_combine(sets.TP.Anguta.SAM.HighHaste,{})
	sets.TP.Anguta.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Anguta.SAM.MidACC.HighHaste,{})
	sets.TP.Anguta.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Anguta.SAM.HighACC.HighHaste,{})

	-- Anguta(Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Anguta.SAM.Ionis.STP = set_combine(sets.TP.Anguta.SAM.Ionis,{})
	sets.TP.Anguta.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Anguta.SAM.MidACC.Ionis,{})
	sets.TP.Anguta.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Anguta.SAM.HighACC.Ionis,{})

	-- Anguta(High Haste + Ionis + SAM Roll) /SAM TP Sets --
	sets.TP.Anguta.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Anguta.SAM.HighHaste,{})
	sets.TP.Anguta.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Anguta.SAM.MidACC.HighHaste,{})
	sets.TP.Anguta.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Anguta.SAM.HighACC.HighHaste,{})

	-- AM3 Rancor ON Mantle --
	sets.TP.Rancor = {      head={ name="Valorous Mask", augments={'AGI+12','"Store TP"+4','Haste+2','Accuracy+17 Attack+17','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
							hands="Flam. Manopolas +1",
							left_ring="Hetairoi Ring",
							right_ring="Begrudging Ring",
							back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
							feet={ name="Valorous Greaves", augments={'Attack+24','Crit. hit damage +2%','Accuracy+1',}},}

	-- PDT/MDT Sets --
	sets.PDT = {
							ammo="Staunch Tathlum",
                            head="Sulevia's Mask +1",
                            neck="Loricate Torque +1",
                            ear1="Odnowa Earring",
                            ear2="Odnowa Earring +1",
                            body="Tartarus Platemail",
                            hands="Sulevia's Gauntlets +1",
                            ring1="Defending Ring",
                            ring2="Gelatinous Ring",
                            back="Shadow Mantle",
                            waist="Tempus Fugit",
                            legs="Sulevia's Cuisses +1",
                            feet="Sulevia's Leggings +1"}

	sets.MDT = set_combine(sets.PDT,{
							ammo="Staunch Tathlum",
                            head="Sulevia's Mask +1",
                            neck="Loricate Torque +1",
                            ear1="Etiolation Earring",
                            ear2="Odnowa Earring +1",
                            body="Tartarus Platemail",
                            hands="Sulevia's Gauntlets +1",
                            ring1="Defending Ring",
                            ring2="Gelatinous Ring",
                            back="Solemnity Cape",
                            waist="Tempus Fugit",
                            legs="Sulevia's Cuisses +1",
                            feet="Sulevia's Leggings +1"})

	sets.Scarlet = set_combine(sets.PDT,{
							ammo="Eluder's Sachet",
                            head="Onyx Sallet",
                            neck="Bale Choker",
                            ear1="Cessance Earring",
                            ear2="Ishvara Earring",
                            body="Plastron +1",
                            hands="Onyx Gadlings",
                            ring1="Minerva's Ring",
                            ring2="Mars's Ring",
                            back="Rancorous Mantle",
                            waist="Gishdubar Sash",
                            legs="Onyx Cuisses",
                            feet="Onyx Sollerets"})

	-- Hybrid Set --
	sets.TP.Hybrid = set_combine(sets.PDT,{
							ammo="Seething Bomblet +1",
                            head="Sulevia's Mask +1",
                            neck="Loricate Torque +1",
                            ear1="Cessance Earring",
                            ear2="Telos Earring",
                            body="Tartarus Platemail",
                            hands="Sulevia's Gauntlets +1",
                            ring1="Defending Ring",
                            ring2="Ramuh Ring +1",
                            back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
                            waist="Tempus Fugit",
                            legs="Sulevia's Cuisses +1",
                            feet="Sulevia's Leggings +1"})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	-- WS Base Set --
	sets.WS = {
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Moonshade Earring",
                            ear2="Telos Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Niqmaddu Ring",
                            ring2="Karieyh Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"}

	-- Resolution Sets --
	sets.WS.Resolution = {
							ammo="Seething Bomblet +1",
                            head="Argosy Celata +1",
                            neck="Fotia Gorget",
                            ear1="Bale Earring",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands="Argosy Mufflers +1",
                            ring1="Niqmaddu Ring",
                            ring2="Rajas Ring",
                            back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
                            waist="Fotia Belt",
                            legs="Argosy Breeches +1",
                            feet="Argosy Sollerets +1"}
	sets.WS.Resolution.MidACC = set_combine(sets.WS.Resolution,{
							ear1="Zwazo Earring +1"})
	sets.WS.Resolution.HighACC = set_combine(sets.WS.Resolution.MidACC,{})
	sets.WS.Resolution.MaxACC = set_combine(sets.WS.Resolution.HighACC,{})

	-- Torcleaver Sets --
            sets.WS.Torcleaver = {
							ammo="Knobkierrie",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Ishvara Earring",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Niqmaddu Ring",
                            back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"}
            sets.WS.Torcleaver.MidACC = set_combine(sets.WS.Torcleaver,{
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Ishvara Earring",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Supershear Ring",
                            back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"})
            sets.WS.Torcleaver.HighACC = set_combine(sets.WS.Torcleaver.MidACC,{
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Zwazo Earring +1",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Supershear Ring",
                            back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"})
			sets.WS.Torcleaver.MaxACC = set_combine(sets.WS.Torcleaver.HighACC,{})

-- Scourge Sets --
            sets.WS.Scourge = {
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Bale Earring",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Niqmaddu Ring",
                            back={name ="Ankou's Mantle", augments={'STR +20'}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"}
            sets.WS.Scourge.MidACC = set_combine(sets.WS.Scourge,{})
            sets.WS.Scourge.HighACC = set_combine(sets.WS.Scourge.MidACC,{})

	-- Resolution(Attack) Set --
	sets.WS.Resolution.ATT = set_combine(sets.WS.Resolution,{})

	-- Catastrophe Sets --
	sets.WS.Catastrophe = {
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Bale Earring",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Niqmaddu Ring",
                            back={name ="Ankou's Mantle", augments={'STR +20'}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"}
	sets.WS.Catastrophe.MidACC = set_combine(sets.WS.Catastrophe,{})
	sets.WS.Catastrophe.HighACC = set_combine(sets.WS.Catastrophe.MidACC,{})
	sets.WS.Catastrophe.MaxACC = set_combine(sets.WS.Catastrophe.MidACC,{})

	-- Catastrophe(Attack) Set --
	sets.WS.Catastrophe.ATT = set_combine(sets.WS.Catastrophe,{})

	-- Entropy Sets --
	sets.WS.Entropy = {
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Zwazo Earring +1",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Niqmaddu Ring",
                            back={name ="Ankou's Mantle", augments={'STR +20'}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"}
	sets.WS.Entropy.MidACC = set_combine(sets.WS.Entropy,{})
	sets.WS.Entropy.HighACC = set_combine(sets.WS.Entropy.MidACC,{})

	-- CrossReaper Sets --
	sets.WS.CrossReaper = {
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Zwazo Earring +1",
                            ear2="Moonshade Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Niqmaddu Ring",
                            back={name ="Ankou's Mantle", augments={'STR +20'}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"}
	sets.WS.CrossReaper.MidACC = set_combine(sets.WS.CrossReaper,{})
	sets.WS.CrossReaper.HighACC = set_combine(sets.WS.CrossReaper.MidACC,{})

	-- Entropy(Attack) Set --
	sets.WS.Entropy.ATT = set_combine(sets.WS.Entropy,{})

	-- Insurgency Sets --
	sets.WS.Insurgency = {
							ammo="Seething Bomblet +1",
                            head={ name="Odyssean Helm", augments={'Accuracy+20 Attack+20','Weapon skill damage +5%','Attack+6',}},
                            neck="Fotia Gorget",
                            ear1="Moonshade Earring",
                            ear2="Telos Earring",
                            body="Ignominy Cuirass +3",
                            hands={ name="Odyssean Gauntlets", augments={'Accuracy+28','Weapon skill damage +5%','Attack+4',}},
                            ring1="Karieyh Ring",
                            ring2="Niqmaddu Ring",
                            back={ name="Ankou's Mantle", augments={'Accuracy+20 Attack+20','"Store TP"+10',}},
                            waist="Fotia Belt",
                            legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','DEX+10','Weapon skill damage +6%',}},
                            feet="Sulevia's Leggings +1"}
	sets.WS.Insurgency.MidACC = set_combine(sets.WS.Insurgency,{})
	sets.WS.Insurgency.HighACC = set_combine(sets.WS.Insurgency.MidACC,{})

	-- JA Sets --
	sets.JA = {}
	sets.JA["Blood Weapon"] = {body="Fallen's Cuirass"}
	sets.JA["Diabolic Eye"] = {hands="Fall. Fin. Gaunt. +1"}
	sets.JA["Weapon Bash"] = {hands="Ignominy Gauntlets +2"}
	sets.JA["Nether Void"] = {legs="Heath. Flanchard +1"}
	sets.JA["Arcane Circle"] = {feet="Ignominy Sollerets"}
	sets.JA["Last Resort"] = {back="Ankou's Mantle",feet="Fall. Sollerets +1"}

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
							ammo="Impatiens",
                            head="Carmine Mask +1",
							neck="Baetyl Pendant",
                            ear1="Loquac. Earring",
							ear2="Etiolation Earring",
							body={name ="Odyssean Chestplate", augments={'CHR +8'}},
							hands="Leyline Gloves",
                            ring1="Kishar Ring",
                            ring2="Rahab Ring",
							back={name ="Ankou's Mantle", augments={'INT +20'}},
							legs="Eschite Cuisses",
							feet={name="Odyssean Greaves", augments={'MND +8'}}}

	-- Precast Dark Magic --
	sets.Precast['Dark Magic'] = set_combine(sets.Precast.FastCast,{head="Carmine Mask +1"})

	-- Midcast Base Set --
	sets.Midcast = {
							ammo="Impatiens",
                            head="Carmine Mask +1",
							neck="Baetyl Pendant",
                            ear1="Loquac. Earring",
							ear2="Etiolation Earring",
							body={name ="Odyssean Chestplate", augments={'"Attack" +14'}},
							hands="Leyline Gloves",
                            ring1="Kishar Ring",
                            ring2="Lebeche Ring",
							back={name ="Ankou's Mantle", augments={'INT +20'}},
							waist="Ninurta's Sash",
							legs="Eschite Cuisses",
							feet={name="Odyssean Greaves", augments={'MND +8'}}}

	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{
							ammo="Impatiens",
                            head="Carmine Mask +1",
							neck="Baetyl Pendant",
                            ear1="Loquac. Earring",
							ear2="Etiolation Earring",
							body={name ="Odyssean Chestplate", augments={'"Attack" +14'}},
							hands="Leyline Gloves",
                            ring1="Kishar Ring",
                            ring2="Lebeche Ring",
							back={name ="Ankou's Mantle", augments={'INT +20'}},
							waist="Ninurta's Sash",
							legs="Eschite Cuisses",
							feet={name="Odyssean Greaves", augments={'MND +8'}}})

	-- Dark Magic Set --
	sets.Midcast['Dark Magic'] = {
							ammo="Pemphredo Tathlum",
							head="Pixie Hairpin +1",
                            neck="Erra Pendant",
                            ear1="Dignitary's Earring",
                            ear2="Dark Earring",
                            body={ name="Carm. Sc. Mail +1", augments={'MP+80','INT+12','MND+12',}},
                            hands="Fallen's Finger Gauntlets +1",
                            ring1="Archon ring",
                            ring2="Evanescence Ring",
                            back={name ="Niht Mantle", augments={'"Attack" +14'}},
                            waist="Casso Sash",
                            legs="Eschite Cuisses",
                            feet={ name="Odyssean Greaves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -4%','INT+9','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},}

	-- Absorb Set --
            sets.Midcast.Absorb = {
							ammo="Pemphredo Tathlum",
							head="Carmine Mask +1",
                            neck="Erra Pendant",
                            ear1="Gwati Earring",
                            ear2="Dignitary's Earring",
                            body={ name="Carm. Sc. Mail +1", augments={'MP+80','INT+12','MND+12',}},
                            hands="Leyline Gloves",
                            ring1="Sangoma ring",
                            ring2="Evanescence Ring",
                            back={name ="Ankou's Mantle", augments={'INT +20'}},
                            waist="Eschan Stone",
                            legs="Eschite Cuisses",
                            feet={ name="Odyssean Greaves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -4%','INT+9','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},}
			sets.Midcast.Absorb.MidACC = set_combine(sets.Midcast.Absorb,{
							hands="Leyline Gloves",
							back={name ="Ankou's Mantle", augments={'INT +20'}}})
			sets.Midcast.Absorb.HighACC = set_combine(sets.Midcast.Absorb.MidACC,{})
			sets.Midcast.Absorb.MaxACC = set_combine(sets.Midcast.Absorb.HighACC,{})
	-- Absorb-TP Set --
            sets.Midcast['Absorb-TP'] = set_combine(sets.Midcast.Absorb,{hands="Heathen's Gauntlets +1"})

	-- Stun Sets --
	sets.Midcast.Stun = {
							ammo="Pemphredo Tathlum",
							head="Carmine Mask +1",
                            neck="Erra Pendant",
                            ear1="Gwati Earring",
                            ear2="Dignitary's Earring",
                            body={ name="Carm. Sc. Mail +1", augments={'MP+80','INT+12','MND+12',}},
                            hands="Leyline Gloves",
                            ring1="Sangoma ring",
                            ring2="Evanescence Ring",
                            back={name ="Ankou's Mantle", augments={'INT +20'}},
                            waist="Eschan Stone",
                            legs="Eschite Cuisses",
                            feet={ name="Odyssean Greaves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -4%','INT+9','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},}
	sets.Midcast.Stun.MidACC = set_combine(sets.Midcast.Stun,{})
	sets.Midcast.Stun.HighACC = set_combine(sets.Midcast.Stun.MidACC,{})

	-- Endark Set --
	sets.Midcast.Endark2 = {
							head="Ignominy Burgeonet +1",
                            neck="Incanter's Torque",
                            ear1="Abyssal Earring",
                            ear2="Dark Earring",
                            body={ name="Carm. Sc. Mail +1", augments={'MP+80','INT+12','MND+12',}},
                            hands="Fallen's Finger Gauntlets +1",
                            ring1="Sangoma ring",
                            ring2="Evanescence Ring",
                            back={name ="Niht Mantle", augments={'"Attack" +14'}},
                            waist="Casso Sash",
                            legs="Eschite Cuisses",
                            feet={ name="Odyssean Greaves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -4%','INT+9','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},}

	-- Enfeebling Magic Set --
	sets.Midcast['Enfeebling Magic'] = {
							ammo="Pemphredo Tathlum",
							head="Carmine Mask +1",
                            neck="Incanter's Torque",
                            ear1="Lifestorm Earring",
                            ear2="Psystorm Earring",
                            body={ name="Carm. Sc. Mail +1", augments={'MP+80','INT+12','MND+12',}},
                            hands="Leyline Gloves",
                            ring1="Sangoma ring",
                            ring2="Evanescence Ring",
                            back={name ="Ankou's Mantle", augments={'INT +20'}},
                            waist="Eschan Stone",
                            legs="Eschite Cuisses",
                            feet={ name="Odyssean Greaves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -4%','INT+9','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},}

	-- Elemental Magic Set --
	sets.Midcast['Elemental Magic'] = {
							ammo="Pemphredo Tathlum",
							head="Carmine Mask +1",
                            neck="Incanter's Torque",
                            ear1="Lifestorm Earring",
                            ear2="Psystorm Earring",
                            body={ name="Carm. Sc. Mail +1", augments={'MP+80','INT+12','MND+12',}},
                            hands="Leyline Gloves",
                            ring1="Sangoma ring",
                            ring2="Evanescence Ring",
                            back={name ="Ankou's Mantle", augments={'INT +20'}},
                            waist="Eschan Stone",
                            legs="Eschite Cuisses",
                            feet={ name="Odyssean Greaves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -4%','INT+9','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},}

	-- Dread Spikes Set --
	sets.Midcast['Dread Spikes'] = {
							ammo="Egoist's Tathlum",
							head="Odyssean Helm",
							neck="Cuamiz Collar",
                            ear1="Odnowa Earring",
							ear2="Odnowa Earring +1",
                            body="Heathen's Cuirass +1",
                            hands="Eschite Gauntlets",
                            ring1="K'ayres Ring",
                            ring2="Meridian Ring",
							back="Reiki Cloak",
                            waist="Oneiros Belt",
                            legs="Argosy Breeches +1",
                            feet="Amm Greaves"}
	organizer_items = {
			echos="Echo Drops",
			food="Sublime Sushi",
			food="Red Curry Bun"}
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
	equipSet = {}
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


function status_change(new,old)
	check_equip_lock()
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif Armor == 'Scarlet' then
		equip(sets.Scarlet)
	elseif new == 'Engaged' then
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
    			if buffactive["Last Resort"] and ((buffactive.Haste and buffactive.March == 2) or (buffactive.Embrava and (buffactive.March == 2 or (buffactive.March and buffactive.Haste) or (buffactive.March and buffactive['Mighty Guard']) or (buffactive['Mighty Guard'] and buffactive.Haste))) or (buffactive[580] and (buffactive.March or buffactive.Haste or buffactive.Embrava or buffactive['Mighty Guard']))) and equipSet["HighHaste"] then
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
		if buffactive["Last Resort"] and ((buffactive.Haste and buffactive.March == 2) or (buffactive.Embrava and (buffactive.March == 2 or (buffactive.March and buffactive.Haste) or (buffactive.March and buffactive['Mighty Guard']) or (buffactive['Mighty Guard'] and buffactive.Haste))) or (buffactive[580] and (buffactive.March or buffactive.Haste or buffactive.Embrava or buffactive['Mighty Guard']))) and equipSet["HighHaste"] then
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
		if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
			equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
		end
		if world.area:endswith('Adoulin') then
			equipSet = set_combine(equipSet,{body="Councilor's Garb"})
		end
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

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		status_change(player.status)
		add_to_chat(158,'Accuracy Level: '..AccArray[AccIndex])
	elseif command == 'C17' then -- Main Weapon Toggle --
		WeaponIndex = (WeaponIndex % #WeaponArray) + 1
		add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
		status_change(player.status)
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
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C15' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
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

function check_equip_lock() -- Lock Equipment Here --
	if player.equipment.left_ring == "Warp Ring" or player.equipment.left_ring == "Capacity Ring" or player.equipment.right_ring == "Warp Ring" or player.equipment.right_ring == "Capacity Ring" then
		disable('ring1','ring2')
	elseif player.equipment.back == "Mecisto. Mantle" or player.equipment.back == "Aptitude Mantle +1" or player.equipment.back == "Aptitude Mantle" then
		disable('back')
	else
		enable('ring1','ring2','back')
	end
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
	if player.sub_job == 'WAR' then
		set_macro_page(1, 8)
	elseif player.sub_job == 'SAM' then
		set_macro_page(2, 8)
	elseif player.sub_job == 'NIN' then
		set_macro_page(3, 8)
	elseif player.sub_job == 'DNC' then
		set_macro_page(9, 6)
	elseif player.sub_job == 'SCH' then
		set_macro_page(8, 6)
	else
		set_macro_page(1, 8)
	end
end
