import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescencePathwayPackage where
  p53Pathway : Prop
  p16Pathway : Prop
  sasp : Prop
  apoptosisResistance : Prop

structure SenescencePathwayEvidence (P : SenescencePathwayPackage) where
  p53PathwayClosed : P.p53Pathway
  p16PathwayClosed : P.p16Pathway
  saspClosed : P.sasp
  apoptosisResistanceClosed : P.apoptosisResistance

def SenescencePathwayClosed (P : SenescencePathwayPackage) : Prop :=
  P.p53Pathway ∧ P.p16Pathway ∧ P.sasp ∧ P.apoptosisResistance

theorem senescence_pathway_closed_from_evidence (P : SenescencePathwayPackage)
    (E : SenescencePathwayEvidence P) : SenescencePathwayClosed P := by
  exact And.intro E.p53PathwayClosed
    (And.intro E.p16PathwayClosed
      (And.intro E.saspClosed E.apoptosisResistanceClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse