import CellBiologyCellSenescenceTheoremCanonicalLaneLean.SenescenceClosureTheorem
import CellBiologyCellSenescenceTheoremCanonicalLaneLean.TelomereAttrition

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure CellularAgingModel where
  telomere : TelomereAttritionPackage
  oxidativeStress : Prop
  mitochondrialDysfunction : Prop
  epigeneticAlterations : Prop
  telomereEvidence : TelomereAttritionEvidence telomere
  oxidativeStressClosed : oxidativeStress
  mitochondrialDysfunctionClosed : mitochondrialDysfunction
  epigeneticAlterationsClosed : epigeneticAlterations

def CellularAgingModelClosed (M : CellularAgingModel) : Prop :=
  TelomereAttritionClosed M.telomere ∧ M.oxidativeStress ∧ M.mitochondrialDysfunction ∧ M.epigeneticAlterations

theorem cellular_aging_model_closed_from_evidence (M : CellularAgingModel) : CellularAgingModelClosed M :=
  And.intro (telomere_attrition_closed_from_evidence M.telomere M.telomereEvidence)
    (And.intro M.oxidativeStressClosed (And.intro M.mitochondrialDysfunctionClosed M.epigeneticAlterationsClosed))

theorem cellular_aging_model_supports_senescence_closure (M : CellularAgingModel) (A : AdmissibleClass) : ConstrainedSenescenceClosure A :=
  constrained_senescence_endgame A

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse