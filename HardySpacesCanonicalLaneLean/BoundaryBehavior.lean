import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure BoundaryBehaviorPackage {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] (H : HardySpace p D) where
  radialLimit : Prop
  nontangentialLimit : Prop
  fatouProperty : Prop
  boundaryValues : Prop

structure BoundaryBehaviorEvidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (B : BoundaryBehaviorPackage H) where
  radialLimitClosed : B.radialLimit
  nontangentialLimitClosed : B.nontangentialLimit
  fatouPropertyClosed : B.fatouProperty
  boundaryValuesClosed : B.boundaryValues

def BoundaryBehaviorClosed {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (B : BoundaryBehaviorPackage H) : Prop :=
  B.radialLimit ∧ B.nontangentialLimit ∧ B.fatouProperty ∧ B.boundaryValues

theorem boundary_behavior_closed_from_evidence {p : ℝ≥0∞} {D : Type*} [TopologicalSpace D] [ComplexNormedSpace ℂ (D → ℂ)] {H : HardySpace p D} (B : BoundaryBehaviorPackage H) (E : BoundaryBehaviorEvidence B) : BoundaryBehaviorClosed B := by
  exact And.intro E.radialLimitClosed (And.intro E.nontangentialLimitClosed (And.intro E.fatouPropertyClosed E.boundaryValuesClosed))

end HardySpacesCanonicalLaneLean
end HautevilleHouse
