import canonicalLaneMathlib.AdmissibleClass
import HardySpacesCanonicalLaneLean.HardySpaceDefinitions

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let H : HardyAdmittedObject := A.object
  HardySpaceClosed H.space

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let H : HardyAdmittedObject := A.object
  exact H.factorizationWitness

end HardySpacesCanonicalLaneLean
end HautevilleHouse
