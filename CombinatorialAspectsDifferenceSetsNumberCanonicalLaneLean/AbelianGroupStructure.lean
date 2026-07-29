import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure AbelianGroupStructure where
  carrier : Type u
  add : carrier → carrier → carrier
  zero : carrier
  neg : carrier → carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addLeftNeg : ∀ a : carrier, add (neg a) a = zero
  addComm : ∀ a b : carrier, add a b = add b a

def abelianGroupClosed (A : AbelianGroupStructure) : Prop :=
  A.addAssoc ∧ A.zeroAdd ∧ A.addZero ∧ A.addLeftNeg ∧ A.addComm

theorem abelian_group_closed_from_evidence (A : AbelianGroupStructure) : abelianGroupClosed A := by
  exact And.intro A.addAssoc (And.intro A.zeroAdd (And.intro A.addZero (And.intro A.addLeftNeg A.addComm)))

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse