import canonicalLaneMathlib.AdmissibleClass
import HardySpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HardyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HardySpacesCanonicalLaneLean
end HautevilleHouse