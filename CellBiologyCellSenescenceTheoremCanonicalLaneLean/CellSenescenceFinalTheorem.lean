import CellBiologyCellSenescenceTheoremCanonicalLaneLean.CellSenescenceGateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

def SenescenceConstrainedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem senescence_constrained_endgame (A : AdmissibleClass) :
    SenescenceConstrainedClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse