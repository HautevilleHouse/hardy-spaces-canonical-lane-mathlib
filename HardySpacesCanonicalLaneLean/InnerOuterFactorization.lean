import canonicalLaneMathlib.AdmissibleClass
import HardySpacesCanonicalLaneLean.BoundaryExtension

/-!
# Inner-Outer Factorization Package
-/

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure InnerOuterFactorizationPackage where
  innerFunction : Type u
  outerFunction : Type v
  factorizationTheorem : Prop
  uniqueness : Prop

structure InnerOuterFactorizationEvidence (F : InnerOuterFactorizationPackage) where
  factorizationTheoremClosed : F.factorizationTheorem
  uniquenessClosed : F.uniqueness

def InnerOuterFactorizationClosed (F : InnerOuterFactorizationPackage) : Prop :=
  F.factorizationTheorem ∧ F.uniqueness

theorem inner_outer_factorization_closed_from_evidence (F : InnerOuterFactorizationPackage) (E : InnerOuterFactorizationEvidence F) : InnerOuterFactorizationClosed F := by
  exact And.intro E.factorizationTheoremClosed E.uniquenessClosed

end HardySpacesCanonicalLaneLean
end HautevilleHouse