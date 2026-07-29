import CellBiologyCellSenescenceTheoremCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SenescenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse