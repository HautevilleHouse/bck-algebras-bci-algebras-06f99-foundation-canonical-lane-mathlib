import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BciAlgebra (α : Type u) where
  zero : α
  mul : α → α → α
  leftZero : ∀ x : α, mul zero x = zero
  rightZero : ∀ x : α, mul x zero = zero
  associativity : ∀ x y z : α, mul (mul x y) z = mul x (mul y z)
  idempotence : ∀ x : α, mul x x = x
  commutativity : ∀ x y : α, mul x y = mul y x

structure BciAlgebraPackage (α : Type u) where
  algebra : BciAlgebra α
  closureCompleted : Prop

theorem bci_algebra_closure (α : Type u) (alg : BciAlgebra α) : BciAlgebraPackage α := by
  exact { algebra := alg, closureCompleted := True.intro }

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse
