import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.HardySpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

def ConstrainedHardyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hardy_endgame (A : AdmissibleClass) :
    ConstrainedHardyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HardySpacesCanonicalLaneLean
end HautevilleHouse