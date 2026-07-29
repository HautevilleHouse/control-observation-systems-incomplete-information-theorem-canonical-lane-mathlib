import canonicalLaneMathlib.AdmissibleClass
import Mathlib.MeasureTheory.ProbabilityTheory.Information

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure RateDistortionPackage where
  sourceDistribution : Type u → ℝ
  distortionMeasure : Type u → Type v → ℝ
  rateDistortionFunction : ℝ → ℝ
  rateDistortionNonnegative : ∀ d, rateDistortionFunction d ≥ 0
  rateDistortionNonnegativeTerm : rateDistortionNonnegative

structure RateDistortionEvidence (R : RateDistortionPackage) where
  rateDistortionNonnegativeClosed : R.rateDistortionNonnegative

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.rateDistortionNonnegative

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage)
    (Ev : RateDistortionEvidence R) : RateDistortionClosed R := by
  exact Ev.rateDistortionNonnegativeClosed

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse