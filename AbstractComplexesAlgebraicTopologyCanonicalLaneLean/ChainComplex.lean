import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

structure ChainComplexPackage where
  chainGroups : ℕ → Type u
  boundaryMaps : ∀ n : ℕ, chainGroups (n+1) → chainGroups n
  boundarySquared : Prop
  homologyGroupsDefined : Prop
  exactnessProperties : Prop

structure ChainComplexEvidence (C : ChainComplexPackage) where
  boundarySquaredClosed : C.boundarySquared
  homologyGroupsDefinedClosed : C.homologyGroupsDefined
  exactnessPropertiesClosed : C.exactnessProperties

def ChainComplexClosed (C : ChainComplexPackage) : Prop :=
  C.boundarySquared ∧ C.homologyGroupsDefined ∧ C.exactnessProperties

theorem chain_complex_closed_from_evidence
    (C : ChainComplexPackage) (E : ChainComplexEvidence C) :
    ChainComplexClosed C := by
  exact And.intro E.boundarySquaredClosed
    (And.intro E.homologyGroupsDefinedClosed E.exactnessPropertiesClosed)

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse