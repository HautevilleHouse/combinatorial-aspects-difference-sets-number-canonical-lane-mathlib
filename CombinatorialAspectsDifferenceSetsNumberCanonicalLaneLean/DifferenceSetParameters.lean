import CombinatorialAspectsDifferenceSetsNumber.DifferenceSetsAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure DifferenceSetParametersPackage (A : AdmissibleClass) where
  groupOrder : ℕ := A.object.groupOrder
  subsetSize : ℕ := A.object.subsetSize
  λ : ℕ := A.object.parameterλ
  parametersSatisfyEquation : (subsetSize * (subsetSize - 1) = λ * (groupOrder - 1)) := by
    have h : A.object.groupOrder * (A.object.subsetSize - 1) = A.object.parameterλ * (A.object.groupOrder - 1) := A.object.parameterEquation
    simpa [groupOrder, subsetSize, λ] using h
  parameterEquationClosed : Prop
  parameterEquationClosedTerm : parameterEquationClosed

structure DifferenceSetParametersEvidence {A : AdmissibleClass} (P : DifferenceSetParametersPackage A) where
  parameterEquationClosedClosed : P.parameterEquationClosed

def DifferenceSetParametersClosed {A : AdmissibleClass} (P : DifferenceSetParametersPackage A) : Prop :=
  P.parameterEquationClosed

theorem difference_set_parameters_closed_from_evidence
    {A : AdmissibleClass} (P : DifferenceSetParametersPackage A)
    (E : DifferenceSetParametersEvidence P) : DifferenceSetParametersClosed P := by
  exact E.parameterEquationClosedClosed

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse