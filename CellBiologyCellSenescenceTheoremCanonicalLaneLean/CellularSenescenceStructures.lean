import CellBiologyCellSenescenceTheoremCanonicalLaneLean.SenescenceMathematicalModels

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure CellType where
  species : String
  tissue : String
  replicativeLimit : Nat
  senescenceInducer : String

default instance : Inhabited CellType := ⟨{ species := "Homo sapiens", tissue := "fibroblast", replicativeLimit := 60, senescenceInducer := "telomere_attrition" }⟩

structure SenescenceState where
  p53p21Activated : Prop
  p16INK4aUpregulated : Prop
  senescentMarkerPositive : Prop

def SenescenceWitnessClosed (S : SenescenceState) : Prop :=
  S.senescentMarkerPositive

structure SenescenceAdmittedObject where
  cellType : CellType
  state : SenescenceState
  conclusion : SenescenceWitnessClosed state

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
