import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean

structure ObservationSystem where
  observedSpace : Type u
  observationFunction : observedSpace → ℝ
  informationState : List ℝ

structure ControlObservationAdmittedObject where
  system : ObservationSystem
  incompleteInformation : Prop
  controlInput : ℝ → ℝ
  observationMap : ℝ → ℝ
  conclusion : incompleteInformation

structure AdmissibleClass where
  object : ControlObservationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ObservationSystemClosed A.object.system ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ObservationSystemClosed (O : ObservationSystem) : Prop :=
  O.incompleteInformation

end ControlObservationSystemsIncompleteInformationTheoremCanonicalLaneLean
end HautevilleHouse