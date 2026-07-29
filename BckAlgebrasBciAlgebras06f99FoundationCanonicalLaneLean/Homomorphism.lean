import canonicalLaneMathlib.AdmissibleClass
import BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean.BciAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BckBciHomomorphism (X Y : Type u) (A : BciAlgebra X) (B : BciAlgebra Y) where
  map : X → Y
  preservesMul : ∀ x y : X, map (A.mul x y) = B.mul (map x) (map y)
  preservesZero : map A.zero = B.zero
  preservesStar : ∀ x : X, map (A.star x) = B.star (map x)

structure HomomorphismEvidence (X Y : Type u) (A : BciAlgebra X) (B : BciAlgebra Y) (H : BckBciHomomorphism X Y A B) where
  preservesMulClosed : H.preservesMul
  preservesZeroClosed : H.preservesZero
  preservesStarClosed : H.preservesStar

def HomomorphismClosed (X Y : Type u) (A : BciAlgebra X) (B : BciAlgebra Y) (H : BckBciHomomorphism X Y A B) : Prop :=
  H.preservesMul ∧ H.preservesZero ∧ H.preservesStar

theorem homomorphism_closed_from_evidence (X Y : Type u) (A : BciAlgebra X) (B : BciAlgebra Y) (H : BckBciHomomorphism X Y A B) (E : HomomorphismEvidence X Y A B H) :
    HomomorphismClosed X Y A B H := by
  exact And.intro E.preservesMulClosed (And.intro E.preservesZeroClosed E.preservesStarClosed)

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse