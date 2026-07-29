import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BckAlgebraPackage where
  carrier : Type u
  zero : carrier
  op : carrier → carrier → carrier
  reflexive : ∀ x : carrier, op x x = zero
  antisymmetric : ∀ x y : carrier, op x y = zero ∧ op y x = zero → x = y
  transitive : ∀ x y z : carrier, op x y = zero → op y z = zero → op x z = zero
  identityLeft : ∀ x : carrier, op zero x = zero
  identityRight : ∀ x : carrier, op x zero = x

structure BckAlgebraEvidence (B : BckAlgebraPackage) where
  reflexiveClosed : B.reflexive
  antisymmetricClosed : B.antisymmetric
  transitiveClosed : B.transitive
  identityLeftClosed : B.identityLeft
  identityRightClosed : B.identityRight

def BckAlgebraClosed (B : BckAlgebraPackage) : Prop :=
  B.reflexive ∧ B.antisymmetric ∧ B.transitive ∧ B.identityLeft ∧ B.identityRight

theorem bck_algebra_closed_from_evidence (B : BckAlgebraPackage) (E : BckAlgebraEvidence B) :
    BckAlgebraClosed B := by
  exact And.intro E.reflexiveClosed
    (And.intro E.antisymmetricClosed
      (And.intro E.transitiveClosed
        (And.intro E.identityLeftClosed E.identityRightClosed)))

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse