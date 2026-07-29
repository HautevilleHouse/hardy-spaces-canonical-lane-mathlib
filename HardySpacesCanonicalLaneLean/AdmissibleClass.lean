import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HardySpacesCanonicalLaneLean

structure HardyAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  hardySpace : Type v
  norm : Type w
  boundedness : Prop
  conclusion : boundedness

structure AdmissibleClass where
  object : HardyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HardyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HardySpacesCanonicalLaneLean
end HautevilleHouse