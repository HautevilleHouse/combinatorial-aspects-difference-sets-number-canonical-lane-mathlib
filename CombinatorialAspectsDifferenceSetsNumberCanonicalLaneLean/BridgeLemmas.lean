import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferenceSetObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsDifferenceSetsNumberCanonicalLaneLean
end HautevilleHouse
