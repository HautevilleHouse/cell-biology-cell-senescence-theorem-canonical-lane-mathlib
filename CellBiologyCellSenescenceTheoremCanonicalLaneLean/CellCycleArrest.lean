import CellBiologyCellSenescenceTheoremCanonicalLaneLean.SenescencePathways

/-!
# Cell Cycle Arrest Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure CellCycleArrestPackage {P : SenescencePathwaysPackage} where
  g1PhaseArrest : Prop
  g2PhaseArrest : Prop
  cyclinDependentKinaseInhibition : Prop
  retinoblastomaProteinHypophosphorylation : Prop

structure CellCycleArrestEvidence {P : SenescencePathwaysPackage}
    (C : CellCycleArrestPackage P) where
  g1PhaseArrestClosed : C.g1PhaseArrest
  g2PhaseArrestClosed : C.g2PhaseArrest
  cyclinDependentKinaseInhibitionClosed : C.cyclinDependentKinaseInhibition
  retinoblastomaProteinHypophosphorylationClosed : C.retinoblastomaProteinHypophosphorylation

def CellCycleArrestClosed {P : SenescencePathwaysPackage}
    (C : CellCycleArrestPackage P) : Prop :=
  C.g1PhaseArrest ∧ C.g2PhaseArrest ∧
  C.cyclinDependentKinaseInhibition ∧ C.retinoblastomaProteinHypophosphorylation

theorem cell_cycle_arrest_closed_from_evidence {P : SenescencePathwaysPackage}
    (C : CellCycleArrestPackage P) (E : CellCycleArrestEvidence C) :
    CellCycleArrestClosed C := by
  exact And.intro E.g1PhaseArrestClosed
    (And.intro E.g2PhaseArrestClosed
      (And.intro E.cyclinDependentKinaseInhibitionClosed
        E.retinoblastomaProteinHypophosphorylationClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse