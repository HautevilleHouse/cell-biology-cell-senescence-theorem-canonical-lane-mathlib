import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure CellCycleArrestPackage where
  p53p21RbPathwayActive : Prop
  cdkn2aInduced : Prop
  senescenceAssociatedG1Arrest : Prop
  proliferationMarkersDownregulated : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestPackage) where
  p53p21RbPathwayActiveClosed : C.p53p21RbPathwayActive
  cdkn2aInducedClosed : C.cdkn2aInduced
  senescenceAssociatedG1ArrestClosed : C.senescenceAssociatedG1Arrest
  proliferationMarkersDownregulatedClosed : C.proliferationMarkersDownregulated

def CellCycleArrestClosed (C : CellCycleArrestPackage) : Prop :=
  C.p53p21RbPathwayActive ∧ C.cdkn2aInduced ∧
  C.senescenceAssociatedG1Arrest ∧ C.proliferationMarkersDownregulated

theorem cell_cycle_arrest_closed_from_evidence (C : CellCycleArrestPackage) (E : CellCycleArrestEvidence C) :
    CellCycleArrestClosed C := by
  exact And.intro E.p53p21RbPathwayActiveClosed
    (And.intro E.cdkn2aInducedClosed
      (And.intro E.senescenceAssociatedG1ArrestClosed E.proliferationMarkersDownregulatedClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse