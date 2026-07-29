import HardySpacesCanonicalLaneLean.BoundaryTrace

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure FactorizationPackage {H : HardySpacePackage} (B : BoundaryTracePackage H) where
  innerFactor : Prop
  outerFactor : Prop
  singularFactor : Prop
  uniqueness : Prop

structure FactorizationEvidence {H : HardySpacePackage} {B : BoundaryTracePackage H} (F : FactorizationPackage B) where
  innerFactorClosed : F.innerFactor
  outerFactorClosed : F.outerFactor
  singularFactorClosed : F.singularFactor
  uniquenessClosed : F.uniqueness

def FactorizationClosed {H : HardySpacePackage} {B : BoundaryTracePackage H} (F : FactorizationPackage B) : Prop :=
  F.innerFactor ∧ F.outerFactor ∧ F.singularFactor ∧ F.uniqueness

theorem factorization_closed_from_evidence {H : HardySpacePackage} {B : BoundaryTracePackage H} (F : FactorizationPackage B) (E : FactorizationEvidence F) :
    FactorizationClosed F := by
  exact And.intro E.innerFactorClosed (And.intro E.outerFactorClosed (And.intro E.singularFactorClosed E.uniquenessClosed))

end HardySpacesCanonicalLaneLean
end HautevilleHouse