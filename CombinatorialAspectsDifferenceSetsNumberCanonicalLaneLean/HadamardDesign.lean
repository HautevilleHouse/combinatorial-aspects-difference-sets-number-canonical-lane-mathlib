import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure HadamardDesignParameters where
  v : ℕ
  k : ℕ
  lambda : ℕ
  relation : v = 4 * lambda + 3

structure HadamardDifferenceSet (G : Type u) [hG : AddGroup G] (params : HadamardDesignParameters) where
  diffSet : DifferenceSet G
  sizeMatches : diffSet.size = params.k
  lambdaMatches : diffSet.lambda = params.lambda
  groupOrderMatches : Fintype.card G = params.v

structure HadamardDesignEvidence (G : Type u) [AddGroup G] (params : HadamardDesignParameters) (D : HadamardDifferenceSet G params) where
  sizeMatchesClosed : D.sizeMatches
  lambdaMatchesClosed : D.lambdaMatches
  groupOrderMatchesClosed : D.groupOrderMatches
  differenceSetClosed : DifferenceSetClosed G D.diffSet

def HadamardDesignClosed (G : Type u) [AddGroup G] (params : HadamardDesignParameters) (D : HadamardDifferenceSet G params) : Prop :=
  DifferenceSetClosed G D.diffSet ∧ D.sizeMatches ∧ D.lambdaMatches ∧ D.groupOrderMatches

theorem hadamard_design_closed_from_evidence (G : Type u) [AddGroup G] (params : HadamardDesignParameters) (D : HadamardDifferenceSet G params) (E : HadamardDesignEvidence G params D) : HadamardDesignClosed G params D := by
  exact And.intro E.differenceSetClosed (And.intro E.sizeMatchesClosed (And.intro E.lambdaMatchesClosed E.groupOrderMatchesClosed))

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse