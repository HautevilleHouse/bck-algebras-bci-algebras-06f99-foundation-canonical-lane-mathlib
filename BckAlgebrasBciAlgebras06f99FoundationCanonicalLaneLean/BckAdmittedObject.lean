import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BckAdmittedObject where
  algebra : BckAlgebra
  importantProperty : Prop
  witness : importantProperty

def BckWitnessClosed (O : BckAdmittedObject) : Prop :=
  O.importantProperty

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse