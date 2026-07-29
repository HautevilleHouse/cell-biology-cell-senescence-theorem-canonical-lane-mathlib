import CellBiologyCellSenescenceTheoremCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace CellBiologyCellSenescenceTheoremCanonicalLaneLean

structure TelomereAttritionModel where
  initialTelomereLength : ℝ
  attritionRatePerDivision : ℝ
  crisisThreshold : ℝ
  currentLength : ℝ
  divisionsRemaining : ℕ

def TelomereAttritionModelClosed (T : TelomereAttritionModel) : Prop :=
  T.currentLength > T.crisisThreshold ∧ T.attritionRatePerDivision > 0

structure DamageAccumulationModel where
  damageRate : ℝ
  repairRate : ℝ
  thresholdForSenescence : ℝ
  currentDamage : ℝ
  accumulatedDamageHistory : ℕ → ℝ

def DamageAccumulationModelClosed (D : DamageAccumulationModel) : Prop :=
  D.currentDamage > D.thresholdForSenescence ∨ D.damageRate > D.repairRate

end CellBiologyCellSenescenceTheoremCanonicalLaneLean
end HautevilleHouse
