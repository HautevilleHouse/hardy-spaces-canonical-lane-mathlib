import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.HardySpaceDefinition

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure FactorizationPackage {p : ℝ} (H : HardySpacePackage p) where
  innerOuterFactorization : Prop
  canonicalFactorization : Prop
  uniqueness : Prop

struct FactorizationEvidence {p : ℝ} {H : HardySpacePackage p} (F : FactorizationPackage H) where
  innerOuterFactorizationClosed : F.innerOuterFactorization
  canonicalFactorizationClosed : F.canonicalFactorization
  uniquenessClosed : F.uniqueness

def FactorizationClosed {p : ℝ} {H : HardySpacePackage p} (F : FactorizationPackage H) : Prop :=
  F.innerOuterFactorization ∧ F.canonicalFactorization ∧ F.uniqueness

theorem factorization_closed_from_evidence {p : ℝ} {H : HardySpacePackage p} (F : FactorizationPackage H) (E : FactorizationEvidence F) :
    FactorizationClosed F := by
  exact And.intro E.innerOuterFactorizationClosed (And.intro E.canonicalFactorizationClosed E.uniquenessClosed)

end HardySpacesCanonicalLaneLean
end HautevilleHouse