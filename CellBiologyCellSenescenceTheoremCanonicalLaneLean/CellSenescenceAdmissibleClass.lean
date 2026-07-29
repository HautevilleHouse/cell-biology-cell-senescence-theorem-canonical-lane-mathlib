import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescenceCell where
  cellType : Type
  replicationCount : Nat
  telomereLength : ℝ
  dnaDamageMarker : ℝ
  senescenceMarker : Prop

structure SenescenceAdmittedObject where
  cell : SenescenceCell
  aged : Prop
  stressorResponse : Prop
  cellCycleArrest : Prop
  secretionProfile : Prop
  conclusion : aged

def SenescenceWitnessClosed (O : SenescenceAdmittedObject) : Prop :=
  O.aged

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse