import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescenceSignalingPathwayPackage where
  p53Activation : Prop
  p21Induction : Prop
  RbHypophosphorylation : Prop
  senescenceAssociatedSecretoryPhenotype : Prop
  cellCycleArrest : Prop

structure SenescenceSignalingPathwayEvidence (P : SenescenceSignalingPathwayPackage) where
  p53ActivationClosed : P.p53Activation
  p21InductionClosed : P.p21Induction
  RbHypophosphorylationClosed : P.RbHypophosphorylation
  senescenceAssociatedSecretoryPhenotypeClosed : P.senescenceAssociatedSecretoryPhenotype
  cellCycleArrestClosed : P.cellCycleArrest

def SenescenceSignalingPathwayClosed (P : SenescenceSignalingPathwayPackage) : Prop :=
  P.p53Activation ∧ P.p21Induction ∧ P.RbHypophosphorylation ∧ P.senescenceAssociatedSecretoryPhenotype ∧ P.cellCycleArrest

theorem senescence_signaling_pathway_closed_from_evidence
    (P : SenescenceSignalingPathwayPackage) (E : SenescenceSignalingPathwayEvidence P) :
    SenescenceSignalingPathwayClosed P := by
  exact And.intro E.p53ActivationClosed
    (And.intro E.p21InductionClosed
      (And.intro E.RbHypophosphorylationClosed
        (And.intro E.senescenceAssociatedSecretoryPhenotypeClosed E.cellCycleArrestClosed)))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse