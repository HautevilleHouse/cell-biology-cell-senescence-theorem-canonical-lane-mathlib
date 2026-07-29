import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure MtorSignalingPackage where
  mTorc1Activation : Prop
  mTorc2Activation : Prop
  s6kPhosphorylation : Prop
  autophagyInhibition : Prop
  translationRegulation : Prop

structure MtorSignalingEvidence (M : MtorSignalingPackage) where
  mTorc1ActivationClosed : M.mTorc1Activation
  mTorc2ActivationClosed : M.mTorc2Activation
  s6kPhosphorylationClosed : M.s6kPhosphorylation
  autophagyInhibitionClosed : M.autophagyInhibition
  translationRegulationClosed : M.translationRegulation

def MtorSignalingClosed (M : MtorSignalingPackage) : Prop :=
  M.mTorc1Activation ∧ M.mTorc2Activation ∧ M.s6kPhosphorylation ∧ M.autophagyInhibition ∧ M.translationRegulation

theorem mtor_signaling_closed_from_evidence
    (M : MtorSignalingPackage) (E : MtorSignalingEvidence M) :
    MtorSignalingClosed M := by
  exact And.intro E.mTorc1ActivationClosed
    (And.intro E.mTorc2ActivationClosed
      (And.intro E.s6kPhosphorylationClosed
        (And.intro E.autophagyInhibitionClosed E.translationRegulationClosed)))

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse