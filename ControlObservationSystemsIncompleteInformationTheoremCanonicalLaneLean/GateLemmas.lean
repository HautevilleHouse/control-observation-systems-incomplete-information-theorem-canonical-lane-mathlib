import canonicalLaneMathlib.AdmissibleClass
import admissible_lean.BridgeLemmas

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse