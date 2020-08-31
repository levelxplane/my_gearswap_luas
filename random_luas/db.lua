
sets.Idle.Regen.Deathbane = set_combine(sets.Idle.Regen,{
        main="Deathbane"})
sets.Idle.Regen.Deathbane.SAM = set_combine(sets.Idle.Regen,{
        main="Deathbane"})


sets.Idle.Movement.Deathbane = set_combine(sets.Idle.Movement,{
        main="Deathbane"})
sets.Idle.Movement.Deathbane.SAM = set_combine(sets.Idle.Movement,{
        main="Deathbane"})

-- Refresh Sets --
sets.Idle.Refresh.Deathbane = set_combine(sets.Idle.Refresh,{
        main="Deathbane"})
sets.Idle.Refresh.Deathbane.SAM = set_combine(sets.Idle.Refresh,{
        main="Deathbane"})

-- Regain Sets --
sets.Idle.Regain.Deathbane = set_combine(sets.Idle.Regain,{
        main="Deathbane"})
sets.Idle.Regain.Deathbane.SAM = set_combine(sets.Idle.Regain,{
        main="Deathbane"})

-------------------------------------------------------------------------------------------------------
-- Deathbane TP Sets -------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
sets.TP.Deathbane = set_combine(
    drk_gear.tp_low_acc,
    {main="Deathbane", sub="Utu Grip"}
)
sets.TP.Deathbane.MidACC = set_combine(sets.TP.Deathbane,{feet="Flam. Gambieras +2"})
sets.TP.Deathbane.HighACC = set_combine(sets.TP.Deathbane.MidACC,{})

-- Deathbane(High Haste) TP Sets --
sets.TP.Deathbane.HighHaste = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.MidACC.HighHaste = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.HighACC.HighHaste = set_combine(sets.TP.Deathbane,{})
-- Deathbane(Ionis) TP Sets --
sets.TP.Deathbane.Ionis = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.MidACC.Ionis = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.HighACC.Ionis = set_combine(sets.TP.Deathbane,{})

-- Deathbane(High Haste + Ionis) TP Sets --
sets.TP.Deathbane.HighHaste.Ionis = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.MidACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.HighACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane,{})
-- Deathbane(SAM Roll) TP Sets --
sets.TP.Deathbane.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.MidACC.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.HighACC.STP = set_combine(sets.TP.Deathbane,{})

-- Deathbane(High Haste + SAM Roll) TP Sets --
sets.TP.Deathbane.HighHaste.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.MidACC.HighHaste.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.HighACC.HighHaste.STP = set_combine(sets.TP.Deathbane,{})

-- Deathbane(Ionis + SAM Roll) TP Sets --
sets.TP.Deathbane.Ionis.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.MidACC.Ionis.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.HighACC.Ionis.STP = set_combine(sets.TP.Deathbane,{})

-- Deathbane(High Haste + Ionis + SAM Roll) TP Sets --
sets.TP.Deathbane.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane,{})

-------------------------------------------------------------------------------------------------------
-- Deathbane /SAM TP Sets --------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
sets.TP.Deathbane.SAM = sets.TP.Deathbane
sets.TP.Deathbane.SAM.MidACC = set_combine(sets.TP.Deathbane.MidACC,{})
sets.TP.Deathbane.SAM.HighACC = set_combine(sets.TP.Deathbane.HighACC,{})

-- Deathbane(High Haste) /SAM TP Sets --
sets.TP.Deathbane.SAM.HighHaste = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.SAM.MidACC.HighHaste = set_combine(sets.TP.Deathbane.HighHaste,{})
sets.TP.Deathbane.SAM.HighACC.HighHaste = set_combine(sets.TP.Deathbane.MidACC.HighHaste,{})

-- Deathbane(Ionis) /SAM TP Sets --
sets.TP.Deathbane.SAM.Ionis = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.SAM.MidACC.Ionis = set_combine(sets.TP.Deathbane.Ionis,{})
sets.TP.Deathbane.SAM.HighACC.Ionis = set_combine(sets.TP.Deathbane.MidACC.Ionis,{})

-- Deathbane(High Haste + Ionis) /SAM TP Sets --
sets.TP.Deathbane.SAM.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighHaste,{})
sets.TP.Deathbane.SAM.MidACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.HighHaste.Ionis,{})
sets.TP.Deathbane.SAM.HighACC.HighHaste.Ionis = set_combine(sets.TP.Deathbane.MidACC.HighHaste.Ionis,{})

-- Deathbane(SAM Roll) /SAM TP Sets --
sets.TP.Deathbane.SAM.STP = set_combine(sets.TP.Deathbane,{})
sets.TP.Deathbane.SAM.MidACC.STP = set_combine(sets.TP.Deathbane.MidACC,{})
sets.TP.Deathbane.SAM.HighACC.STP = set_combine(sets.TP.Deathbane.HighACC,{})

-- Deathbane(High Haste + SAM Roll) /SAM TP Sets --
sets.TP.Deathbane.SAM.HighHaste.STP = set_combine(sets.TP.Deathbane.HighHaste,{})
sets.TP.Deathbane.SAM.MidACC.HighHaste.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste,{})
sets.TP.Deathbane.SAM.HighACC.HighHaste.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste,{})

-- Deathbane(Ionis + SAM Roll) /SAM TP Sets --
sets.TP.Deathbane.SAM.Ionis.STP = set_combine(sets.TP.Deathbane.Ionis,{})
sets.TP.Deathbane.SAM.MidACC.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.Ionis,{})
sets.TP.Deathbane.SAM.HighACC.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.Ionis,{})

-- Deathbane(High Haste + Ionis + SAM Roll) /SAM TP Sets --
sets.TP.Deathbane.SAM.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighHaste,{})
sets.TP.Deathbane.SAM.MidACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.MidACC.HighHaste,{})
sets.TP.Deathbane.SAM.HighACC.HighHaste.Ionis.STP = set_combine(sets.TP.Deathbane.HighACC.HighHaste,{})
