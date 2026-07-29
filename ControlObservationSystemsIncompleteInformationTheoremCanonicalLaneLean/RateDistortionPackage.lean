import canonicalLaneMathlib.AdmissibleClass
import admissible_lean.ShannonEntropyPackage

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure RateDistortionPackage (E : ShannonEntropyPackage) where
  distortionMeasure : E.sourceAlphabet → E.sourceAlphabet → ℝ
  rateDistortionFunction : ℝ → ℝ
  convexity : Prop
  convexityTerm : convexity

structure RateDistortionEvidence {E : ShannonEntropyPackage}
    (R : RateDistortionPackage E) where
  convexityClosed : R.convexity

def RateDistortionClosed {E : ShannonEntropyPackage}
    (R : RateDistortionPackage E) : Prop :=
  R.convexity

theorem rate_distortion_closed_from_evidence {E : ShannonEntropyPackage}
    (R : RateDistortionPackage E) (Ev : RateDistortionEvidence R) :
    RateDistortionClosed R := by
  exact Ev.convexityClosed

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse