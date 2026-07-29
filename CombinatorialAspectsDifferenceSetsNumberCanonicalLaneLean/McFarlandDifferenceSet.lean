import canonicalLaneMathlib.DifferenceSetPackage

namespace HautevilleHouse
namespace CombinatorialAspectsDifferenceSetsNumber

structure McFarlandParameters (q : ℕ) (d : ℕ) where
  order : ℕ := q^(d+1) * ((q^(d+1)-1)/(q-1))
  k : ℕ := q^d * ((q^(d+1)-1)/(q-1))
  λ : ℕ := q^d * ((q^d-1)/(q-1))
  qPrimePower : ∃ p : ℕ, Nat.Prime p ∧ ∃ e : ℕ, q = p^e

def mcfarland_parameters_valid (q d : ℕ) : Prop :=
  let order := q^(d+1) * ((q^(d+1)-1)/(q-1))
  let k := q^d * ((q^(d+1)-1)/(q-1))
  let λ := q^d * ((q^d-1)/(q-1))
  k*(k-1)=λ*(order-1)

theorem mcfarland_parameters_hold (q d : ℕ) (hq : q > 1) : mcfarland_parameters_valid q d := by
  unfold mcfarland_parameters_valid
  ring

end CombinatorialAspectsDifferenceSetsNumber
end HautevilleHouse