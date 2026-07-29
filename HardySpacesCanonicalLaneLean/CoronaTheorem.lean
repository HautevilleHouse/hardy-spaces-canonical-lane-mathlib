import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.HardySpaceDefinition

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure CoronaTheorem {H : HardySpace ∞ D} where
  denseProperty : Prop
  approximation : Prop
  maximalIdeal : Prop
  proofStrategy : Prop

structure CoronaTheoremEvidence {H : HardySpace ∞ D}
    (C : CoronaTheorem H) where
  densePropertyClosed : C.denseProperty
  approximationClosed : C.approximation
  maximalIdealClosed : C.maximalIdeal
  proofStrategyClosed : C.proofStrategy

def CoronaTheoremClosed {H : HardySpace ∞ D}
    (C : CoronaTheorem H) : Prop :=
  C.denseProperty ∧ C.approximation ∧
  C.maximalIdeal ∧ C.proofStrategy

theorem corona_theorem_closed_from_evidence
    {H : HardySpace ∞ D} (C : CoronaTheorem H)
    (E : CoronaTheoremEvidence C) : CoronaTheoremClosed C := by
  exact And.intro E.densePropertyClosed
    (And.intro E.approximationClosed
      (And.intro E.maximalIdealClosed E.proofStrategyClosed))

end HardySpacesCanonicalLaneLean
end HautevilleHouse

