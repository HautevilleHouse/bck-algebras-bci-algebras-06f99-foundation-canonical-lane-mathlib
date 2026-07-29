import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BciAlgebraPackage where
  carrier : Type u
  zero : carrier
  op : carrier → carrier → carrier
  reflexive : ∀ x : carrier, op x x = zero
  antisymmetric : ∀ x y : carrier, op x y = zero ∧ op y x = zero → x = y
  transitive : ∀ x y z : carrier, op x y = zero → op y z = zero → op x z = zero
  identityRight : ∀ x : carrier, op x zero = x
  bciAxiom : ∀ x y z : carrier, op (op x y) (op x z) = op (op y z) (op (op x y) (op x z))

structure BciAlgebraEvidence (B : BciAlgebraPackage) where
  reflexiveClosed : B.reflexive
  antisymmetricClosed : B.antisymmetric
  transitiveClosed : B.transitive
  identityRightClosed : B.identityRight
  bciAxiomClosed : B.bciAxiom

def BciAlgebraClosed (B : BciAlgebraPackage) : Prop :=
  B.reflexive ∧ B.antisymmetric ∧ B.transitive ∧ B.identityRight ∧ B.bciAxiom

theorem bci_algebra_closed_from_evidence (B : BciAlgebraPackage) (E : BciAlgebraEvidence B) :
    BciAlgebraClosed B := by
  exact And.intro E.reflexiveClosed
    (And.intro E.antisymmetricClosed
      (And.intro E.transitiveClosed
        (And.intro E.identityRightClosed E.bciAxiomClosed)))

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse