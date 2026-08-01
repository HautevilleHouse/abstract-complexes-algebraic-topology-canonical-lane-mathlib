import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComplexesAlgebraicTopologyCanonicalLaneLean

structure HomologyPackage where
  chainComplex : ChainComplexPackage
  homologyGroups : ℕ → Type u
  functoriality : Prop
  longExactSequence : Prop
  eilenbergSteenrodAxioms : Prop

structure HomologyEvidence (H : HomologyPackage) where
  functorialityClosed : H.functoriality
  longExactSequenceClosed : H.longExactSequence
  eilenbergSteenrodAxiomsClosed : H.eilenbergSteenrodAxioms

def HomologyClosed (H : HomologyPackage) : Prop :=
  H.functoriality ∧ H.longExactSequence ∧ H.eilenbergSteenrodAxioms

theorem homology_closed_from_evidence
    (H : HomologyPackage) (E : HomologyEvidence H) : HomologyClosed H := by
  exact And.intro E.functorialityClosed
    (And.intro E.longExactSequenceClosed E.eilenbergSteenrodAxiomsClosed)

end AbstractComplexesAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse