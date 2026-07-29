import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure BCKAlgebraPackage where
  carrier : Type u
  zero : carrier
  mul : carrier → carrier → carrier
  commutativity : Prop
  leftIdentity : Prop
  rightIdentity : Prop
  orderCompatibility : Prop

structure BCKAlgebraEvidence (P : BCKAlgebraPackage) where
  commutativityClosed : P.commutativity
  leftIdentityClosed : P.leftIdentity
  rightIdentityClosed : P.rightIdentity
  orderCompatibilityClosed : P.orderCompatibility

def BCKAlgebraClosed (P : BCKAlgebraPackage) : Prop :=
  P.commutativity ∧ P.leftIdentity ∧ P.rightIdentity ∧ P.orderCompatibility

theorem bck_algebra_closed_from_evidence (P : BCKAlgebraPackage) (E : BCKAlgebraEvidence P) :
    BCKAlgebraClosed P := by
  exact And.intro E.commutativityClosed (And.intro E.leftIdentityClosed (And.intro E.rightIdentityClosed E.orderCompatibilityClosed))

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse