import canonicalLaneMathlib.AdmissibleClass
import AbstractComplexesAlgebraicTopologyCanonicalLaneLean.ChainComplex

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

structure HomologyPackage (C : ChainComplex ℤ) where
  homologyGroups : ℕ → Type
  wellDefined : Prop
  functorial : Prop
  exactSequences : Prop

structure HomologyEvidence (C : ChainComplex ℤ) (H : HomologyPackage C) where
  wellDefinedClosed : H.wellDefined
  functorialClosed : H.functorial
  exactSequencesClosed : H.exactSequences

def HomologyClosed (C : ChainComplex ℤ) (H : HomologyPackage C) : Prop :=
  H.wellDefined ∧ H.functorial ∧ H.exactSequences

theorem homology_closed_from_evidence (C : ChainComplex ℤ) (H : HomologyPackage C) (E : HomologyEvidence C H) :
    HomologyClosed C H := by
  exact And.intro E.wellDefinedClosed (And.intro E.functorialClosed E.exactSequencesClosed)

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse