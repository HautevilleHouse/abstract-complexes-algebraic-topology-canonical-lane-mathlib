import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

structure AbelianizationUniversalProperty (A : Type u) [AddCommGroup A] where
  abelianization : AddCommGroup A
  map : A → abelianization
  universal : ∀ (B : AddCommGroup A) (f : A → B) [IsAbelian B], ∃! (h : abelianization → B), h ∘ map = f

def AbelianizationClosed {A : Type u} [AddCommGroup A] (U : AbelianizationUniversalProperty A) : Prop :=
  U.universal

theorem abelianization_closed_from_universal {A : Type u} [AddCommGroup A]
  (U : AbelianizationUniversalProperty A) (h : U.universal) : AbelianizationClosed U :=
  h

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse