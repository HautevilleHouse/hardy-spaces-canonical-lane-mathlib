import canonicalLaneMathlib.AdmissibleClass
import HardySpacesCanonicalLaneLean.HardyBridgeLemmas
import HardySpacesCanonicalLaneLean.HardyInnerOuterFactorization

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedHardyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hardy_endgame (A : AdmissibleClass) : ConstrainedHardyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HardySpacesCanonicalLaneLean
end HautevilleHouse
