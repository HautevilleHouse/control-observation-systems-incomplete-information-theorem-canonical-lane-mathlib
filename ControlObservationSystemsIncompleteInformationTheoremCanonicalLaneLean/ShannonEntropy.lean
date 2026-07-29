import canonicalLaneMathlib.AdmissibleClass
import Mathlib.MeasureTheory.ProbabilityTheory.Information

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure ShannonEntropyPackage where
  source : Type u
  distribution : source → ℝ
  entropy : ℝ
  entropyNonnegative : entropy ≥ 0
  entropyNonnegativeTerm : entropyNonnegative

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyNonnegativeClosed : E.entropyNonnegative

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyNonnegative

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage)
    (Ev : ShannonEntropyEvidence E) : ShannonEntropyClosed E := by
  exact Ev.entropyNonnegativeClosed

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse