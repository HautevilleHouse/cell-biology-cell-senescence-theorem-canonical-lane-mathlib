import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SASPPackage where
  inflammatoryCytokinesSecreted : Prop
  growthFactorsSecreted : Prop
  matrixMetalloproteinasesSecreted : Prop
  chemokinesSecreted : Prop
  paracrineSignalingActive : Prop

structure SASPEvidence (S : SASPPackage) where
  inflammatoryCytokinesSecretedClosed : S.inflammatoryCytokinesSecreted
  growthFactorsSecretedClosed : S.growthFactorsSecreted
  matrixMetalloproteinasesSecretedClosed : S.matrixMetalloproteinasesSecreted
  chemokinesSecretedClosed : S.chemokinesSecreted
  paracrineSignalingActiveClosed : S.paracrineSignalingActive

def SASPClosed (S : SASPPackage) : Prop :=
  S.inflammatoryCytokinesSecreted ∧ S.growthFactorsSecreted ∧
  S.matrixMetalloproteinasesSecreted ∧ S.chemokinesSecreted ∧
  S.paracrineSignalingActive

theorem sasp_closed_from_evidence (S : SASPPackage) (E : SASPEvidence S) : SASPClosed S := by
  exact And.intro E.inflammatoryCytokinesSecretedClosed
    (And.intro E.growthFactorsSecretedClosed
      (And.intro E.matrixMetalloproteinasesSecretedClosed
        (And.intro E.chemokinesSecretedClosed E.paracrineSignalingActiveClosed)))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse