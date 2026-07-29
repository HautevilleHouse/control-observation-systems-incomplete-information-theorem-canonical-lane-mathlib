import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure RateDistortionPackage where
  sourceDistribution : Type u → ℝ
  distortionMeasure : Type u → ℝ
  rateDistortionFunction : ℝ → ℝ
  operationalRateDistortion : Prop

structure RateDistortionEvidence (R : RateDistortionPackage) where
  rateDistortionFunctionClosed : ∀ r, r ≥ 0 → R.rateDistortionFunction r ≥ 0
  operationalRateDistortionClosed : R.operationalRateDistortion

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  (∀ r, r ≥ 0 → R.rateDistortionFunction r ≥ 0) ∧ R.operationalRateDistortion

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage) (Ev : RateDistortionEvidence R) :
    RateDistortionClosed R := by
  exact And.intro Ev.rateDistortionFunctionClosed Ev.operationalRateDistortionClosed

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse
