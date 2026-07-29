import canonicalLaneMathlib.AdmissibleClass
import admissible_lean.ShannonEntropyPackage

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure SourceCodingTheoremPackage (E : ShannonEntropyPackage) where
  codeLength : ℝ → ℝ
  averageCodeLength : ℝ
  optimalCodeLengthExists : Prop
  optimalCodeLengthBound : Prop
  optimalCodeLengthExistsTerm : optimalCodeLengthExists
  optimalCodeLengthBoundTerm : optimalCodeLengthBound

structure SourceCodingTheoremEvidence {E : ShannonEntropyPackage}
    (S : SourceCodingTheoremPackage E) where
  optimalCodeLengthExistsClosed : S.optimalCodeLengthExists
  optimalCodeLengthBoundClosed : S.optimalCodeLengthBound

def SourceCodingTheoremClosed {E : ShannonEntropyPackage}
    (S : SourceCodingTheoremPackage E) : Prop :=
  S.optimalCodeLengthExists ∧ S.optimalCodeLengthBound

theorem source_coding_theorem_closed_from_evidence {E : ShannonEntropyPackage}
    (S : SourceCodingTheoremPackage E) (Ev : SourceCodingTheoremEvidence S) :
    SourceCodingTheoremClosed S := by
  exact And.intro Ev.optimalCodeLengthExistsClosed Ev.optimalCodeLengthBoundClosed

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse