import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure OncogeneInducedSenescencePackage {S : SenescencePathwayPackage} where
  oncogeneActivation : Prop
  p53p21Pathway : Prop
  rbPathway : Prop
  cellCycleArrest : Prop
  rosProduction : Prop

structure OncogeneInducedSenescenceEvidence {S : SenescencePathwayPackage} (O : OncogeneInducedSenescencePackage S) where
  oncogeneActivationClosed : O.oncogeneActivation
  p53p21PathwayClosed : O.p53p21Pathway
  rbPathwayClosed : O.rbPathway
  cellCycleArrestClosed : O.cellCycleArrest
  rosProductionClosed : O.rosProduction

def OncogeneInducedSenescenceClosed {S : SenescencePathwayPackage} (O : OncogeneInducedSenescencePackage S) : Prop :=
  O.oncogeneActivation ∧ O.p53p21Pathway ∧ O.rbPathway ∧ O.cellCycleArrest ∧ O.rosProduction

theorem oncogene_induced_senescence_closed_from_evidence {S : SenescencePathwayPackage} (O : OncogeneInducedSenescencePackage S) (E : OncogeneInducedSenescenceEvidence O) : OncogeneInducedSenescenceClosed O := by
  exact And.intro E.oncogeneActivationClosed (And.intro E.p53p21PathwayClosed (And.intro E.rbPathwayClosed (And.intro E.cellCycleArrestClosed E.rosProductionClosed)))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse