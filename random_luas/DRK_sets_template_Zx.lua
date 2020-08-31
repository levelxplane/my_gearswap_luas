    -------------------------------------------------------------------------------------------------------
    ------------------------------------------Zantetsuken X------------------------------------------------
    -------------------------------------------------------------------------------------------------------


    -- You can ignore this until you get an ZantetsukenX
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

    -------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.ZantetsukenX.SAM = sets.TP.ZantetsukenX
    sets.TP.ZantetsukenX.SAM.MidACC = set_combine(sets.TP.ZantetsukenX.MidACC, {})
    sets.TP.ZantetsukenX.SAM.HighACC = set_combine(sets.TP.ZantetsukenX.HighACC, {})

    sets.TP.ZantetsukenX.SAM.HighHaste = set_combine(sets.TP.ZantetsukenX.HighHaste, {})
    sets.TP.ZantetsukenX.SAM.MidACC.HighHaste = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste, {})
    sets.TP.ZantetsukenX.SAM.HighACC.HighHaste = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste, {})

    sets.TP.ZantetsukenX.SAM.Ionis = set_combine(sets.TP.ZantetsukenX.Ionis, {})
    sets.TP.ZantetsukenX.SAM.MidACC.Ionis = set_combine(sets.TP.ZantetsukenX.MidACC.Ionis, {})
    sets.TP.ZantetsukenX.SAM.HighACC.Ionis = set_combine(sets.TP.ZantetsukenX.HighACC.Ionis, {})

    sets.TP.ZantetsukenX.SAM.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.HighHaste.Ionis, {})
    sets.TP.ZantetsukenX.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste.Ionis, {})
    sets.TP.ZantetsukenX.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste.Ionis, {})

    sets.TP.ZantetsukenX.SAM.STP = set_combine(sets.TP.ZantetsukenX.STP, {})
    sets.TP.ZantetsukenX.SAM.MidACC.STP = set_combine(sets.TP.ZantetsukenX.MidACC.STP, {})
    sets.TP.ZantetsukenX.SAM.HighACC.STP = set_combine(sets.TP.ZantetsukenX.HighACC.STP, {})

    sets.TP.ZantetsukenX.SAM.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.HighHaste.STP, {})
    sets.TP.ZantetsukenX.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste.STP, {})
    sets.TP.ZantetsukenX.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste.STP, {})

    sets.TP.ZantetsukenX.SAM.Ionis.STP = set_combine(sets.TP.ZantetsukenX.Ionis.STP, {})
    sets.TP.ZantetsukenX.SAM.MidACC.Ionis.STP = set_combine(sets.TP.ZantetsukenX.MidACC.Ionis.STP, {})
    sets.TP.ZantetsukenX.SAM.HighACC.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighACC.Ionis.STP, {})

    sets.TP.ZantetsukenX.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighHaste.Ionis.STP, {})
    sets.TP.ZantetsukenX.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.MidACC.HighHaste.Ionis.STP, {})
    sets.TP.ZantetsukenX.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.ZantetsukenX.HighACC.HighHaste.Ionis.STP, {})
