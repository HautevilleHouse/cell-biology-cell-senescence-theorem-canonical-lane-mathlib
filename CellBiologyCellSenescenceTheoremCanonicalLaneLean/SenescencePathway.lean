import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure CellType where
  cellName : String
  senescenceMarker : Prop
  proliferationCapacity : Nat

structure SignalingPathway where
  pathwayName : String
  involvedProteins : List String
  senescenceInducing : Prop

structure SenescenceTrigger where
  triggerType : String
  downstreamPathway : SignalingPathway
  dnaDamageResponse : Prop

structure PrimitiveSenescencePackage where
  cell : CellType
  pathway : SignalingPathway
  trigger : SenescenceTrigger
  senescenceHallmarks : Prop
  cellCycleArrest : Prop
  senescenceAssociatedSecretoryPhenotype : Prop
  dnaDamageResponseActivated : Prop
  senescenceHallmarksClosed : senescenceHallmarks
  cellCycleArrestClosed : cellCycleArrest
  senescenceAssociatedSecretoryPhenotypeClosed : senescenceAssociatedSecretoryPhenotype
  dnaDamageResponseActivatedClosed : dnaDamageResponseActivated

def PrimitiveSenescencePackage.toAdmissibleClass (P : PrimitiveSenescencePackage) : AdmissibleClass :=
  {
    object := { 
      cell := P.cell
      pathway := P.pathway
      senescenceSignals := True
    }
    endpointSatisfied := P.senescenceHallmarks ∧ P.cellCycleArrest
    remainderRecorded := P.senescenceAssociatedSecretoryPhenotype ∨ P.dnaDamageResponseActivated
    gateWitness := Or.inl (And.intro P.senescenceHallmarksClosed P.cellCycleArrestClosed)
  }

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse