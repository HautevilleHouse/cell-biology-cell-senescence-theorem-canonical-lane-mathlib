import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure SABGActivityPackage where
  lysosomalContentIncreased : Prop
  betaGalPositivityAtPH6 : Prop
  senescenceMarkerClassic : Prop
  nonSenescentCellsNegative : Prop

structure SABGActivityEvidence (S : SABGActivityPackage) where
  lysosomalContentIncreasedClosed : S.lysosomalContentIncreased
  betaGalPositivityAtPH6Closed : S.betaGalPositivityAtPH6
  senescenceMarkerClassicClosed : S.senescenceMarkerClassic
  nonSenescentCellsNegativeClosed : S.nonSenescentCellsNegative

def SABGActivityClosed (S : SABGActivityPackage) : Prop :=
  S.lysosomalContentIncreased ∧ S.betaGalPositivityAtPH6 ∧
  S.senescenceMarkerClassic ∧ S.nonSenescentCellsNegative

theorem sabg_activity_closed_from_evidence (S : SABGActivityPackage) (E : SABGActivityEvidence S) :
    SABGActivityClosed S := by
  exact And.intro E.lysosomalContentIncreasedClosed
    (And.intro E.betaGalPositivityAtPH6Closed
      (And.intro E.senescenceMarkerClassicClosed E.nonSenescentCellsNegativeClosed))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse