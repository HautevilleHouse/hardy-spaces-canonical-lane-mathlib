import canonicalLaneMathlib.AdmissibleClass
import HardySpacesCanonicalLaneLean.HardySpaceDefinitions

/-!
# Boundary Extension Package
-/

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure BoundaryExtensionPackage {H : HardySpaceOnDisc} (E : BoundaryExtensionEvidence H) where
  radialLimitsExist : Prop
  nontangentialLimitsExist : Prop
  fatouTheorem : Prop

structure BoundaryExtensionEvidence {H : HardySpaceOnDisc} (E : BoundaryExtensionEvidence H) where
  radialLimitsExistClosed : E.radialLimitsExist
  nontangentialLimitsExistClosed : E.nontangentialLimitsExist
  fatouTheoremClosed : E.fatouTheorem

def BoundaryExtensionClosed {H : HardySpaceOnDisc} (E : BoundaryExtensionEvidence H) : Prop :=
  E.radialLimitsExist ∧ E.nontangentialLimitsExist ∧ E.fatouTheorem

theorem boundary_extension_closed_from_evidence {H : HardySpaceOnDisc} (E : BoundaryExtensionEvidence H) (Ev : BoundaryExtensionEvidence E) : BoundaryExtensionClosed E := by
  exact And.intro Ev.radialLimitsExistClosed (And.intro Ev.nontangentialLimitsExistClosed Ev.fatouTheoremClosed)

end HardySpacesCanonicalLaneLean
end HautevilleHouse