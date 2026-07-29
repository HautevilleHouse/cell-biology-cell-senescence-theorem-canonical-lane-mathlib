import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescencePopulationModel where
  cellType : Type
  growthRate : ℚ
  senescenceRate : ℚ
  carryingCapacity : ℕ
  replicativeSenescenceReached : Prop
  stochasticSwitchFraction : Prop
  populationEquilibrium : CarryingCapacityStable := by
    exact And.intro (by decide) (by decide)

structure SenescencePopulationEvidence (M : SenescencePopulationModel) where
  replicativeSenescenceReachedClosed : M.replicativeSenescenceReached
  stochasticSwitchFractionClosed : M.stochasticSwitchFraction

def SenescencePopulationClosed (M : SenescencePopulationModel) : Prop :=
  M.replicativeSenescenceReached ∧ M.stochasticSwitchFraction

theorem senescence_population_closed_from_evidence (M : SenescencePopulationModel)
    (E : SenescencePopulationEvidence M) : SenescencePopulationClosed M := by
  exact And.intro E.replicativeSenescenceReachedClosed E.stochasticSwitchFractionClosed

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
