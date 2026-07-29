import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure DetectionEstimationPackage where
  priorModel : Type u
  observationModel : Type v
  detectionRule : observationModel → Bool
  estimationRule : observationModel → priorModel
  probabilityOfError : ℝ

structure DetectionEstimationEvidence (D : DetectionEstimationPackage) where
  detectionOptimal : Prop
  estimationConsistent : Prop
  probabilityOfErrorPositive : D.probabilityOfError > 0

def DetectionEstimationClosed (D : DetectionEstimationPackage) : Prop :=
  D.detectionOptimal ∧ D.estimationConsistent ∧ D.probabilityOfError > 0

theorem detection_estimation_closed_from_evidence (D : DetectionEstimationPackage) (Ev : DetectionEstimationEvidence D) :
    DetectionEstimationClosed D := by
  exact And.intro Ev.detectionOptimal (And.intro Ev.estimationConsistent Ev.probabilityOfErrorPositive)

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse
