import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure HelsonSzegoConditionPackage {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] (H : HardySpace p D) where
  weightFunction : D → ℝ
  logCondition : Prop
  predictionTheoryApplication : Prop
  equivalenceToAbsoluteContinuity : Prop

structure HelsonSzegoConditionEvidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (HS : HelsonSzegoConditionPackage H) where
  logConditionClosed : HS.logCondition
  predictionTheoryApplicationClosed : HS.predictionTheoryApplication
  equivalenceToAbsoluteContinuityClosed : HS.equivalenceToAbsoluteContinuity

def HelsonSzegoConditionClosed {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (HS : HelsonSzegoConditionPackage H) : Prop :=
  HS.logCondition ∧ HS.predictionTheoryApplication ∧ HS.equivalenceToAbsoluteContinuity

theorem helson_szego_condition_closed_from_evidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (HS : HelsonSzegoConditionPackage H) (E : HelsonSzegoConditionEvidence HS) : HelsonSzegoConditionClosed HS := by
  exact And.intro E.logConditionClosed (And.intro E.predictionTheoryApplicationClosed E.equivalenceToAbsoluteContinuityClosed)

end HardySpacesCanonicalLaneLean
end HautevilleHouse
