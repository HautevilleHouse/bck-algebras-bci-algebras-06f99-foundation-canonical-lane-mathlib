import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean

structure RepresentationEmbedding (A : BCIAlgebraPackage) (B : Type u) where
  f : A.carrier → B
  injective : Function.Injective f
  preservesMul : ∀ x y : A.carrier, f (A.mul x y) = (f x) * (f y)
  preservesZero : f A.zero = (0 : B)

theorem exists_representation (A : BCIAlgebraPackage) : Nonempty (RepresentationEmbedding A (Set (A.carrier → Prop))) :=
  Nonempty.intro ({
    f := λ a => { p : A.carrier → Prop | p a }
    injective := λ x y h => by
      have h' : {p | p x} = {p | p y} := h
      intro hx
      have : (λ (z : A.carrier) => z = x) ∈ {p | p y} := by
        have : (λ (z : A.carrier) => z = x) ∈ {p | p x} := by
          simpa
        rw [h']
        exact this
      simpa using this
    preservesMul := λ x y => rfl
    preservesZero := rfl
  } : RepresentationEmbedding A (Set (A.carrier → Prop)))

end BckAlgebrasBciAlgebras06f99FoundationCanonicalLaneLean
end HautevilleHouse