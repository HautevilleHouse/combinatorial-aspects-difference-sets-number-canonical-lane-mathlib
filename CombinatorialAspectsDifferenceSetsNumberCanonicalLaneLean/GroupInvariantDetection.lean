import MultiplierTheorem

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure GroupInvariantDetectionPackage (D : DifferenceSetParameters) (R : DifferenceSet D) (M : MultiplierTheorem D R) where
  invariantUnderGroupActions : Prop
  invariantUnderGroupActionsTerm : invariantUnderGroupActions
  determinesDifferenceSetStructure : Prop
  determinesDifferenceSetStructureTerm : determinesDifferenceSetStructure

structure GroupInvariantDetectionEvidence (D : DifferenceSetParameters) (R : DifferenceSet D) (M : MultiplierTheorem D R) (G : GroupInvariantDetectionPackage D R M) where
  invariantUnderGroupActionsClosed : G.invariantUnderGroupActions
  determinesDifferenceSetStructureClosed : G.determinesDifferenceSetStructure

def GroupInvariantDetectionClosed (D : DifferenceSetParameters) (R : DifferenceSet D) (M : MultiplierTheorem D R) (G : GroupInvariantDetectionPackage D R M) : Prop :=
  G.invariantUnderGroupActions ∧ G.determinesDifferenceSetStructure

theorem group_invariant_detection_closed_from_evidence
    (D : DifferenceSetParameters) (R : DifferenceSet D) (M : MultiplierTheorem D R)
    (G : GroupInvariantDetectionPackage D R M) (E : GroupInvariantDetectionEvidence D R M G) :
    GroupInvariantDetectionClosed D R M G := by
  exact And.intro E.invariantUnderGroupActionsClosed E.determinesDifferenceSetStructureClosed

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse