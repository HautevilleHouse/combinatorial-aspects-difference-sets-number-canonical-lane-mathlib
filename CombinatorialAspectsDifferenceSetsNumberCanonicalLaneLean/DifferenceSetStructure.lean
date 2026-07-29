import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure DifferenceSetParameters where
  groupOrder : Nat
  subsetSize : Nat
  lambda : Nat
  parametersConsistent : Prop
  parametersConsistentTerm : parametersConsistent

structure DifferenceSetParametersEvidence (D : DifferenceSetParameters) where
  parametersConsistentClosed : D.parametersConsistent

def DifferenceSetParametersClosed (D : DifferenceSetParameters) : Prop :=
  D.parametersConsistent

theorem difference_set_parameters_closed_from_evidence
    (D : DifferenceSetParameters) (E : DifferenceSetParametersEvidence D) :
    DifferenceSetParametersClosed D := by
  exact E.parametersConsistentClosed

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse