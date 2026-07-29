import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure CyclotomicDifferenceSetPackage where
  q : ℕ
  primePower : Fact (Nat.Prime q)
  order : ℕ := q
  multiplier : ℕ
  SingerCycleProperty : Prop

structure CyclotomicDifferenceSetEvidence (C : CyclotomicDifferenceSetPackage) where
  SingerCyclePropertyClosed : C.SingerCycleProperty

def CyclotomicDifferenceSetClosed (C : CyclotomicDifferenceSetPackage) : Prop :=
  C.SingerCycleProperty

theorem cyclotomic_difference_set_closed_from_evidence (C : CyclotomicDifferenceSetPackage)
    (E : CyclotomicDifferenceSetEvidence C) : CyclotomicDifferenceSetClosed C := by
  exact E.SingerCyclePropertyClosed

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse
