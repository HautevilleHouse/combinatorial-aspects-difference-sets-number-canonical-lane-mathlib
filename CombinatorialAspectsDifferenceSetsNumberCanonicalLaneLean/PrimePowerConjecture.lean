import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure PrimePowerConjectureStructure where
  group : Type u
  [addGroup : AddGroup group]
  differenceSet : DifferenceSet group
  groupOrderPrimePower : ∃ (p : ℕ) (k : ℕ), Nat.Prime p ∧ Fintype.card group = p^k

structure PrimePowerConjectureEvidence (P : PrimePowerConjectureStructure) where
  differenceSetClosed : DifferenceSetClosed P.group P.differenceSet
  groupOrderPrimePowerClosed : P.groupOrderPrimePower

def PrimePowerConjectureClosed (P : PrimePowerConjectureStructure) : Prop :=
  DifferenceSetClosed P.group P.differenceSet ∧ P.groupOrderPrimePower

theorem prime_power_conjecture_closed_from_evidence (P : PrimePowerConjectureStructure) (E : PrimePowerConjectureEvidence P) : PrimePowerConjectureClosed P := by
  exact And.intro E.differenceSetClosed E.groupOrderPrimePowerClosed

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse