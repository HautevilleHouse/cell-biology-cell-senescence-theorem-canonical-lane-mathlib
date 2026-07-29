import HautevilleHouse.CellBiologyCellSenescenceTheoremCanonicalLaneLean.SenescenceModels

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescenceEvidencePackage {P : SenescencePathway} {C : SenescenceCascade P} (E : SenescenceEndpoint P C) where
  evidence : SenescenceEvidence E
  additionalMarkers : Prop
  robustNess : Prop

def SenescenceEvidencePackageClosed {P : SenescencePathway} {C : SenescenceCascade P} (EP : SenescenceEvidencePackage (E : SenescenceEndpoint P C)) : Prop :=
  SenescenceClosed E ∧ EP.additionalMarkers ∧ EP.robustNess

theorem senescence_evidence_package_closed_from_evidence {P : SenescencePathway} {C : SenescenceCascade P} {E : SenescenceEndpoint P C} (EP : SenescenceEvidencePackage E) :
    SenescenceEvidencePackageClosed EP := by
  exact And.intro (senescence_closed_from_evidence E EP.evidence)
    (And.intro EP.additionalMarkers EP.robustNess)

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
