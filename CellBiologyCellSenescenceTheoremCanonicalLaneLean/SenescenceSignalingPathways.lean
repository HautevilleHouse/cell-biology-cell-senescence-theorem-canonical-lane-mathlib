import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescenceSignalingPathwayPackage where
  p53p21RbAxisActive : Prop
  ddrInduction : Prop
  saspSecretomeProfile : Prop
  cdkInhibitorUpregulation : Prop
  heterochromatinRemodeling : Prop

structure SenescenceSignalingPathwayEvidence (P : SenescenceSignalingPathwayPackage) where
  p53p21RbAxisActiveClosed : P.p53p21RbAxisActive
  ddrInductionClosed : P.ddrInduction
  saspSecretomeProfileClosed : P.saspSecretomeProfile
  cdkInhibitorUpregulationClosed : P.cdkInhibitorUpregulation
  heterochromatinRemodelingClosed : P.heterochromatinRemodeling

def SenescenceSignalingPathwayClosed (P : SenescenceSignalingPathwayPackage) : Prop :=
  P.p53p21RbAxisActive ∧ P.ddrInduction ∧ P.saspSecretomeProfile ∧
  P.cdkInhibitorUpregulation ∧ P.heterochromatinRemodeling

theorem senescence_signaling_pathway_closed_from_evidence
    (P : SenescenceSignalingPathwayPackage) (E : SenescenceSignalingPathwayEvidence P) :
    SenescenceSignalingPathwayClosed P := by
  exact And.intro E.p53p21RbAxisActiveClosed
    (And.intro E.ddrInductionClosed
      (And.intro E.saspSecretomeProfileClosed
        (And.intro E.cdkInhibitorUpregulationClosed
          E.heterochromatinRemodelingClosed)))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
