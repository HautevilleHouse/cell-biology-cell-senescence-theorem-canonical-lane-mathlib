import CellBiologyCellSenescenceTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellSenescenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse