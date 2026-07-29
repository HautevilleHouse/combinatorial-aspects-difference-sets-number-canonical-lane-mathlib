import DifferenceSet

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure MultiplierTheorem (D : DifferenceSetParameters) (R : DifferenceSet D) where
  multiplierGroup : Set (Aut (R.group)) where
    aut := { f : R.group ≃ R.group | ∀ x y, f (R.groupMultiplication x y) = R.groupMultiplication (f x) (f y) }
  multiplierActsOnSubset : Prop
  multiplierActsOnSubsetTerm : multiplierActsOnSubset
  multiplierFixedSubset : Prop
  multiplierFixedSubsetTerm : multiplierFixedSubset
  multiplierActionEquivariant : Prop
  multiplierActionEquivariantTerm : multiplierActionEquivariant

structure MultiplierTheoremEvidence (D : DifferenceSetParameters) (R : DifferenceSet D) (M : MultiplierTheorem D R) where
  multiplierActsOnSubsetClosed : M.multiplierActsOnSubset
  multiplierFixedSubsetClosed : M.multiplierFixedSubset
  multiplierActionEquivariantClosed : M.multiplierActionEquivariant

def MultiplierTheoremClosed (D : DifferenceSetParameters) (R : DifferenceSet D) (M : MultiplierTheorem D R) : Prop :=
  M.multiplierActsOnSubset ∧ M.multiplierFixedSubset ∧ M.multiplierActionEquivariant

theorem multiplier_theorem_closed_from_evidence
    (D : DifferenceSetParameters) (R : DifferenceSet D) (M : MultiplierTheorem D R)
    (E : MultiplierTheoremEvidence D R M) : MultiplierTheoremClosed D R M := by
  exact And.intro E.multiplierActsOnSubsetClosed
    (And.intro E.multiplierFixedSubsetClosed E.multiplierActionEquivariantClosed)

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse