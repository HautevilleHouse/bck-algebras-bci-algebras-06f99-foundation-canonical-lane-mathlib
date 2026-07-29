import BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse