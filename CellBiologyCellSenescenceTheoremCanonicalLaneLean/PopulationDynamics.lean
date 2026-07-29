import CellBiologyCellSenescenceTheoremCanonicalLaneLean.CellularSenescenceStructures

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure ReplicativeSenescenceModel where
  initialCellCount : ℕ
  doublingTime : ℝ
  hayflickLimit : ℕ
  currentPassage : ℕ
  senescentFraction : ℝ
  cellCount : ℕ → ℕ  -- time series
  senescentFractionOverTime : ℕ → ℝ

def ReplicativeSenescenceModelClosed (M : ReplicativeSenescenceModel) : Prop :=
  M.currentPassage ≤ M.hayflickLimit ∧ M.senescentFraction ≥ 0 ∧ M.senescentFraction ≤ 1

structure PopulationDynamicsEvidence (M : ReplicativeSenescenceModel) where
  currentPassageWithinLimit : M.currentPassage ≤ M.hayflickLimit
  senescentFractionBounded : M.senescentFraction ≥ 0 ∧ M.senescentFraction ≤ 1

theorem population_dynamics_closed_from_evidence (M : ReplicativeSenescenceModel)
    (E : PopulationDynamicsEvidence M) : ReplicativeSenescenceModelClosed M := by
  exact And.intro E.currentPassageWithinLimit E.senescentFractionBounded

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
