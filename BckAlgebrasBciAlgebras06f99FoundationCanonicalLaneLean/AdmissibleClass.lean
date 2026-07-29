import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BckAdmittedObject where
  carrier : Type u
  zero : carrier
  op : carrier → carrier → carrier
  reflexive : ∀ x : carrier, op x x = zero
  antisymmetric : ∀ x y : carrier, op x y = zero ∧ op y x = zero → x = y
  transitive : ∀ x y z : carrier, op x y = zero → op y z = zero → op x z = zero
  conclusion : reflexive ∧ antisymmetric ∧ transitive

structure AdmissibleClass where
  object : BckAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.reflexive ∧ A.object.antisymmetric ∧ A.object.transitive) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse