import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BCIAlgebraPackage where
  carrier : Type u
  zero : carrier
  mul : carrier → carrier → carrier
  associativity : Prop
  leftIdentity : Prop
  rightIdentity : Prop
  orderCompatibility : Prop

structure BCIAlgebraEvidence (P : BCIAlgebraPackage) where
  associativityClosed : P.associativity
  leftIdentityClosed : P.leftIdentity
  rightIdentityClosed : P.rightIdentity
  orderCompatibilityClosed : P.orderCompatibility

def BCIAlgebraClosed (P : BCIAlgebraPackage) : Prop :=
  P.associativity ∧ P.leftIdentity ∧ P.rightIdentity ∧ P.orderCompatibility

theorem bci_algebra_closed_from_evidence (P : BCIAlgebraPackage) (E : BCIAlgebraEvidence P) :
    BCIAlgebraClosed P := by
  exact And.intro E.associativityClosed (And.intro E.leftIdentityClosed (And.intro E.rightIdentityClosed E.orderCompatibilityClosed))

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse