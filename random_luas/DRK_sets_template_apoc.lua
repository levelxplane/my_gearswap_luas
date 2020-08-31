    -------------------------------------------------------------------------------------------------------
    -- Apocalypse(AM Down) TP Sets ------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------


    -- You can ignore this until you get an Apocalypse
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

    -------------------------------------------------------------------------------------------------------
    -- Apocalypse(AM Down) /SAM TP Sets -------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.Apocalypse.SAM = sets.TP.Apocalypse
    sets.TP.Apocalypse.SAM.MidACC = set_combine(sets.TP.Apocalypse.MidACC, {})
    sets.TP.Apocalypse.SAM.HighACC = set_combine(sets.TP.Apocalypse.HighACC, {})

    -- Apocalypse(AM Up) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM = set_combine(sets.TP.Apocalypse.AM, {})
    sets.TP.Apocalypse.SAM.MidACC.AM = set_combine(sets.TP.Apocalypse.MidACC.AM, {})
    sets.TP.Apocalypse.SAM.HighACC.AM = set_combine(sets.TP.Apocalypse.HighACC.AM, {})

    -- Apocalypse(AM Down: High Haste) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.HighHaste = set_combine(sets.TP.Apocalypse.HighHaste, {})
    sets.TP.Apocalypse.SAM.MidACC.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.HighHaste, {})
    sets.TP.Apocalypse.SAM.HighACC.HighHaste = set_combine(sets.TP.Apocalypse.HighACC.HighHaste, {})

    -- Apocalypse(AM Up: High Haste) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM.HighHaste = set_combine(sets.TP.Apocalypse.AM.HighHaste, {})
    sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste, {})
    sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste, {})

    -- Apocalypse(AM Down: Ionis) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.Ionis = set_combine(sets.TP.Apocalypse.Ionis, {})
    sets.TP.Apocalypse.SAM.MidACC.Ionis = set_combine(sets.TP.Apocalypse.MidACC.Ionis, {})
    sets.TP.Apocalypse.SAM.HighACC.Ionis = set_combine(sets.TP.Apocalypse.HighACC.Ionis, {})

    -- Apocalypse(AM Up: Ionis) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM.Ionis = set_combine(sets.TP.Apocalypse.AM.Ionis, {})
    sets.TP.Apocalypse.SAM.MidACC.AM.Ionis = set_combine(sets.TP.Apocalypse.MidACC.AM.Ionis, {})
    sets.TP.Apocalypse.SAM.HighACC.AM.Ionis = set_combine(sets.TP.Apocalypse.HighACC.AM.Ionis, {})

    -- Apocalypse(AM Down: High Haste + Ionis) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighHaste.Ionis, {})
    sets.TP.Apocalypse.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.Ionis, {})
    sets.TP.Apocalypse.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighACC.HighHaste.Ionis, {})

    -- Apocalypse(AM Up: High Haste + Ionis) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.AM.HighHaste.Ionis, {})
    sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis, {})
    sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.Ionis = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste.Ionis, {})

    -- Apocalypse(AM Down: SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.STP = set_combine(sets.TP.Apocalypse.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.STP = set_combine(sets.TP.Apocalypse.MidACC.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.STP = set_combine(sets.TP.Apocalypse.HighACC.STP, {})

    -- Apocalypse(AM Up: SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM.STP = set_combine(sets.TP.Apocalypse.AM.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.AM.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.AM.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.STP, {})

    -- Apocalypse(AM Down: High Haste + SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighHaste.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste.STP, {})

    -- Apocalypse(AM Up: High Haste + SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.AM.HighHaste.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste.STP, {})

    -- Apocalypse(AM Down: Ionis + SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.Ionis.STP = set_combine(sets.TP.Apocalypse.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.Ionis.STP, {})

    -- Apocalypse(AM Up: Ionis + SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.AM.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.AM.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.Ionis.STP, {})

    -- Apocalypse(AM Down: High Haste + Ionis + SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighHaste.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.HighHaste.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.HighHaste.Ionis.STP, {})

    -- Apocalypse(AM Up: High Haste + Ionis + SAM Roll) /SAM TP Sets --
    sets.TP.Apocalypse.SAM.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.AM.HighHaste.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.MidACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.MidACC.AM.HighHaste.Ionis.STP, {})
    sets.TP.Apocalypse.SAM.HighACC.AM.HighHaste.Ionis.STP = set_combine(sets.TP.Apocalypse.HighACC.AM.HighHaste.Ionis.STP, {})
