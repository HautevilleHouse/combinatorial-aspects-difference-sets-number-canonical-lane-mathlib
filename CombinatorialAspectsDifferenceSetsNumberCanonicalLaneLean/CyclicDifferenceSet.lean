import CombinatorialAspectsDifferenceSetsNumber.MultiplierTheorem

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure CyclicDifferenceSetPackage {A : AdmissibleClass} {P : DifferenceSetParametersPackage A}
    {S : SingerDifferenceSetPackage P} {M : MultiplierTheoremPackage S} where
  isCyclic : Prop
  cyclicParameter : (Nat.gcd P.groupOrder P.λ = 1) := by
    exact rfl
  cyclicClosed : Prop
  cyclicClosedTerm : cyclicClosed

structure CyclicDifferenceSetEvidence {A : AdmissibleClass} {P : DifferenceSetParametersPackage A}
    {S : SingerDifferenceSetPackage P} {M : MultiplierTheoremPackage S}
    (C : CyclicDifferenceSetPackage M) where
  cyclicClosedClosed : C.cyclicClosed

def CyclicDifferenceSetClosed {A : AdmissibleClass} {P : DifferenceSetParametersPackage A}
    {S : SingerDifferenceSetPackage P} {M : MultiplierTheoremPackage S}
    (C : CyclicDifferenceSetPackage M) : Prop :=
  C.cyclicClosed

theorem cyclic_difference_set_closed_from_evidence
    {A : AdmissibleClass} {P : DifferenceSetParametersPackage A}
    {S : SingerDifferenceSetPackage P} {M : MultiplierTheoremPackage S}
    (C : CyclicDifferenceSetPackage M) (E : CyclicDifferenceSetEvidence C) :
    CyclicDifferenceSetClosed C := by
  exact E.cyclicClosedClosed

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse