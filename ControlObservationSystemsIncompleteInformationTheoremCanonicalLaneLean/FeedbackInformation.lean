import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure FeedbackInformationPackage where
  controllerOutput : Type u
  systemState : Type v
  feedbackChannel : Type w
  informationRevealed : Prop
  controlPerformance : Prop

structure FeedbackInformationEvidence (F : FeedbackInformationPackage) where
  informationRevealedClosed : F.informationRevealed
  controlPerformanceClosed : F.controlPerformance

def FeedbackInformationClosed (F : FeedbackInformationPackage) : Prop :=
  F.informationRevealed ∧ F.controlPerformance

theorem feedback_information_closed_from_evidence (F : FeedbackInformationPackage) (Ev : FeedbackInformationEvidence F) :
    FeedbackInformationClosed F := by
  exact And.intro Ev.informationRevealedClosed Ev.controlPerformanceClosed

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse
