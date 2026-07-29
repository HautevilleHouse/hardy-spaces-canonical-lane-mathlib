import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure InnerFunctionPackage {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] (H : HardySpace p D) where
  innerFunction : D → ℂ
  contractiveProperty : Prop
  boundaryUnitary : Prop
  factorizationApplied : Prop

structure InnerFunctionEvidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (I : InnerFunctionPackage H) where
  contractivePropertyClosed : I.contractiveProperty
  boundaryUnitaryClosed : I.boundaryUnitary
  factorizationAppliedClosed : I.factorizationApplied

def InnerFunctionClosed {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (I : InnerFunctionPackage H) : Prop :=
  I.contractiveProperty ∧ I.boundaryUnitary ∧ I.factorizationApplied

theorem inner_function_closed_from_evidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (I : InnerFunctionPackage H) (E : InnerFunctionEvidence I) : InnerFunctionClosed I := by
  exact And.intro E.contractivePropertyClosed (And.intro E.boundaryUnitaryClosed E.factorizationAppliedClosed)

end HardySpacesCanonicalLaneLean
end HautevilleHouse
