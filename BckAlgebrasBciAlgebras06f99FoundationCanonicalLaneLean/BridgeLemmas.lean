import BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BciAlgebraClosed A.object.algebra A.object.bciAlg

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bciClosed

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse