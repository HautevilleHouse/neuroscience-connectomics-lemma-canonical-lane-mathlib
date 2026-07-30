import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ConnectomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConnectomicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceConnectomicsLemmaCanonicalLaneLean
end HautevilleHouse