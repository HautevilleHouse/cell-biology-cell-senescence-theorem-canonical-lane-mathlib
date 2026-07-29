import CellBiologyCellSenescenceTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

def ConstrainedSenescenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_senescence_endgame (A : AdmissibleClass) : ConstrainedSenescenceClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse