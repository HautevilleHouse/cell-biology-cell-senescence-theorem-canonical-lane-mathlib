import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure EpigeneticDeregulationPackage where
  heterochromatinLossDetected : Prop
  hmk27me3Redistribution : Prop
  dnaMethylationChanges : Prop
  clocklikeCpGMethylation : Prop
  transcriptionalNoiseIncreased : Prop

structure EpigeneticDeregulationEvidence (E : EpigeneticDeregulationPackage) where
  heterochromatinLossDetectedClosed : E.heterochromatinLossDetected
  hmk27me3RedistributionClosed : E.hmk27me3Redistribution
  dnaMethylationChangesClosed : E.dnaMethylationChanges
  clocklikeCpGMethylationClosed : E.clocklikeCpGMethylation
  transcriptionalNoiseIncreasedClosed : E.transcriptionalNoiseIncreased

def EpigeneticDeregulationClosed (E : EpigeneticDeregulationPackage) : Prop :=
  E.heterochromatinLossDetected ∧ E.hmk27me3Redistribution ∧
  E.dnaMethylationChanges ∧ E.clocklikeCpGMethylation ∧
  E.transcriptionalNoiseIncreased

theorem epigenetic_deregulation_closed_from_evidence
    (Epkg : EpigeneticDeregulationPackage) (E : EpigeneticDeregulationEvidence Epkg) :
    EpigeneticDeregulationClosed Epkg := by
  exact And.intro E.heterochromatinLossDetectedClosed
    (And.intro E.hmk27me3RedistributionClosed
      (And.intro E.dnaMethylationChangesClosed
        (And.intro E.clocklikeCpGMethylationClosed E.transcriptionalNoiseIncreasedClosed)))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse