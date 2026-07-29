import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescenceAssociatedSecretoryPhenotype where
  IL6Secretion : Prop
  IL8Secretion : Prop
  MMPSecretion : Prop
  inflammatoryCytokineProfile : Prop
  IL6SecretionTerm : IL6Secretion
  IL8SecretionTerm : IL8Secretion
  MMPSecretionTerm : MMPSecretion
  inflammatoryCytokineProfileTerm : inflammatoryCytokineProfile

structure SASPEvidence (S : SenescenceAssociatedSecretoryPhenotype) where
  IL6SecretionClosed : S.IL6Secretion
  IL8SecretionClosed : S.IL8Secretion
  MMPSecretionClosed : S.MMPSecretion
  inflammatoryCytokineProfileClosed : S.inflammatoryCytokineProfile

def SASPClosed (S : SenescenceAssociatedSecretoryPhenotype) : Prop :=
  S.IL6Secretion ∧ S.IL8Secretion ∧ S.MMPSecretion ∧ S.inflammatoryCytokineProfile

theorem sasp_closed_from_evidence (S : SenescenceAssociatedSecretoryPhenotype)
    (E : SASPEvidence S) : SASPClosed S := by
  exact And.intro E.IL6SecretionClosed
    (And.intro E.IL8SecretionClosed
      (And.intro E.MMPSecretionClosed E.inflammatoryCytokineProfileClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse