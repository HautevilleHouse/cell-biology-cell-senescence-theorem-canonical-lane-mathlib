import CellBiologyCellSenescenceTheoremCanonicalLaneLean.CellSenescenceBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse