import CellBiologyCellSenescenceTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

def CellSenescenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_senescence_endgame (A : AdmissibleClass) :
    CellSenescenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse