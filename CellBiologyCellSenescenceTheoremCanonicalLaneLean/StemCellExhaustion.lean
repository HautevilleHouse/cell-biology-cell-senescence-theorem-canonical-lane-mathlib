import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure StemCellExhaustionPackage where
  reducedSelfRenewal : Prop
  lineageCommitmentShift : Prop
  nicheDysfunction : Prop
  replicativeSenescence : Prop
  tissueRegenerationDecline : Prop

structure StemCellExhaustionEvidence (S : StemCellExhaustionPackage) where
  reducedSelfRenewalClosed : S.reducedSelfRenewal
  lineageCommitmentShiftClosed : S.lineageCommitmentShift
  nicheDysfunctionClosed : S.nicheDysfunction
  replicativeSenescenceClosed : S.replicativeSenescence
  tissueRegenerationDeclineClosed : S.tissueRegenerationDecline

def StemCellExhaustionClosed (S : StemCellExhaustionPackage) : Prop :=
  S.reducedSelfRenewal ∧ S.lineageCommitmentShift ∧ S.nicheDysfunction ∧ S.replicativeSenescence ∧ S.tissueRegenerationDecline

theorem stem_cell_exhaustion_closed_from_evidence
    (S : StemCellExhaustionPackage) (E : StemCellExhaustionEvidence S) :
    StemCellExhaustionClosed S := by
  exact And.intro E.reducedSelfRenewalClosed
    (And.intro E.lineageCommitmentShiftClosed
      (And.intro E.nicheDysfunctionClosed
        (And.intro E.replicativeSenescenceClosed E.tissueRegenerationDeclineClosed)))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse