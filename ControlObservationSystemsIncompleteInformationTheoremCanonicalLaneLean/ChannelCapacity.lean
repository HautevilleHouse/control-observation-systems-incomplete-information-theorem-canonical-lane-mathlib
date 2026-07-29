import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure ChannelCapacityPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  transitionMatrix : inputAlphabet → outputAlphabet → ℝ
  mutualInformation : Prop
  capacityValue : ℝ

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  mutualInformationClosed : C.mutualInformation
  capacityValuePositive : C.capacityValue > 0

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.mutualInformation ∧ C.capacityValue > 0

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage) (Ev : ChannelCapacityEvidence C) :
    ChannelCapacityClosed C := by
  exact And.intro Ev.mutualInformationClosed Ev.capacityValuePositive

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse
