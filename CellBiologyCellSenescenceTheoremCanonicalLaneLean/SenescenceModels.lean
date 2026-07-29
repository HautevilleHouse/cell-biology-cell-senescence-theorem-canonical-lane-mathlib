import HautevilleHouse.CellBiologyCellSenescenceTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescencePathway where
  p53Signaling : Prop
  p16INK4aUpregulation : Prop
  senescenceAssociatedSecretoryPhenotype : Prop

structure SenescenceCascade (P : SenescencePathway) where
  initialStimulus : Prop
  signalTransduction : Prop
  growthArrest : Prop
  morphologicalChanges : Prop

structure SenescenceEndpoint (P : SenescencePathway) (C : SenescenceCascade P) where
  irreversibleCellCycleExit : Prop
  dnaDamageResponsePersistent : Prop
  telomereDysfunction : Prop

structure SenescenceEvidence {P : SenescencePathway} {C : SenescenceCascade P} (E : SenescenceEndpoint P C) where
  irreversibleCellCycleExitClosed : E.irreversibleCellCycleExit
  dnaDamageResponsePersistentClosed : E.dnaDamageResponsePersistent
  telomereDysfunctionClosed : E.telomereDysfunction

def SenescenceClosed {P : SenescencePathway} {C : SenescenceCascade P} (E : SenescenceEndpoint P C) : Prop :=
  E.irreversibleCellCycleExit ∧ E.dnaDamageResponsePersistent ∧ E.telomereDysfunction

theorem senescence_closed_from_evidence {P : SenescencePathway} {C : SenescenceCascade P} (E : SenescenceEndpoint P C) (ev : SenescenceEvidence E) :
    SenescenceClosed E := by
  exact And.intro ev.irreversibleCellCycleExitClosed
    (And.intro ev.dnaDamageResponsePersistentClosed ev.telomereDysfunctionClosed)

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
