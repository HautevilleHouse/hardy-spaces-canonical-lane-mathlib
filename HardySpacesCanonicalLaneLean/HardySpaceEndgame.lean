import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HardySpacesCanonicalLaneLean.HardySpaceDefinition
import HautevilleHouse.HardySpacesCanonicalLaneLean.BoundaryBehavior
import HautevilleHouse.HardySpacesCanonicalLaneLean.InnerFunctionFactorization
import HautevilleHouse.HardySpacesCanonicalLaneLean.ToeplitzOperator
import HautevilleHouse.HardySpacesCanonicalLaneLean.CarlesonMeasure
import HautevilleHouse.HardySpacesCanonicalLaneLean.HelsonSzegoTheorem

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

def ConstrainedHardySpaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hardy_space_endgame (A : AdmissibleClass) : ConstrainedHardySpaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HardySpacesCanonicalLaneLean
end HautevilleHouse
