import canonicalLaneMathlib.DifferenceSetPackage

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure HadamardDifferenceSet (v : ℕ) where
  order : ℕ := v
  k : ℕ := (v-1)/2
  λ : ℕ := (v-3)/4
  condition : k*(k-1)=λ*(order-1) := by
    omega

theorem hadamard_parameters_satisfy (v : ℕ) (hv : v % 4 = 3) :
  ((v-1)/2)*(((v-1)/2)-1) = ((v-3)/4)*(v-1) := by
  omega

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse