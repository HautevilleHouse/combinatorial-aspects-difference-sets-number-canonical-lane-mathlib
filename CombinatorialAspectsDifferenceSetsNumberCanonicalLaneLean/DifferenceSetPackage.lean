import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean.DifferenceSetObject

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure DifferenceSetPackage where
  object : DifferenceSetObject
  existenceProof : Prop
  parametersMatch : object.parameters = (v, k, λ) : Prop
  combinatorialDesign : Prop

structure DifferenceSetEvidence (P : DifferenceSetPackage) where
  existenceProofClosed : P.existenceProof
  parametersMatchClosed : P.parametersMatch
  combinatorialDesignClosed : P.combinatorialDesign

def DifferenceSetClosed (P : DifferenceSetPackage) : Prop :=
  P.existenceProof ∧ P.parametersMatch ∧ P.combinatorialDesign

theorem difference_set_closed_from_evidence (P : DifferenceSetPackage) (E : DifferenceSetEvidence P) :
    DifferenceSetClosed P := by
  exact And.intro E.existenceProofClosed (And.intro E.parametersMatchClosed E.combinatorialDesignClosed)

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse
