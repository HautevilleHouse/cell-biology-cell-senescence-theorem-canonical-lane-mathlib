import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure CellPopulationDynamicsPackage where
  replicativeSenescence : Prop
  stressInducedSenescence : Prop
  oncogeneInducedSenescence : Prop
  populationDoublingLimit : Nat

structure CellPopulationDynamicsEvidence (P : CellPopulationDynamicsPackage) where
  replicativeSenescenceClosed : P.replicativeSenescence
  stressInducedSenescenceClosed : P.stressInducedSenescence
  oncogeneInducedSenescenceClosed : P.oncogeneInducedSenescence
  populationDoublingLimitClosed : P.populationDoublingLimit > 0

def CellPopulationDynamicsClosed (P : CellPopulationDynamicsPackage) : Prop :=
  P.replicativeSenescence ∧ P.stressInducedSenescence ∧
  P.oncogeneInducedSenescence ∧ P.populationDoublingLimit > 0

theorem cell_population_dynamics_closed_from_evidence
    (P : CellPopulationDynamicsPackage) (E : CellPopulationDynamicsEvidence P) :
    CellPopulationDynamicsClosed P := by
  exact And.intro E.replicativeSenescenceClosed
    (And.intro E.stressInducedSenescenceClosed
      (And.intro E.oncogeneInducedSenescenceClosed E.populationDoublingLimitClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse