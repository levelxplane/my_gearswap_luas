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

    -------------------------------------------------------------------------------------------------------
    -- Deathbane /SAM -------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.Deathbane.SAM = sets.TP.Deathbane
    sets.TP.Deathbane.SAM.MidACC = set_combine(sets.TP.Deathbane.MidACC, {})
    sets.TP.Deathbane.SAM.HighACC = set_combine(sets.TP.Deathbane.HighACC, {})

    sets.TP.Deathbane.SAM.HighHaste = set_combine(sets.TP.Deathbane.HighHaste, {})
    sets.TP.Deathbane.SAM.MidACC.HighHaste = set_combine(sets.TP.Deathbane.MidACC.HighHaste, {})
    sets.TP.Deathbane.SAM.HighACC.HighHaste = set_combine(sets.TP.Deathbane.HighACC.HighHaste, {})

    sets.TP.Deathbane.SAM.Ionis = set_combine(sets.TP.Deathbane.Ionis, {})
    sets.TP.Deathbane.SAM.MidACC.Ionis = set_combine(sets.TP.Deathbane.MidACC.Ionis, {})
    sets.TP.Deathbane.SAM.HighACC.Ionis = set_combine(sets.TP.Deathbane.HighACC.Ionis, {})

    sets.TP.Deathbane.SAM.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighHaste.Ionis, {})
    sets.TP.Deathbane.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.MidACC.HighHaste.Ionis, {})
    sets.TP.Deathbane.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighACC.HighHaste.Ionis, {})

    sets.TP.Deathbane.SAM.STP = set_combine(sets.TP.Deathbane.STP, {})
    sets.TP.Deathbane.SAM.MidACC.STP = set_combine(sets.TP.Deathbane.MidACC.STP, {})
    sets.TP.Deathbane.SAM.HighACC.STP = set_combine(sets.TP.Deathbane.HighACC.STP, {})

    sets.TP.Deathbane.SAM.HighHaste.STP = set_combine(sets.TP.Deathbane.HighHaste.STP, {})
    sets.TP.Deathbane.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste.STP, {})
    sets.TP.Deathbane.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste.STP, {})

    sets.TP.Deathbane.SAM.Ionis.STP = set_combine(sets.TP.Deathbane.Ionis.STP, {})
    sets.TP.Deathbane.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.Ionis.STP, {})
    sets.TP.Deathbane.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.Ionis.STP, {})

    sets.TP.Deathbane.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighHaste.Ionis.STP, {})
    sets.TP.Deathbane.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste.Ionis.STP, {})
    sets.TP.Deathbane.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste.Ionis.STP, {})
