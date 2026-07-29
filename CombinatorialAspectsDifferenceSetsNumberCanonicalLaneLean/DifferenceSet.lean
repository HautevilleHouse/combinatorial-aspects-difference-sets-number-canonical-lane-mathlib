import DifferenceSetStructure

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure DifferenceSet (D : DifferenceSetParameters) where
  group : Type u
  groupMultiplication : group → group → group
  groupIdentity : group
  groupInverse : group → group
  groupAssoc : ∀ a b c : group, groupMultiplication (groupMultiplication a b) c = groupMultiplication a (groupMultiplication b c)
  groupIdentityLeft : ∀ a : group, groupMultiplication groupIdentity a = a
  groupIdentityRight : ∀ a : group, groupMultiplication a groupIdentity = a
  groupInverseLeft : ∀ a : group, groupMultiplication (groupInverse a) a = groupIdentity
  groupInverseRight : ∀ a : group, groupMultiplication a (groupInverse a) = groupIdentity
  subset : Set group
  subsetSize : D.subsetSize = Finset.card (Finset.filter (λ x => x ∈ subset) Finset.univ)
  groupOrder : D.groupOrder = Fintype.card group
  differenceProperty : Prop
  differencePropertyTerm : differenceProperty

structure DifferenceSetEvidence (P : DifferenceSetParameters) (R : DifferenceSet P) where
  differencePropertyClosed : R.differenceProperty

def DifferenceSetClosed (P : DifferenceSetParameters) (R : DifferenceSet P) : Prop :=
  R.differenceProperty

theorem difference_set_closed_from_evidence
    (P : DifferenceSetParameters) (R : DifferenceSet P) (E : DifferenceSetEvidence P R) :
    DifferenceSetClosed P R := by
  exact E.differencePropertyClosed

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse