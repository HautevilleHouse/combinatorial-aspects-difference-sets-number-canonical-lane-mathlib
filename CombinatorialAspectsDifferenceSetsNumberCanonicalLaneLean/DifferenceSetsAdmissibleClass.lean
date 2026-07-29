import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure DifferenceSetObject where
  group : Type
  groupOrder : ℕ
  subsetSize : ℕ
  parameterλ : ℕ
  differenceSetProperty : Prop
  conclusion : differenceSetProperty

structure AdmissibleClass where
  object : DifferenceSetObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferenceSetWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse