import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean.EntropySourceCoding
import HautevilleHouse.ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean.ChannelCapacity
import HautevilleHouse.ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean.RateDistortionTheory
import HautevilleHouse.ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean.DetectionEstimation
import HautevilleHouse.ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean.FeedbackInformation

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.gateWitness = A.gateWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  rfl

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedControlObservationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_control_observation_endgame (A : AdmissibleClass) :
    ConstrainedControlObservationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse
