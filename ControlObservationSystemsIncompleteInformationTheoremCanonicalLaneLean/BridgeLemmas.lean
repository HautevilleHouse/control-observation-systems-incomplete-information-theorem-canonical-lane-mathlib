import canonicalLaneMathlib.AdmissibleClass
import admissible_lean.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ObservationSystemClosed A.object.system

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse