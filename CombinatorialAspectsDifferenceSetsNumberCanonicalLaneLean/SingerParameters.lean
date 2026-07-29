import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean.DifferenceSetDefinition

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

structure SingerParameters where
  q : ℕ
  d : ℕ
  size : ℕ := (q^(d+1) - 1) / (q - 1)
  lambda : ℕ := (q^d - 1) / (q - 1)

structure SingerDifferenceSet (G : Type u) [hG : AddGroup G] (params : SingerParameters) where
  diffSet : DifferenceSet G
  sizeMatches : diffSet.size = params.size
  lambdaMatches : diffSet.lambda = params.lambda

structure SingerEvidence (G : Type u) [AddGroup G] (params : SingerParameters) (D : SingerDifferenceSet G params) where
  sizeMatchesClosed : D.sizeMatches
  lambdaMatchesClosed : D.lambdaMatches
  differenceSetClosed : DifferenceSetClosed G D.diffSet

def SingerClosed (G : Type u) [AddGroup G] (params : SingerParameters) (D : SingerDifferenceSet G params) : Prop :=
  DifferenceSetClosed G D.diffSet ∧ D.sizeMatches ∧ D.lambdaMatches

theorem singer_closed_from_evidence (G : Type u) [AddGroup G] (params : SingerParameters) (D : SingerDifferenceSet G params) (E : SingerEvidence G params D) : SingerClosed G params D := by
  exact And.intro E.differenceSetClosed (And.intro E.sizeMatchesClosed E.lambdaMatchesClosed)

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse