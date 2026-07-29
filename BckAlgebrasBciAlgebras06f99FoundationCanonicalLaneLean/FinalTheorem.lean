import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.reflexive ∧ A.object.antisymmetric ∧ A.object.transitive

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedBckBciClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bck_bci_endgame (A : AdmissibleClass) : ConstrainedBckBciClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse