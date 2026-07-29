import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure CarlesonMeasurePackage {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] (H : HardySpace p D) where
  measure : MeasureTheory.Measure D
  carlesonCondition : Prop
  embeddingIntoHardySpace : Prop
  applicationDomain : Prop

structure CarlesonMeasureEvidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (C : CarlesonMeasurePackage H) where
  carlesonConditionClosed : C.carlesonCondition
  embeddingIntoHardySpaceClosed : C.embeddingIntoHardySpace
  applicationDomainClosed : C.applicationDomain

def CarlesonMeasureClosed {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (C : CarlesonMeasurePackage H) : Prop :=
  C.carlesonCondition ∧ C.embeddingIntoHardySpace ∧ C.applicationDomain

theorem carleson_measure_closed_from_evidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (C : CarlesonMeasurePackage H) (E : CarlesonMeasureEvidence C) : CarlesonMeasureClosed C := by
  exact And.intro E.carlesonConditionClosed (And.intro E.embeddingIntoHardySpaceClosed E.applicationDomainClosed)

end HardySpacesCanonicalLaneLean
end HautevilleHouse
