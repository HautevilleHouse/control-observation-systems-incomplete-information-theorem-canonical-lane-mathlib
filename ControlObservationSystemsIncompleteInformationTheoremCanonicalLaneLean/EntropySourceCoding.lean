import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure EntropySourceCodingPackage where
  sourceModel : Type u
  entropyFunction : sourceModel → ℝ
  entropyRate : ℝ
  sourceCodingTheorem : Prop
  shannonEntropy : Prop

structure EntropySourceCodingEvidence (E : EntropySourceCodingPackage) where
  entropyFunctionClosed : E.entropyFunction = E.entropyFunction
  entropyRateClosed : E.entropyRate > 0
  sourceCodingTheoremClosed : E.sourceCodingTheorem
  shannonEntropyClosed : E.shannonEntropy

def EntropySourceCodingClosed (E : EntropySourceCodingPackage) : Prop :=
  E.entropyRate > 0 ∧ E.sourceCodingTheorem ∧ E.shannonEntropy

theorem entropy_source_coding_closed_from_evidence (E : EntropySourceCodingPackage) (Ev : EntropySourceCodingEvidence E) :
    EntropySourceCodingClosed E := by
  exact And.intro Ev.entropyRateClosed (And.intro Ev.sourceCodingTheoremClosed Ev.shannonEntropyClosed)

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse
