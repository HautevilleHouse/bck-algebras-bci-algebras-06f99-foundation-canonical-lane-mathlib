import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean.BckAlgebra
import HautevilleHouse.BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean.BciAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

def bridgeCondition (bck : BckAlgebraPackage) (bci : BciAlgebraPackage) : Prop :=
  (∀ x y : bck.carrier, bck.signature.star x y = bck.signature.zero ↔ bci.signature.leq x y) ∧
  (∀ x y : bci.carrier, bci.signature.dot x y = bci.signature.zero ↔ bck.signature.leq x y)

structure BckBciBridge where
  bck : BckAlgebraPackage
  bci : BciAlgebraPackage
  condition : bridgeCondition bck bci

end HautevilleHouse.BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse