import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : SenescenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SenescenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure SenescenceAdmittedObject where
  cellType : Type
  senescenceInducer : Prop
  markerExpression : Prop
  conclusion : markerExpression

def SenescenceWitnessClosed (O : SenescenceAdmittedObject) : Prop :=
  O.markerExpression

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
