import GroupInvariantDetection

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

def ConstrainedDifferenceSetClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_set_endgame (A : AdmissibleClass) :
    ConstrainedDifferenceSetClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse