    -------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------


    -- You can ignore this until you get an EmpyreanTrainer
    sets.TP.EmpyreanTrainer = set_combine(
        drk_gear.tp_low_acc,
        {main="Break Blade", sub="Utu Grip"}
    )
    sets.TP.EmpyreanTrainer.MidACC = set_combine(sets.TP.EmpyreanTrainer,  drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC = set_combine(sets.TP.EmpyreanTrainer.MidACC,{})




    sets.TP.EmpyreanTrainer.HighHaste = set_combine(sets.TP.EmpyreanTrainer,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.HighHaste, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste,{})

    sets.TP.EmpyreanTrainer.Ionis = set_combine(sets.TP.EmpyreanTrainer,{})
    sets.TP.EmpyreanTrainer.MidACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.Ionis, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis,{})

    sets.TP.EmpyreanTrainer.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighHaste,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighHaste.Ionis, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis,{})

    sets.TP.EmpyreanTrainer.STP = set_combine(sets.TP.EmpyreanTrainer,{})
    sets.TP.EmpyreanTrainer.MidACC.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC, drk_gear.tp_mid_acc)
    sets.TP.EmpyreanTrainer.HighACC.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC,{})

    sets.TP.EmpyreanTrainer.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste,{})
    sets.TP.EmpyreanTrainer.HighACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste,{})

    sets.TP.EmpyreanTrainer.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.Ionis,{})
    sets.TP.EmpyreanTrainer.MidACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis,{})
    sets.TP.EmpyreanTrainer.HighACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.Ionis,{})

    sets.TP.EmpyreanTrainer.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste,{})
    sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste,{})
    sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste,{})

    -------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------
    sets.TP.EmpyreanTrainer.SAM = sets.TP.EmpyreanTrainer
    sets.TP.EmpyreanTrainer.SAM.MidACC = set_combine(sets.TP.EmpyreanTrainer.MidACC, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC = set_combine(sets.TP.EmpyreanTrainer.HighACC, {})

    sets.TP.EmpyreanTrainer.SAM.HighHaste = set_combine(sets.TP.EmpyreanTrainer.HighHaste, {})
    sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste, {})

    sets.TP.EmpyreanTrainer.SAM.Ionis = set_combine(sets.TP.EmpyreanTrainer.Ionis, {})
    sets.TP.EmpyreanTrainer.SAM.MidACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighACC.Ionis, {})

    sets.TP.EmpyreanTrainer.SAM.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighHaste.Ionis, {})
    sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis, {})

    sets.TP.EmpyreanTrainer.SAM.STP = set_combine(sets.TP.EmpyreanTrainer.STP, {})
    sets.TP.EmpyreanTrainer.SAM.MidACC.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.STP, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.STP, {})

    sets.TP.EmpyreanTrainer.SAM.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste.STP, {})
    sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.STP, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste.STP, {})

    sets.TP.EmpyreanTrainer.SAM.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.Ionis.STP, {})
    sets.TP.EmpyreanTrainer.SAM.MidACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.Ionis.STP, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.Ionis.STP, {})

    sets.TP.EmpyreanTrainer.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighHaste.Ionis.STP, {})
    sets.TP.EmpyreanTrainer.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.MidACC.HighHaste.Ionis.STP, {})
    sets.TP.EmpyreanTrainer.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.EmpyreanTrainer.HighACC.HighHaste.Ionis.STP, {})
