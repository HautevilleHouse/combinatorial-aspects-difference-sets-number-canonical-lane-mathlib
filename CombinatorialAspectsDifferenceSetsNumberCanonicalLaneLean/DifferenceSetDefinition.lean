import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure DifferenceSet (G : Type u) [hG : AddGroup G] where
  subset : Set G
  size : ℕ
  lambda : ℕ
  coveringCondition : ∀ g ∈ G, g ≠ 0 → { (a,b) ∈ subset × subset | a - b = g }.card = lambda
  sizeCondition : subset.card = size

structure DifferenceSetEvidence (G : Type u) [AddGroup G] (D : DifferenceSet G) where
  coveringConditionClosed : D.coveringCondition
  sizeConditionClosed : D.sizeCondition

def DifferenceSetClosed (G : Type u) [AddGroup G] (D : DifferenceSet G) : Prop :=
  D.coveringCondition ∧ D.sizeCondition

theorem difference_set_closed_from_evidence (G : Type u) [AddGroup G] (D : DifferenceSet G) (E : DifferenceSetEvidence G D) : DifferenceSetClosed G D := by
  exact And.intro E.coveringConditionClosed E.sizeConditionClosed

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse