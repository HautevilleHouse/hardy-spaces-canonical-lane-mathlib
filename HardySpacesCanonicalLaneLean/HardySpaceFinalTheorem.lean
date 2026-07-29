import canonicaLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

def ConstrainedHardySpaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hardy_space_endgame (A : AdmissibleClass) :
    ConstrainedHardySpaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HardySpacesCanonicalLaneLean
end HautevilleHouse

