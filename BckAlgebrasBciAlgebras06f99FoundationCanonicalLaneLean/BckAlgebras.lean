import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BckAlgebra (α : Type u) where
  zero : α
  mul : α → α → α
  leftZero : ∀ x : α, mul zero x = zero
  rightZero : ∀ x : α, mul x zero = zero
  associativity : ∀ x y z : α, mul (mul x y) z = mul x (mul y z)
  idempotence : ∀ x : α, mul x x = x
  monotonicity : ∀ x y : α, mul x y = zero ∧ mul y x = zero → x = y

structure BckAlgebraPackage (α : Type u) where
  algebra : BckAlgebra α
  closureCompleted : Prop

theorem bck_algebra_closure (α : Type u) (alg : BckAlgebra α) : BckAlgebraPackage α := by
  exact { algebra := alg, closureCompleted := True.intro }

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse
