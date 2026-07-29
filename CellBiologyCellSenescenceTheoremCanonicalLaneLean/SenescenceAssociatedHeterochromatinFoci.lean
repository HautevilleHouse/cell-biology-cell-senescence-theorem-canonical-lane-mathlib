import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SAHFPackage where
  hmk27me3FociFormed : Prop
  hp1gammaRecruitmentToFoci : Prop
  proliferationGenesSilenced : Prop
  cellCycleGenesCompacted : Prop

structure SAHFEvidence (S : SAHFPackage) where
  hmk27me3FociFormedClosed : S.hmk27me3FociFormed
  hp1gammaRecruitmentToFociClosed : S.hp1gammaRecruitmentToFoci
  proliferationGenesSilencedClosed : S.proliferationGenesSilenced
  cellCycleGenesCompactedClosed : S.cellCycleGenesCompacted

def SAHFClosed (S : SAHFPackage) : Prop :=
  S.hmk27me3FociFormed ∧ S.hp1gammaRecruitmentToFoci ∧
  S.proliferationGenesSilenced ∧ S.cellCycleGenesCompacted

theorem sahf_closed_from_evidence (S : SAHFPackage) (E : SAHFEvidence S) : SAHFClosed S := by
  exact And.intro E.hmk27me3FociFormedClosed
    (And.intro E.hp1gammaRecruitmentToFociClosed
      (And.intro E.proliferationGenesSilencedClosed E.cellCycleGenesCompactedClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse