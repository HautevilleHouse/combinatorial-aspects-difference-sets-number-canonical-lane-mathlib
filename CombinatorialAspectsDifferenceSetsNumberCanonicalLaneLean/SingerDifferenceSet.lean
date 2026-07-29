import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean.DifferenceSetPackage

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure SingerDifferenceSet where
  q : ℕ
  n : ℕ
  parameters : ℕ × ℕ × ℕ := ((q^(n+1)-1)/(q-1), (q^n-1)/(q-1), (q^(n-1)-1)/(q-1))
  singerCycle : Prop
  differenceSetProperty : Prop
  singerCycleClosed : singerCycle
  differenceSetPropertyClosed : differenceSetProperty

def SingerDifferenceSetClosed (S : SingerDifferenceSet) : Prop :=
  S.singerCycle ∧ S.differenceSetProperty

theorem singer_difference_set_closed (S : SingerDifferenceSet) : SingerDifferenceSetClosed S :=
  And.intro S.singerCycleClosed S.differenceSetPropertyClosed

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse
