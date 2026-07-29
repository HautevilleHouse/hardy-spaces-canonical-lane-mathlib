import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.BMO_BoundedMeanOscillation

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure CoronaPackage {p : ℝ} {H : HardySpacePackage p} (B : BMOPackage H) where
  denseProperty : Prop
  solutionExists : Prop
  constructiveBound : Prop

struct CoronaEvidence {p : ℝ} {H : HardySpacePackage p} {B : BMOPackage H} (C : CoronaPackage B) where
  densePropertyClosed : C.denseProperty
  solutionExistsClosed : C.solutionExists
  constructiveBoundClosed : C.constructiveBound

def CoronaClosed {p : ℝ} {H : HardySpacePackage p} {B : BMOPackage H} (C : CoronaPackage B) : Prop :=
  C.denseProperty ∧ C.solutionExists ∧ C.constructiveBound

theorem corona_closed_from_evidence {p : ℝ} {H : HardySpacePackage p} {B : BMOPackage H} (C : CoronaPackage B) (E : CoronaEvidence C) :
    CoronaClosed C := by
  exact And.intro E.densePropertyClosed (And.intro E.solutionExistsClosed E.constructiveBoundClosed)

end HardySpacesCanonicalLaneLean
end HautevilleHouse