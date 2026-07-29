import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControlWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse