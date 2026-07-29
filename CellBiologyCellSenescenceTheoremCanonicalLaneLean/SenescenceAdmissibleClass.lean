import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SenescenceAdmittedObject where
  space : SenescenceSpace
  cellularPhenotype : Prop
  senescenceMarkerExpression : Prop
  cellCycleArrest : Prop
  sasPSecretion : Prop
  telomereAttrition : Prop
  conclusion : Prop

structure SenescenceEndgameState where
  object : SenescenceAdmittedObject

def SenescenceWitnessClosed (O : SenescenceAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
