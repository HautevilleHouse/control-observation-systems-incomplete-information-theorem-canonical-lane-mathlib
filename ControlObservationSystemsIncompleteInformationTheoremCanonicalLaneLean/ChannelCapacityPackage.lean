import canonicalLaneMathlib.AdmissibleClass
import admissible_lean.ShannonEntropyPackage

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure ChannelCapacityPackage (E : ShannonEntropyPackage) where
  inputAlphabet : Type u
  outputAlphabet : Type v
  channelMatrix : inputAlphabet → outputAlphabet → ℝ
  capacity : ℝ
  capacityNonnegative : Prop
  capacityNonnegativeTerm : capacityNonnegative

structure ChannelCapacityEvidence {E : ShannonEntropyPackage}
    (C : ChannelCapacityPackage E) where
  capacityNonnegativeClosed : C.capacityNonnegative

def ChannelCapacityClosed {E : ShannonEntropyPackage}
    (C : ChannelCapacityPackage E) : Prop :=
  C.capacityNonnegative

theorem channel_capacity_closed_from_evidence {E : ShannonEntropyPackage}
    (C : ChannelCapacityPackage E) (Ev : ChannelCapacityEvidence C) :
    ChannelCapacityClosed C := by
  exact Ev.capacityNonnegativeClosed

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse