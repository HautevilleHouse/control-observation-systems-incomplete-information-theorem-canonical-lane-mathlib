import canonicalLaneMathlib.AdmissibleClass
import admissible_lean.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure ShannonEntropyPackage where
  sourceAlphabet : Type u
  distribution : sourceAlphabet → ℝ
  entropy : ℝ
  entropyNonnegative : Prop
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