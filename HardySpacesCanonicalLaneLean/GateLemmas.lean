import canonicalLaneMathlib.AdmissibleClass
import HardySpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end HardySpacesCanonicalLaneLean
end HautevilleHouse