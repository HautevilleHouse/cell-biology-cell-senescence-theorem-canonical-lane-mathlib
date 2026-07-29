import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SenescenceEvasionMechanisms where
  p53Mutation : Prop
  RBPathwayDisruption : Prop
  telomeraseReactivation : Prop
  bypassOfGrowthArrest : Prop
  p53MutationTerm : p53Mutation
  RBPathwayDisruptionTerm : RBPathwayDisruption
  telomeraseReactivationTerm : telomeraseReactivation
  bypassOfGrowthArrestTerm : bypassOfGrowthArrest

structure EvasionEvidence (E : SenescenceEvasionMechanisms) where
  p53MutationClosed : E.p53Mutation
  RBPathwayDisruptionClosed : E.RBPathwayDisruption
  telomeraseReactivationClosed : E.telomeraseReactivation
  bypassOfGrowthArrestClosed : E.bypassOfGrowthArrest

def EvasionClosed (E : SenescenceEvasionMechanisms) : Prop :=
  E.p53Mutation ∧ E.RBPathwayDisruption ∧ E.telomeraseReactivation ∧ E.bypassOfGrowthArrest

theorem evasion_closed_from_evidence (E : SenescenceEvasionMechanisms)
    (Ev : EvasionEvidence E) : EvasionClosed E := by
  exact And.intro Ev.p53MutationClosed
    (And.intro Ev.RBPathwayDisruptionClosed
      (And.intro Ev.telomeraseReactivationClosed Ev.bypassOfGrowthArrestClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse